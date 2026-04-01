import Foundation

/// Populates the database with real PF1 OGL content from the d20 SRD.
actor SeedDataBuilder {

    private let db: DatabaseService

    init(db: DatabaseService) {
        self.db = db
    }

    func seed() async throws {
        try await db.beginTransaction()
        do {
            try await seedSpells()
            try await seedClasses()
            try await seedFeats()
            try await seedMonsters()
            try await seedItems()
            try await seedRaces()
            try await seedRules()
            try await db.commitTransaction()
        } catch {
            await db.rollbackTransaction()
            throw error
        }
    }

    // MARK: - Spells

    private func seedSpells() async throws {
        let spells: [SpellEntry] = [
            .make("Magic Missile", school: "Evocation", levels: "sorcerer/wizard 1",
                  castingTime: "1 standard action", components: "V, S",
                  range: "Medium (100 ft. + 10 ft./level)", duration: "Instantaneous",
                  savingThrow: "None", sr: false,
                  summary: "A missile of magical energy darts forth from your fingertip.",
                  desc: "A missile of magical energy darts forth from your fingertip and unerringly strikes its target, dealing 1d4+1 points of force damage. The missile strikes unerringly, even if the target is in melee combat, so you do not need to roll a ranged attack. You cannot target a force effect such as mage armor or wall of force. For every two caster levels beyond 1st, you gain an additional missile—two at 3rd level, three at 5th, four at 7th, and the maximum of five missiles at 9th level or higher. If you shoot multiple missiles, you can have them strike a single creature or several creatures. A single missile can strike only one creature. You must designate targets before you check for spell resistance or roll damage."),

            .make("Fireball", school: "Evocation", levels: "sorcerer/wizard 3",
                  castingTime: "1 standard action", components: "V, S, M (a ball of bat guano and sulfur)",
                  range: "Long (400 ft. + 40 ft./level)", duration: "Instantaneous",
                  savingThrow: "Reflex half", sr: true,
                  summary: "A burst of flame detonates with a low roar dealing 1d6/level fire damage.",
                  desc: "A fireball spell generates a searing explosion of flame that detonates with a low roar and deals 1d6 points of fire damage per caster level (maximum 10d6) to every creature within the area. Unattended objects also take this damage. The explosion creates almost no pressure. You point your finger and determine the range (distance and height) at which the fireball is to burst. A glowing, pea-sized bead streaks from the pointing digit and, unless it impacts upon a material body or solid barrier prior to attaining the prescribed range, blossoms into the fireball at that point. An early impact results in an early detonation."),

            .make("Cure Light Wounds", school: "Conjuration (Healing)", levels: "bard 1, cleric/oracle 1, druid 1, paladin 1, ranger 2",
                  castingTime: "1 standard action", components: "V, S",
                  range: "Touch", duration: "Instantaneous",
                  savingThrow: "Will half (harmless)", sr: true,
                  summary: "Cures 1d8 damage + 1/level (max +5).",
                  desc: "When laying your hand upon a living creature, you channel positive energy that cures 1d8 points of damage + 1 point per caster level (maximum +5). Since undead are powered by negative energy, this spell deals damage to them instead of curing their wounds. An undead creature can apply spell resistance, and can attempt a Will save to take half damage."),

            .make("Shield", school: "Abjuration", levels: "sorcerer/wizard 1",
                  castingTime: "1 standard action", components: "V, S",
                  range: "Personal", duration: "1 min./level (D)",
                  savingThrow: "None", sr: false,
                  summary: "Invisible disc gives +4 to AC, blocks magic missiles.",
                  desc: "Shield creates an invisible shield of force that hovers in front of you. It negates magic missile attacks directed at you. The disk also provides a +4 shield bonus to AC. This bonus applies against incorporeal touch attacks, since it is a force effect. The shield has no armor check penalty or arcane spell failure chance."),

            .make("Mage Armor", school: "Conjuration (Creation)", levels: "sorcerer/wizard 1",
                  castingTime: "1 standard action", components: "V, S, F (a piece of cured leather)",
                  range: "Touch", duration: "1 hour/level (D)",
                  savingThrow: "Will negates (harmless)", sr: false,
                  summary: "Gives subject a +4 armor bonus to AC.",
                  desc: "An invisible but tangible field of force surrounds the subject of a mage armor spell, providing a +4 armor bonus to AC. Unlike mundane armor, mage armor entails no armor check penalty, arcane spell failure chance, or speed reduction. Since mage armor is made of force, incorporeal creatures can't bypass it the way they do normal armor."),

            .make("Haste", school: "Transmutation", levels: "bard 3, sorcerer/wizard 3",
                  castingTime: "1 standard action", components: "V, S, M (a shaving of licorice root)",
                  range: "Close (25 ft. + 5 ft./2 levels)", duration: "1 round/level",
                  savingThrow: "Fortitude negates (harmless)", sr: true,
                  summary: "One creature/level moves faster, +1 on attack rolls, AC, and Reflex saves.",
                  desc: "The transmuted creatures move and act more quickly than normal. This extra speed has several effects: When making a full attack action, a hasted creature may make one extra attack with one natural or manufactured weapon. The attack is made using the creature's full base attack bonus, plus any modifiers appropriate to the situation. A hasted creature gains a +1 bonus on attack rolls and a +1 dodge bonus to AC and Reflex saves. Any condition that makes you lose your Dexterity bonus to Armor Class also makes you lose dodge bonuses. Hasted creatures also gain an extra move action each turn."),

            .make("Fly", school: "Transmutation", levels: "sorcerer/wizard 3",
                  castingTime: "1 standard action", components: "V, S, F (a wing feather from any bird)",
                  range: "Touch", duration: "1 min./level",
                  savingThrow: "Will negates (harmless)", sr: true,
                  summary: "Subject flies at speed of 60 ft.",
                  desc: "The subject can fly at a speed of 60 feet (or 40 feet if it wears medium or heavy armor, or if it carries a medium or heavy load). It can ascend at half speed and descend at double speed, and its maneuverability is good. Using a fly spell requires only as much concentration as walking, so the subject can attack or cast spells normally. The subject of a fly spell can charge but not run, and it cannot carry aloft more weight than its maximum load, plus any armor it wears. Should the spell duration expire while the subject is still aloft, the magic fails slowly."),

            .make("Invisibility", school: "Illusion (Glamer)", levels: "bard 2, sorcerer/wizard 2",
                  castingTime: "1 standard action", components: "V, S, M (an eyelash encased in a bit of gum arabic)",
                  range: "Personal or touch", duration: "1 min./level (D)",
                  savingThrow: "Will negates (harmless)", sr: false,
                  summary: "Subject is invisible for 1 min./level or until it attacks.",
                  desc: "The creature or object touched becomes invisible, vanishing from sight, even from darkvision. If the recipient is a creature carrying gear, that vanishes, too. If you cast the spell on someone else, neither you nor your allies can see the subject, unless you can normally see invisible things or you employ magic to do so. Items dropped or put down by an invisible creature become visible; items picked up disappear if tucked into the clothing or pouches worn by the creature."),

            .make("Lightning Bolt", school: "Evocation", levels: "sorcerer/wizard 3",
                  castingTime: "1 standard action", components: "V, S, M (fur and an amber, crystal, or glass rod)",
                  range: "120 ft.", duration: "Instantaneous",
                  savingThrow: "Reflex half", sr: true,
                  summary: "Electricity deals 1d6/level damage in a line.",
                  desc: "You release a powerful stroke of electrical energy that deals 1d6 points of electricity damage per caster level (maximum 10d6) to each creature within its area. The bolt begins at your fingertips. The lightning bolt sets fire to combustibles and damages objects in its path. It can melt metals with a low melting point, such as lead, gold, copper, silver, or bronze."),

            .make("Dispel Magic", school: "Abjuration", levels: "bard 3, cleric/oracle 3, druid 4, paladin 3, sorcerer/wizard 3",
                  castingTime: "1 standard action", components: "V, S",
                  range: "Medium (100 ft. + 10 ft./level)", duration: "Instantaneous",
                  savingThrow: "None", sr: false,
                  summary: "Cancels spells and magical effects.",
                  desc: "You can use dispel magic to end one ongoing spell that has been cast on a creature or object, to temporarily suppress the magical abilities of a magic item, or to counter another spellcaster's spell. A dispelled spell ends as if its duration had expired. Targeted dispel: One object, creature, or spell is the target of the dispel magic spell. You make a dispel check (1d20 + your caster level, maximum +10) against the spell (DC = 11 + the spell's caster level)."),

            .make("Heal", school: "Conjuration (Healing)", levels: "cleric/oracle 6, druid 7",
                  castingTime: "1 standard action", components: "V, S",
                  range: "Touch", duration: "Instantaneous",
                  savingThrow: "Will negates (harmless)", sr: true,
                  summary: "Cures 10 points/level of damage, all diseases and mental conditions.",
                  desc: "Heal enables you to channel positive energy into a creature to wipe away injury and afflictions. It immediately ends any and all of the following adverse conditions affecting the target: ability damage, blinded, confused, dazed, dazzled, deafened, diseased, exhausted, fatigued, feebleminded, insanity, nauseated, sickened, stunned, and poisoned. It also cures 10 hit points of damage per level of the caster, to a maximum of 150 points at 15th level."),

            .make("Detect Magic", school: "Divination", levels: "bard 0, cleric/oracle 0, druid 0, sorcerer/wizard 0",
                  castingTime: "1 standard action", components: "V, S",
                  range: "60 ft.", duration: "Concentration, up to 1 min./level (D)",
                  savingThrow: "None", sr: false,
                  summary: "Detects spells and magic items within 60 ft.",
                  desc: "You detect magical auras. The amount of information revealed depends on how long you study a particular area or subject. 1st Round: Presence or absence of magical auras. 2nd Round: Number of different magical auras and the power of the most potent aura. 3rd Round: The strength and location of each aura. If the items or creatures bearing the auras are in line of sight, you can make Knowledge (arcana) skill checks to determine the school of magic involved in each."),

            .make("Light", school: "Evocation", levels: "bard 0, cleric/oracle 0, druid 0, sorcerer/wizard 0",
                  castingTime: "1 standard action", components: "V, M/DF",
                  range: "Touch", duration: "10 min./level (D)",
                  savingThrow: "None", sr: false,
                  summary: "Object shines like a torch.",
                  desc: "This spell causes a touched object to glow like a torch, shedding normal light in a 20-foot radius and increasing the light level for an additional 20 feet by one step, up to normal light. Magical darkness spells of 2nd level or lower do not function in this area. If light is cast on a small object that is then placed inside or under a light-proof covering, the spell's effects are blocked until the covering is removed."),

            .make("Prestidigitation", school: "Universal", levels: "bard 0, sorcerer/wizard 0",
                  castingTime: "1 standard action", components: "V, S",
                  range: "10 ft.", duration: "1 hour",
                  savingThrow: "See text", sr: false,
                  summary: "Performs minor tricks.",
                  desc: "Once cast, a prestidigitation spell enables you to perform simple magical effects for 1 hour. The effects are minor and have severe limitations. A prestidigitation can slowly lift 1 pound of material. It can color, clean, or soil items in a 1-foot cube each round. It can chill, warm, or flavor 1 pound of nonliving material. It can create small objects, but they look crude and artificial. The materials created by a prestidigitation spell are extremely fragile, and they cannot be used as tools, weapons, or spell components. It can clean or soil any items in a 1-foot cube."),

            .make("Burning Hands", school: "Evocation", levels: "sorcerer/wizard 1",
                  castingTime: "1 standard action", components: "V, S",
                  range: "15 ft.", duration: "Instantaneous",
                  savingThrow: "Reflex half", sr: true,
                  summary: "1d4/level fire damage (max 5d4) in a cone.",
                  desc: "A cone of searing flame shoots from your fingertips. Any creature in the area of the flames takes 1d4 points of fire damage per caster level (maximum 5d4). Flammable materials burn if the flames touch them. A character can extinguish burning items as a full-round action."),

            .make("Sleep", school: "Enchantment (Compulsion)", levels: "bard 1, sorcerer/wizard 1",
                  castingTime: "1 round", components: "V, S, M (fine sand, rose petals, or a live cricket)",
                  range: "Medium (100 ft. + 10 ft./level)", duration: "1 min./level",
                  savingThrow: "Will negates", sr: true,
                  summary: "Puts 4 HD of creatures into magical slumber.",
                  desc: "A sleep spell causes a magical slumber to come upon 4 HD of creatures. Creatures with the fewest HD are affected first. Among creatures with equal HD, those who are closest to the spell's point of origin are affected first. HD that are not sufficient to affect a creature are wasted. Sleeping creatures are helpless. Slapping or wounding awakens an affected creature, but normal noise does not."),

            .make("Charm Person", school: "Enchantment (Charm)", levels: "bard 1, sorcerer/wizard 1",
                  castingTime: "1 standard action", components: "V, S",
                  range: "Close (25 ft. + 5 ft./2 levels)", duration: "1 hour/level",
                  savingThrow: "Will negates", sr: true,
                  summary: "Makes one person your friend.",
                  desc: "This charm makes a humanoid creature regard you as its trusted friend and ally (treat the target's attitude as friendly). If the creature is currently being threatened or attacked by you or your allies, however, it receives a +5 bonus on its saving throw. The spell does not enable you to control the charmed person as if it were an automaton, but it perceives your words and actions in the most favorable way it can, and will not act against your obvious interests."),

            .make("Hold Person", school: "Enchantment (Compulsion)", levels: "bard 2, cleric/oracle 2, sorcerer/wizard 3",
                  castingTime: "1 standard action", components: "V, S, F/DF",
                  range: "Medium (100 ft. + 10 ft./level)", duration: "1 round/level (D)",
                  savingThrow: "Will negates", sr: true,
                  summary: "Paralyzes one humanoid for 1 round/level.",
                  desc: "The subject becomes paralyzed and freezes in place. It is aware and breathes normally but cannot take any actions, even speech. Each round on its turn, the subject may attempt a new saving throw to end the effect. Humanoid creatures are the only valid targets."),

            .make("Dimension Door", school: "Conjuration (Teleportation)", levels: "bard 4, sorcerer/wizard 4",
                  castingTime: "1 standard action", components: "V",
                  range: "Long (400 ft. + 40 ft./level)", duration: "Instantaneous",
                  savingThrow: "None", sr: false,
                  summary: "Teleports you short distance.",
                  desc: "You instantly transfer yourself from your current location to any other spot within range. You always arrive at exactly the spot desired—whether by simply visualizing the area or by stating direction. After using this spell, you can't take any other actions until your next turn. You can bring along objects as long as their weight doesn't exceed your maximum load. You may also bring one additional willing Medium or smaller creature per three caster levels."),

            .make("Teleport", school: "Conjuration (Teleportation)", levels: "sorcerer/wizard 5",
                  castingTime: "1 standard action", components: "V",
                  range: "Personal and touch", duration: "Instantaneous",
                  savingThrow: "None", sr: false,
                  summary: "Instantly transports you as far as 100 miles per level.",
                  desc: "This spell instantly transports you to a designated destination, which may be as distant as 100 miles per caster level. Interplanar travel is not possible. You may also bring one additional willing Medium or smaller creature (carrying gear or objects up to its maximum load) or its equivalent per three caster levels. A creature brought along on the teleport must be in contact with you."),

            .make("Wall of Force", school: "Evocation", levels: "sorcerer/wizard 5",
                  castingTime: "1 standard action", components: "V, S, M (powdered quartz)",
                  range: "Close (25 ft. + 5 ft./2 levels)", duration: "1 round/level (D)",
                  savingThrow: "None", sr: false,
                  summary: "Wall is immune to damage.",
                  desc: "A wall of force spell creates an invisible wall of force. The wall cannot move, it is not affected by dispel magic, and it functions normally in an antimagic field. It cannot be dispelled by antimagic field, though a mage's disjunction can still dispel the wall. Breath weapons and spells cannot pass through the wall in either direction. Normal missiles and thrown weapons cannot pass through the wall."),

            .make("Dominate Person", school: "Enchantment (Compulsion)", levels: "sorcerer/wizard 5",
                  castingTime: "1 round", components: "V, S",
                  range: "Close (25 ft. + 5 ft./2 levels)", duration: "1 day/level",
                  savingThrow: "Will negates", sr: true,
                  summary: "Controls humanoid telepathically.",
                  desc: "You can control the actions of any humanoid creature through a telepathic link that you establish with the subject's mind. If you and the subject have a common language, you can generally force the subject to perform as you desire, within the limits of its abilities. If no common language exists, you can communicate only basic commands, such as \"Come here,\" \"Go there,\" \"Fight,\" and \"Stand still.\""),

            .make("Finger of Death", school: "Necromancy", levels: "druid 8, sorcerer/wizard 7",
                  castingTime: "1 standard action", components: "V, S",
                  range: "Close (25 ft. + 5 ft./2 levels)", duration: "Instantaneous",
                  savingThrow: "Fortitude partial", sr: true,
                  summary: "Kills one creature (3d6+1/level if save).",
                  desc: "You can slay any one living creature within range. The target is entitled to a Fortitude saving throw to survive the attack. If the save is successful, the creature instead takes 3d6 points of damage + 1 point per caster level. The subject might die from damage even if it succeeds on its saving throw."),

            .make("Gate", school: "Conjuration (Creation or Calling)", levels: "cleric/oracle 9, sorcerer/wizard 9",
                  castingTime: "1 standard action", components: "V, S, M (diamond worth 1,000 gp)",
                  range: "Medium (100 ft. + 10 ft./level)", duration: "Concentration (up to 1 round/level) or Instantaneous",
                  savingThrow: "None", sr: false,
                  summary: "Connects two planes for travel or summons a powerful creature.",
                  desc: "Casting a gate spell has two effects. First, it creates an interdimensional connection between your plane of existence and a plane you specify, allowing travel between those two planes in either direction. Second, you may select a plane you specify. Casting a gate spell has two effects: it creates a magical gateway that connects two planes and allows creatures to pass through in either direction."),

            .make("Time Stop", school: "Transmutation", levels: "sorcerer/wizard 9",
                  castingTime: "1 standard action", components: "V",
                  range: "Personal", duration: "1d4+1 rounds (apparent time)",
                  savingThrow: "None", sr: false,
                  summary: "You act freely for 1d4+1 rounds.",
                  desc: "This spell seems to make time cease to flow for everyone but you. In fact, you speed up so greatly that all other creatures seem frozen, though they are actually still moving at their normal speeds. You are free to act for 1d4+1 rounds of apparent time. Normal and magical fire, cold, gas, and the like can still harm you. While the time stop is in effect, other creatures are invulnerable to your attacks and spells."),

            .make("Bless", school: "Enchantment (Compulsion)", levels: "cleric/oracle 1, paladin 1",
                  castingTime: "1 standard action", components: "V, S, DF",
                  range: "50 ft.", duration: "1 min./level",
                  savingThrow: "None", sr: true,
                  summary: "Allies gain +1 on attack rolls and saves vs. fear.",
                  desc: "Bless fills your allies with courage. Each ally gains a +1 morale bonus on attack rolls and on saving throws against fear effects. Bless counters and dispels bane."),

            .make("Prayer", school: "Enchantment (Compulsion)", levels: "cleric/oracle 3, paladin 3",
                  castingTime: "1 standard action", components: "V, S, DF",
                  range: "40 ft.", duration: "1 round/level",
                  savingThrow: "None", sr: true,
                  summary: "Allies +1 bonus, enemies -1 penalty on most rolls.",
                  desc: "You lend divine aid to your allies while also causing divine harm to your enemies. Each round, you and each of your allies within the area gains a +1 luck bonus on attack rolls, weapon damage rolls, saves, and skill checks, while each of your foes within the area takes a -1 penalty on such rolls."),

            .make("Flame Strike", school: "Evocation", levels: "cleric/oracle 5, druid 4",
                  castingTime: "1 standard action", components: "V, S, DF",
                  range: "Medium (100 ft. + 10 ft./level)", duration: "Instantaneous",
                  savingThrow: "Reflex half", sr: true,
                  summary: "Smites foes with divine fire (1d6/level damage, half fire half divine).",
                  desc: "A flame strike produces a vertical column of divine fire roaring downward. The spell deals 1d6 points of damage per caster level (maximum 15d6). Half the damage is fire damage, but the other half results directly from divine power and is therefore not subject to being reduced by resistance to fire-based attacks."),

            .make("Summon Monster I", school: "Conjuration (Summoning)", levels: "bard 1, cleric/oracle 1, sorcerer/wizard 1",
                  castingTime: "1 round", components: "V, S, F/DF",
                  range: "Close (25 ft. + 5 ft./2 levels)", duration: "1 round/level (D)",
                  savingThrow: "None", sr: false,
                  summary: "Summons extraplanar creature to fight for you.",
                  desc: "This spell summons an extraplanar creature (typically an outsider, elemental, or magical beast native to another plane). It appears where you designate and acts immediately, on your turn. It attacks your opponents to the best of its ability. If you can communicate with the creature, you can direct it not to attack, to attack particular enemies, or to perform other actions. The creature attacks your opponents to the best of its ability."),

            .make("Magic Weapon", school: "Transmutation", levels: "cleric/oracle 1, paladin 1, sorcerer/wizard 1",
                  castingTime: "1 standard action", components: "V, S, DF",
                  range: "Touch", duration: "1 min./level",
                  savingThrow: "Will negates (harmless, object)", sr: false,
                  summary: "Weapon gains +1 bonus.",
                  desc: "Magic weapon gives a weapon a +1 enhancement bonus on attack and damage rolls. An enhancement bonus does not stack with a masterwork weapon's +1 bonus on attack rolls. You can't cast this spell on a natural weapon, such as an unarmed strike."),

            .make("Bull's Strength", school: "Transmutation", levels: "cleric/oracle 2, druid 2, paladin 2, sorcerer/wizard 2",
                  castingTime: "1 standard action", components: "V, S, M/DF (a few hairs, or a pinch of dung, from a bull)",
                  range: "Touch", duration: "1 min./level",
                  savingThrow: "Will negates (harmless)", sr: true,
                  summary: "Subject gains +4 to Str for 1 min./level.",
                  desc: "The subject becomes stronger. The spell grants a +4 enhancement bonus to Strength, adding the usual benefits to melee attack rolls, melee damage rolls, and other uses of the Strength modifier."),

            .make("Bear's Endurance", school: "Transmutation", levels: "cleric/oracle 2, druid 2, ranger 2, sorcerer/wizard 2",
                  castingTime: "1 standard action", components: "V, S, M/DF (a few hairs from a bear)",
                  range: "Touch", duration: "1 min./level",
                  savingThrow: "Will negates (harmless)", sr: true,
                  summary: "Subject gains +4 to Con for 1 min./level.",
                  desc: "The affected creature gains greater vitality and stamina. The spell grants the subject a +4 enhancement bonus to Constitution, which adds the usual benefits to hit points, Fortitude saving throws, Constitution checks, and so forth."),

            .make("Cat's Grace", school: "Transmutation", levels: "bard 2, druid 2, ranger 2, sorcerer/wizard 2",
                  castingTime: "1 standard action", components: "V, S, M (pinch of cat fur)",
                  range: "Touch", duration: "1 min./level",
                  savingThrow: "Will negates (harmless)", sr: true,
                  summary: "Subject gains +4 to Dex for 1 min./level.",
                  desc: "The transmuted creature becomes more graceful, agile, and coordinated. The spell grants a +4 enhancement bonus to Dexterity, adding the usual benefits to AC, Reflex saves, and other uses of the Dexterity modifier."),

            .make("Eagle's Splendor", school: "Transmutation", levels: "bard 2, cleric/oracle 2, paladin 2, sorcerer/wizard 2",
                  castingTime: "1 standard action", components: "V, S, M/DF (feathers or droppings from an eagle)",
                  range: "Touch", duration: "1 min./level",
                  savingThrow: "Will negates (harmless)", sr: true,
                  summary: "Subject gains +4 to Cha for 1 min./level.",
                  desc: "The subject becomes more poised, articulate, and personally forceful. The spell grants a +4 enhancement bonus to Charisma, adding the usual benefits to Charisma-based skill checks and other uses of the Charisma modifier."),

            .make("Fox's Cunning", school: "Transmutation", levels: "bard 2, sorcerer/wizard 2",
                  castingTime: "1 standard action", components: "V, S, M/DF (hairs or dung from a fox)",
                  range: "Touch", duration: "1 min./level",
                  savingThrow: "Will negates (harmless)", sr: true,
                  summary: "Subject gains +4 to Int for 1 min./level.",
                  desc: "The subject becomes smarter. The spell grants a +4 enhancement bonus to Intelligence, adding the usual benefits to Intelligence-based skill checks and other uses of the Intelligence modifier."),

            .make("Owl's Wisdom", school: "Transmutation", levels: "cleric/oracle 2, druid 2, ranger 2, sorcerer/wizard 2",
                  castingTime: "1 standard action", components: "V, S, M/DF (feathers or droppings from an owl)",
                  range: "Touch", duration: "1 min./level",
                  savingThrow: "Will negates (harmless)", sr: true,
                  summary: "Subject gains +4 to Wis for 1 min./level.",
                  desc: "The transmuted creature becomes wiser. The spell grants a +4 enhancement bonus to Wisdom, adding the usual benefits to Wisdom-based skill checks and other uses of the Wisdom modifier."),

            .make("Stoneskin", school: "Abjuration", levels: "druid 6, sorcerer/wizard 4",
                  castingTime: "1 standard action", components: "V, S, M (granite and diamond dust worth 250 gp)",
                  range: "Touch", duration: "10 min./level or until discharged",
                  savingThrow: "Will negates (harmless)", sr: true,
                  summary: "Ignore 10 points of damage per attack.",
                  desc: "The warded creature gains resistance to blows, cuts, stabs, and slashes. The subject gains DR 10/adamantine. It ignores the first 10 points of damage each time it takes damage from a weapon, though an adamantine weapon bypasses the reduction. Once the spell has prevented a total of 10 points of damage per caster level (maximum 150 points), it is discharged."),

            .make("Freedom of Movement", school: "Abjuration", levels: "bard 4, cleric/oracle 4, druid 4, ranger 4",
                  castingTime: "1 standard action", components: "V, S, M (a leather strap), DF",
                  range: "Personal or touch", duration: "10 min./level",
                  savingThrow: "Will negates (harmless)", sr: true,
                  summary: "Subject moves normally despite impediments.",
                  desc: "This spell enables you or a creature you touch to move and attack normally for the duration of the spell, even underwater, even against the effects of magic that usually impedes movement, such as paralysis, solid fog, slow, and web. The subject automatically succeeds on any combat maneuver checks made to grapple and on checks to escape a grapple or pin."),

            .make("True Seeing", school: "Divination", levels: "cleric/oracle 5, druid 7, sorcerer/wizard 6",
                  castingTime: "1 standard action", components: "V, S, M (mushroom powder worth 250 gp)",
                  range: "Touch", duration: "1 min./level",
                  savingThrow: "Will negates (harmless)", sr: true,
                  summary: "Lets you see all things as they really are.",
                  desc: "You confer on the subject the ability to notice spell effects, see through illusions, and determine the original form of a polymorphed creature. The subject can automatically see through a number of effects that would otherwise impede vision. Flawless sight extends 120 feet."),

            .make("Greater Dispel Magic", school: "Abjuration", levels: "bard 5, cleric/oracle 6, druid 6, sorcerer/wizard 6",
                  castingTime: "1 standard action", components: "V, S",
                  range: "Medium (100 ft. + 10 ft./level)", duration: "Instantaneous",
                  savingThrow: "None", sr: false,
                  summary: "As dispel magic, but with +20 maximum bonus.",
                  desc: "This spell functions like dispel magic, except that it can end more than one spell on a target and it has a higher maximum bonus on its dispel check. A targeted greater dispel magic can dispel one spell for every four caster levels you have. The maximum dispel check bonus is +20 rather than +10."),

            .make("Mass Cure Light Wounds", school: "Conjuration (Healing)", levels: "bard 5, cleric/oracle 5, druid 6",
                  castingTime: "1 standard action", components: "V, S",
                  range: "Close (25 ft. + 5 ft./2 levels)", duration: "Instantaneous",
                  savingThrow: "Will half (harmless) or Will half", sr: true,
                  summary: "Cures 1d8 damage + 1/level for many creatures.",
                  desc: "You channel positive energy to cure 1d8 points of damage + 1 point per caster level (maximum +25) in each selected creature. Like other cure spells, mass cure light wounds deals damage to undead in its area rather than curing them, and nonliving creatures are not affected."),

            .make("Holy Word", school: "Evocation", levels: "cleric/oracle 7",
                  castingTime: "1 standard action", components: "V",
                  range: "40 ft.", duration: "Instantaneous",
                  savingThrow: "None or Will negates", sr: true,
                  summary: "Kills, paralyzes, blinds, or deafens nongood subjects.",
                  desc: "Any nongood creature within the area of a holy word spell suffers the following ill effects based on Hit Dice. 11 or more HD: Deafened. 6–10 HD: Blinded, deafened. 1–5 HD: Paralyzed, blinded, deafened. Fewer than 1 HD: Killed, paralyzed, blinded, deafened."),

            .make("Earthquake", school: "Evocation", levels: "cleric/oracle 8, druid 8",
                  castingTime: "1 standard action", components: "V, S, DF",
                  range: "Long (400 ft. + 40 ft./level)", duration: "1 round",
                  savingThrow: "See text", sr: false,
                  summary: "Intense tremor shakes 80-ft.-radius.",
                  desc: "When you cast earthquake, an intense but localized tremor rips the ground. The powerful shockwave has several effects. The spell generates a tremendous earth tremor that lasts for 1 round. Creatures on the ground are unable to move or attack during that round. A creature that attempts to cast a spell during the earthquake must make a Concentration check or lose the spell."),

            .make("Resurrection", school: "Conjuration (Healing)", levels: "cleric/oracle 7",
                  castingTime: "1 minute", components: "V, S, M (diamonds worth 10,000 gp), DF",
                  range: "Touch", duration: "Instantaneous",
                  savingThrow: "None (see text)", sr: true,
                  summary: "Fully restore dead subject.",
                  desc: "This spell functions like raise dead, except that you are able to restore life to any deceased creature. The condition of the remains is not a factor. So long as some small portion of the creature's body still exists, it can be resurrected, though returning from beyond the grave is an ordeal. The subject of the spell gains 1 negative level when it is raised, just as if it had been hit by an energy-draining creature."),

            .make("Wish", school: "Universal", levels: "sorcerer/wizard 9",
                  castingTime: "1 standard action", components: "V, M (diamond worth 25,000 gp)",
                  range: "See text", duration: "See text",
                  savingThrow: "See text", sr: true,
                  summary: "As limited wish, but no limits.",
                  desc: "Wish is the mightiest spell a wizard or sorcerer can cast. By simply speaking aloud, you can alter reality to better suit you. Even wish, however, has its limits. A wish can produce any one of the following effects: Duplicate any sorcerer/wizard spell of 8th level or lower. Duplicate any other spell of 6th level or lower. Undo the harmful effects of many other spells, such as geas/quest or insanity. Create a nonmagical item of up to 25,000 gp in value."),

            .make("Power Word Kill", school: "Enchantment (Compulsion)", levels: "sorcerer/wizard 9",
                  castingTime: "1 standard action", components: "V",
                  range: "Close (25 ft. + 5 ft./2 levels)", duration: "Instantaneous",
                  savingThrow: "None", sr: true,
                  summary: "Kills one creature with 100 hp or less.",
                  desc: "You utter a single word of power that instantly kills one creature of your choice, whether the creature can hear the word or not. Any creature that currently has 100 or fewer hit points is slain. Otherwise, the creature is unaffected."),

            .make("Meteor Swarm", school: "Evocation", levels: "sorcerer/wizard 9",
                  castingTime: "1 standard action", components: "V, S",
                  range: "Long (400 ft. + 40 ft./level)", duration: "Instantaneous",
                  savingThrow: "None or Reflex half", sr: true,
                  summary: "Four exploding spheres each deal 2d6 bludgeoning and 6d6 fire damage.",
                  desc: "Meteor swarm is a very powerful and spectacular spell that is similar to fireball in many aspects. When you cast it, four 2-foot-diameter spheres spring from your outstretched hand and streak in straight lines to the spots you select. The meteor spheres leave a fiery trail of sparks. If a sphere strikes a creature, it deals 2d6 points of bludgeoning damage (no save) and the explosion of the meteor deals 6d6 points of fire damage (Reflex half) to all creatures within the burst area of that meteor."),

            .make("Polymorph", school: "Transmutation (Polymorph)", levels: "sorcerer/wizard 4",
                  castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                  range: "Touch", duration: "1 min./level (D)",
                  savingThrow: "Will negates (harmless)", sr: false,
                  summary: "Gives one willing subject a new form.",
                  desc: "This spell transforms a willing creature into an animal, humanoid or elemental of your choosing. The transformed creature's type changes to match the new form. Upon changing, the subject regains lost hit points as if it had rested for a night (though this healing does not restore temporary ability damage and provide no other benefits of resting; and changing back does not heal the subject further)."),
        ]

        for spell in spells {
            try await db.insertSpell(spell)
        }
    }

    // MARK: - Classes

    private func seedClasses() async throws {
        let classes: [ClassEntry] = [
            .make("Barbarian", hitDie: "d12", skillRanks: 4, bab: "Full", fort: "Good", ref: "Poor", will: "Poor",
                  skills: ["Acrobatics","Climb","Craft","Handle Animal","Intimidate","Knowledge (nature)","Perception","Ride","Survival","Swim"],
                  summary: "A barbarian is a ferocious warrior who can enter a near-magical fury.",
                  desc: "For some, there is only rage. In the ways of their people, in the fury of their passion, in the howl of battle, conflict is all these brutal souls know. Savages, hired muscle, masters of vicious martial techniques, they are not soldiers or professional warriors—they are the battle-hungry men and women who live only for combat. Untamed and sometimes unpredictable, barbarians call the upright warrior nations of empires, cities, and civilized kings their enemies."),

            .make("Bard", hitDie: "d8", skillRanks: 6, bab: "Medium", fort: "Poor", ref: "Good", will: "Good",
                  skills: ["Acrobatics","Appraise","Bluff","Climb","Craft","Diplomacy","Disguise","Escape Artist","Intimidate","Knowledge (all)","Linguistics","Perception","Perform","Profession","Sense Motive","Sleight of Hand","Spellcraft","Stealth","Use Magic Device"],
                  summary: "A bard is a master of song, speech, and the magic they contain.",
                  desc: "Untold wonders and secrets exist for those skillful enough to discover them. Through cleverness, talent, and magic, these cunning few unravel the wiles of the world, becoming adept in the arts of persuasion, manipulation, and inspiration. Typically masters of one or many forms of artistry, bards possess an uncanny ability to know more than they should and use what they learn to keep themselves and their allies ever one step ahead of danger."),

            .make("Cleric", hitDie: "d8", skillRanks: 2, bab: "Medium", fort: "Good", ref: "Poor", will: "Good",
                  skills: ["Appraise","Craft","Diplomacy","Heal","Knowledge (arcana)","Knowledge (history)","Knowledge (nobility)","Knowledge (planes)","Knowledge (religion)","Linguistics","Profession","Sense Motive","Spellcraft"],
                  summary: "A cleric is a master of divine magic and a capable warrior.",
                  desc: "In faith and the miracles of the divine, many find a greater purpose. Called to serve powers beyond most mortal understanding, all priests preach wonders and provide for the spiritual needs of their people. Clerics are more than mere priests, though; these emissaries of the divine work the will of their deities through strength of arms and the magic of their gods."),

            .make("Druid", hitDie: "d8", skillRanks: 4, bab: "Medium", fort: "Good", ref: "Poor", will: "Good",
                  skills: ["Climb","Craft","Fly","Handle Animal","Heal","Knowledge (geography)","Knowledge (nature)","Perception","Profession","Ride","Spellcraft","Survival","Swim"],
                  summary: "A druid is a worshiper of nature and protector of the natural world.",
                  desc: "Within the purity of the elements and the order of the wilds lingers a power beyond the marvels of civilization. Furtive yet undeniable, these primal magics are guarded over by servants of philosophical balance known as druids. Allies to beasts and manipulators of nature, these often misunderstood protectors of the wild strive to shield their lands from the unending spread of civilization."),

            .make("Fighter", hitDie: "d10", skillRanks: 2, bab: "Full", fort: "Good", ref: "Poor", will: "Poor",
                  skills: ["Climb","Craft","Handle Animal","Intimidate","Knowledge (dungeoneering)","Knowledge (engineering)","Profession","Ride","Survival","Swim"],
                  summary: "A fighter is master of all manner of arms and armor.",
                  desc: "Some take up arms for glory, wealth, or revenge. Others do battle to prove themselves, to protect others, or because they know nothing else. Still others learn the ways of weaponcraft to hone their bodies in battle and prove their mettle in the forge of war. Lords of the battlefield, fighters are a disparate lot, training with many weapons or just one, perfecting the uses of armor, learning the fighting techniques of exotic masters, and studying the art of combat in all its forms."),

            .make("Monk", hitDie: "d8", skillRanks: 4, bab: "Medium", fort: "Good", ref: "Good", will: "Good",
                  skills: ["Acrobatics","Climb","Craft","Escape Artist","Intimidate","Knowledge (history)","Knowledge (religion)","Perception","Perform","Profession","Ride","Sense Motive","Stealth","Swim"],
                  summary: "A monk is a master of martial arts who channels ki energy.",
                  desc: "For the truly exemplary, martial skill transcends the battlefield—it is a lifestyle, a doctrine, a state of mind. These warrior-artists search out methods of battle beyond swords and shields, finding weapons within themselves just as capable of crippling or killing as any blade. These monks (so called since they adhere to ancient philosophies and strict martial disciplines) elevate their bodies to become weapons of war, from battle-minded ascetics to self-taught brawlers."),

            .make("Paladin", hitDie: "d10", skillRanks: 2, bab: "Full", fort: "Good", ref: "Poor", will: "Good",
                  skills: ["Craft","Diplomacy","Handle Animal","Heal","Knowledge (nobility)","Knowledge (religion)","Profession","Ride","Sense Motive","Spellcraft"],
                  summary: "A paladin is a champion of justice and destroyer of evil.",
                  desc: "Through a select, worthy few shines the power of the divine. Called paladins, these noble souls dedicate their swords and lives to the battle against evil. Knights, crusaders, and law-bringers, paladins seek not just to spread divine justice but to embody the teachings of the virtuous deities they serve. In pursuit of their lofty goals, they adhere to ironclad laws of morality and discipline."),

            .make("Ranger", hitDie: "d10", skillRanks: 6, bab: "Full", fort: "Good", ref: "Good", will: "Poor",
                  skills: ["Climb","Craft","Handle Animal","Heal","Intimidate","Knowledge (dungeoneering)","Knowledge (geography)","Knowledge (nature)","Perception","Profession","Ride","Spellcraft","Stealth","Survival","Swim"],
                  summary: "A ranger is a master of the wilderness and hunting prey.",
                  desc: "For those who relish the thrill of the hunt, there are only predators and prey. Be they scouts, trackers, or bounty hunters, rangers share much in common: unique mastery of specialized weapons, skill at stalking even the most elusive game, and the expertise to defeat a wide range of quarries. Knowledgeable, patient, and skilled hunters, these rangers hound man, beast, and monster alike, gaining insight into the way of the predator, skill in varied environments, and ever more lethal martial prowess."),

            .make("Rogue", hitDie: "d8", skillRanks: 8, bab: "Medium", fort: "Poor", ref: "Good", will: "Poor",
                  skills: ["Acrobatics","Appraise","Bluff","Climb","Craft","Diplomacy","Disable Device","Disguise","Escape Artist","Intimidate","Knowledge (dungeoneering)","Knowledge (local)","Linguistics","Perception","Perform","Profession","Sense Motive","Sleight of Hand","Stealth","Swim","Use Magic Device"],
                  summary: "A rogue is a master of stealth and deception who excels at finding enemy weaknesses.",
                  desc: "Life is an endless adventure for those who live by their wits. Ever just one step ahead of danger, rogues bank on their cunning, skill, and charm to bend fate to their favor. Never knowing what to expect, they prepare for everything, becoming masters of a wide variety of skills, training themselves to be adept manipulators, agile acrobats, shadowy stalkers, or masters of any of dozens of other professions or talents."),

            .make("Sorcerer", hitDie: "d6", skillRanks: 2, bab: "Poor", fort: "Poor", ref: "Poor", will: "Good",
                  skills: ["Appraise","Bluff","Craft","Fly","Intimidate","Knowledge (arcana)","Profession","Spellcraft","Use Magic Device"],
                  summary: "A sorcerer casts spells through natural ability and innate power.",
                  desc: "Scions of innately magical bloodlines, the chosen of deities, the spawn of monsters, pawns of fate and destiny, or simply flukes of fickle magic, sorcerers look within themselves for arcane prowess and draw forth might few mortals can imagine. Emboldened by lives ever threatening to be consumed by their innate powers, these magic-touched souls endlessly indulge in and refine their mysterious abilities, gradually learning how to harness their birthright and coax forth ever greater arcane feats."),

            .make("Wizard", hitDie: "d6", skillRanks: 2, bab: "Poor", fort: "Poor", ref: "Poor", will: "Good",
                  skills: ["Appraise","Craft","Fly","Knowledge (all)","Linguistics","Profession","Spellcraft"],
                  summary: "A wizard is a powerful spellcaster who learns magic through study and practice.",
                  desc: "Beyond the veil of the mundane hide the secrets of absolute power. The works of beings beyond mortals, the legends of realms where gods and spirits tread, the lore of creations both wondrous and terrible—such mysteries call to those with the ambition and the intellect to rise above the common folk to grasp true might. Such is the path of the wizard. These shrewd magic-users seek, collect, and covet esoteric knowledge, drawing on cultic arts to work wonders beyond the abilities of mere mortals."),
        ]

        for cls in classes {
            try await db.insertClass(cls)
        }
    }

    // MARK: - Feats

    private func seedFeats() async throws {
        let feats: [FeatEntry] = [
            .make("Power Attack", type: "Combat", prereqs: "Str 13, base attack bonus +1",
                  summary: "Trade attack accuracy for greater damage.",
                  benefit: "You can choose to take a -1 penalty on all melee attack rolls and combat maneuver checks to gain a +2 bonus on all melee damage rolls. This bonus to damage is increased by half (+50%) if you are making an attack with a two-handed weapon, a one handed weapon using two hands, or a primary natural weapon that adds 1.5x your Strength modifier on damage rolls. This bonus to damage is halved (-50%) if you are making an attack with an off-hand weapon or secondary natural weapon. When your base attack bonus reaches +4, and every 4 points thereafter, the penalty increases by -1 and the bonus to damage increases by +2. You must choose to use this feat before making an attack roll, and its effects last until your next turn. The bonus damage does not apply to touch attacks or effects that do not deal hit point damage.",
                  normal: "You gain no bonus on damage rolls for making such a sacrifice.",
                  special: "If you have the Cleave feat, the penalty also applies to Cleave attack rolls."),

            .make("Cleave", type: "Combat", prereqs: "Str 13, Power Attack, base attack bonus +1",
                  summary: "Follow-up attack against an adjacent foe when you drop an enemy.",
                  benefit: "As a standard action, you can make a single attack at your full base attack bonus against a foe within reach. If you hit, you deal damage normally and can make an additional attack (using your full base attack bonus) against a foe that is adjacent to the first and also within reach. You can only make one additional attack per round with this feat. When you use this feat, you take a -2 penalty to your Armor Class until your next turn.",
                  normal: "You can make only one attack per round unless you take a full attack action.", special: ""),

            .make("Great Cleave", type: "Combat", prereqs: "Str 13, Cleave, Power Attack, base attack bonus +4",
                  summary: "Make additional attacks as long as you keep dropping foes.",
                  benefit: "This feat works like Cleave, except that there is no limit to the number of times you can use it per round.",
                  normal: "You can only make one extra attack per round with Cleave.", special: ""),

            .make("Weapon Focus", type: "Combat", prereqs: "Proficiency with selected weapon, base attack bonus +1",
                  summary: "+1 bonus on attack rolls with chosen weapon.",
                  benefit: "You gain a +1 bonus on all attack rolls you make using the selected weapon.",
                  normal: "", special: "You can gain Weapon Focus multiple times. Its effects do not stack. Each time you take the feat, it applies to a new type of weapon."),

            .make("Weapon Specialization", type: "Combat", prereqs: "Proficiency with selected weapon, Weapon Focus with selected weapon, fighter level 4th",
                  summary: "+2 bonus on damage rolls with chosen weapon.",
                  benefit: "You gain a +2 bonus on all damage rolls you make using the selected weapon.",
                  normal: "", special: "You can gain Weapon Specialization multiple times. Its effects do not stack. Each time you take the feat, it applies to a new type of weapon. A fighter may select Weapon Specialization as one of his fighter bonus feats."),

            .make("Improved Initiative", type: "Combat", prereqs: "",
                  summary: "+4 bonus on initiative checks.",
                  benefit: "You get a +4 bonus on initiative checks.",
                  normal: "", special: "A fighter may select Improved Initiative as one of his fighter bonus feats."),

            .make("Lightning Reflexes", type: "General", prereqs: "",
                  summary: "+2 bonus on Reflex saving throws.",
                  benefit: "You get a +2 bonus on all Reflex saving throws.",
                  normal: "", special: ""),

            .make("Great Fortitude", type: "General", prereqs: "",
                  summary: "+2 bonus on Fortitude saving throws.",
                  benefit: "You get a +2 bonus on all Fortitude saving throws.",
                  normal: "", special: ""),

            .make("Iron Will", type: "General", prereqs: "",
                  summary: "+2 bonus on Will saving throws.",
                  benefit: "You get a +2 bonus on all Will saving throws.",
                  normal: "", special: ""),

            .make("Toughness", type: "General", prereqs: "",
                  summary: "+3 hit points, plus +1 HP per hit die beyond 3.",
                  benefit: "You gain +3 hit points. For every Hit Die you possess beyond 3, you gain an additional +1 hit point. If you have more than 3 Hit Dice, you gain +1 hit points whenever you gain a Hit Die (such as when you gain a level).",
                  normal: "", special: ""),

            .make("Dodge", type: "Combat", prereqs: "Dex 13",
                  summary: "+1 dodge bonus to AC against attacks from one opponent.",
                  benefit: "You gain a +1 dodge bonus to your AC. A condition that makes you lose your Dex bonus to AC also makes you lose the benefits of this feat.",
                  normal: "", special: ""),

            .make("Mobility", type: "Combat", prereqs: "Dex 13, Dodge",
                  summary: "+4 to AC against attacks of opportunity provoked by movement.",
                  benefit: "You get a +4 dodge bonus to Armor Class against attacks of opportunity caused when you move out of or within a threatened area. A condition that makes you lose your Dexterity bonus to Armor Class (if any) also makes you lose dodge bonuses.",
                  normal: "", special: ""),

            .make("Spring Attack", type: "Combat", prereqs: "Dex 13, Dodge, Mobility, base attack bonus +4",
                  summary: "Move before and after a melee attack.",
                  benefit: "As a full-round action, you can move up to your speed and make a single melee attack without provoking any attacks of opportunity from the target of your attack. You can move both before and after the attack, but you must move at least 10 feet before the attack and the total distance that you move cannot be greater than your speed. You cannot use this ability to attack a foe that is adjacent to you at the start of your turn.",
                  normal: "", special: ""),

            .make("Combat Reflexes", type: "Combat", prereqs: "",
                  summary: "You may make additional attacks of opportunity per round equal to your Dex modifier.",
                  benefit: "You may make a number of additional attacks of opportunity per round equal to your Dexterity bonus. With this feat, you may also make attacks of opportunity while flat-footed.",
                  normal: "A character without this feat can make only one attack of opportunity per round and can't make attacks of opportunity while flat-footed.",
                  special: ""),

            .make("Point-Blank Shot", type: "Combat", prereqs: "",
                  summary: "+1 on ranged attack and damage rolls within 30 feet.",
                  benefit: "You get a +1 bonus on attack and damage rolls with ranged weapons at ranges of up to 30 feet.",
                  normal: "", special: ""),

            .make("Precise Shot", type: "Combat", prereqs: "Point-Blank Shot",
                  summary: "No penalty for shooting into melee.",
                  benefit: "You can shoot or throw ranged weapons at an opponent engaged in melee without taking the standard -4 penalty on your attack roll.",
                  normal: "", special: ""),

            .make("Rapid Shot", type: "Combat", prereqs: "Dex 13, Point-Blank Shot",
                  summary: "Make one extra ranged attack per round.",
                  benefit: "When making a full-attack action with a ranged weapon, you can fire one additional time this round. All of your attack rolls take a -2 penalty when using Rapid Shot.",
                  normal: "", special: ""),

            .make("Manyshot", type: "Combat", prereqs: "Dex 17, Point-Blank Shot, Rapid Shot, base attack bonus +6",
                  summary: "Fire two arrows simultaneously with first attack.",
                  benefit: "When making a full-attack action with a bow, your first attack fires two arrows. If the attack hits, both arrows hit. Apply precision-based damage (such as sneak attack) and critical hit damage only once for this attack. Damage bonus from an enhancement bonus applies to each arrow, as do other damage bonuses, unless they specify otherwise. Damage penalties apply to each arrow separately. Notching and firing two arrows simultaneously sounds like a lot of work, but if you have developed sufficient skill, it can be done.",
                  normal: "", special: ""),

            .make("Deadly Aim", type: "Combat", prereqs: "Dex 13, base attack bonus +1",
                  summary: "Trade ranged attack accuracy for greater damage.",
                  benefit: "You can choose to take a -1 penalty on all ranged attack rolls to gain a +2 bonus on all ranged damage rolls. When your base attack bonus reaches +4, and every +4 thereafter, the penalty increases by -1 and the bonus to damage increases by +2. You must choose to use this feat before making an attack roll and its effects last until your next turn. The bonus damage does not apply to touch attacks or effects that do not deal hit point damage.",
                  normal: "", special: ""),

            .make("Two-Weapon Fighting", type: "Combat", prereqs: "Dex 15",
                  summary: "Reduces penalties for fighting with two weapons.",
                  benefit: "Your penalties on attack rolls for fighting with two weapons are reduced. The penalty for your primary hand lessens by 2 and the one for your off hand lessens by 6. See Two-Weapon Fighting in Combat.",
                  normal: "If you wield a second weapon in your off hand, you can get one extra attack per round with that weapon. When fighting in this way you suffer a -6 penalty with your regular attack or attacks with your primary hand and a -10 penalty to the attack with your off hand.",
                  special: ""),

            .make("Improved Two-Weapon Fighting", type: "Combat", prereqs: "Dex 17, Two-Weapon Fighting, base attack bonus +6",
                  summary: "Gain a second attack with off-hand weapon.",
                  benefit: "In addition to the standard single extra attack you get with an off-hand weapon, you get a second attack with it, albeit at a -5 penalty.",
                  normal: "Without this feat, you can only get a single extra attack with an off-hand weapon.", special: ""),

            .make("Combat Expertise", type: "Combat", prereqs: "Int 13",
                  summary: "Trade attack bonus for increased AC.",
                  benefit: "You can choose to take a -1 penalty on melee attack rolls and combat maneuver checks to gain a +1 dodge bonus to your Armor Class. When your base attack bonus reaches +4, and every +4 thereafter, the penalty increases by -1 and the dodge bonus increases by +1. You can only choose to use this feat when you declare that you are making an attack or a full-attack action with a melee weapon. The effects of this feat last until your next turn.",
                  normal: "", special: ""),

            .make("Improved Trip", type: "Combat", prereqs: "Int 13, Combat Expertise",
                  summary: "No AoO when tripping, +2 on trip attempts, +2 to CMD vs trip.",
                  benefit: "You do not provoke an attack of opportunity when performing a trip combat maneuver. In addition, you receive a +2 bonus on checks made to trip a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to trip you.",
                  normal: "", special: ""),

            .make("Improved Disarm", type: "Combat", prereqs: "Int 13, Combat Expertise",
                  summary: "No AoO when disarming, +2 on disarm attempts, +2 to CMD vs disarm.",
                  benefit: "You do not provoke an attack of opportunity when performing a disarm combat maneuver. In addition, you receive a +2 bonus on checks made to disarm a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to disarm you.",
                  normal: "", special: ""),

            .make("Spell Focus", type: "General", prereqs: "",
                  summary: "+1 to the DC for saving throws against spells from chosen school.",
                  benefit: "Add +1 to the Difficulty Class for all saving throws against spells from the school of magic you select.",
                  normal: "", special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new school of magic."),

            .make("Greater Spell Focus", type: "General", prereqs: "Spell Focus",
                  summary: "+1 more to the DC for saving throws in chosen school (total +2).",
                  benefit: "Add +1 to the Difficulty Class for all saving throws against spells from the school of magic you select. This bonus stacks with the bonus from Spell Focus.",
                  normal: "", special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new school of magic to which you have already applied the Spell Focus feat."),

            .make("Empower Spell", type: "Metamagic", prereqs: "",
                  summary: "Maximize variable numeric effects of a spell (+2 spell slot).",
                  benefit: "All variable, numeric effects of an empowered spell are increased by half including bonuses to those dice rolls. Saving throws and opposed rolls are not affected, nor are spells without random variables. An empowered spell uses up a spell slot two levels higher than the spell's actual level.",
                  normal: "", special: ""),

            .make("Maximize Spell", type: "Metamagic", prereqs: "",
                  summary: "All variable effects of a spell are maximized (+3 spell slot).",
                  benefit: "All variable, numeric effects of a spell modified by this feat are maximized. Saving throws and opposed rolls are not affected, nor are spells without random variables. A maximized spell uses up a spell slot three levels higher than the spell's actual level. An empowered, maximized spell gains the separate benefits of each feat: the numeric effects of the spell are doubled and maximized.",
                  normal: "", special: ""),

            .make("Quicken Spell", type: "Metamagic", prereqs: "",
                  summary: "Cast a spell as a swift action (+4 spell slot).",
                  benefit: "Casting a quickened spell is a swift action. You can perform another action, even casting another spell, in the same round as you cast a quickened spell. A spell whose casting time is more than 1 round or that requires a full round cannot be quickened. A quickened spell uses up a spell slot four levels higher than the spell's actual level. Casting a quickened spell doesn't provoke an attack of opportunity.",
                  normal: "", special: ""),

            .make("Blind-Fight", type: "Combat", prereqs: "",
                  summary: "Reroll miss chances from concealment; no penalty to adjacent invisible attackers.",
                  benefit: "In melee, every time you miss because of concealment, you can reroll your miss chance percentile roll one time to see if you actually hit. An invisible attacker gets no advantages related to hitting you in melee. That is, you don't lose your Dexterity bonus to Armor Class, and the attacker doesn't get the usual +2 bonus for being invisible. The invisible attacker may still avoid detection and gain a +2 bonus on attack rolls if the creature comes from an unexpected direction.",
                  normal: "", special: ""),

            .make("Improved Critical", type: "Combat", prereqs: "Proficiency with weapon, base attack bonus +8",
                  summary: "Doubles the threat range of a weapon.",
                  benefit: "When using the weapon you selected, your threat range is doubled.",
                  normal: "", special: "You can gain Improved Critical multiple times. The effects do not stack. Each time you take the feat, it applies to a new type of weapon. This effect doesn't stack with any other effect that expands the threat range of a weapon (such as the keen special ability)."),
        ]

        for feat in feats {
            try await db.insertFeat(feat)
        }
    }

    // MARK: - Monsters

    private func seedMonsters() async throws {
        let monsters: [MonsterEntry] = [
            .make("Goblin", cr: "1/3", type: "Humanoid (goblinoid)", size: "Small", alignment: "NE",
                  hp: "6 (1d8+1)", ac: 16, speed: "30 ft.", attacks: "Bite +2 (1d4), or short sword +2 (1d4/19-20)",
                  special: "Darkvision 60 ft., skilled (Ride, Stealth)", environment: "Temperate forest and plains",
                  summary: "Small green-skinned humanoids, cowardly and cruel.",
                  desc: "Goblins are a race of childishly cruel humanoids who are too cowardly to pose a real threat by themselves. Their great numbers, their darkvision, and their habit of striking in packs compensate for their weak individual natures."),

            .make("Orc", cr: "1/3", type: "Humanoid (orc)", size: "Medium", alignment: "CE",
                  hp: "6 (1d8+3)", ac: 13, speed: "30 ft.", attacks: "Falchion +4 (2d4+4/18-20)",
                  special: "Darkvision 60 ft., ferocity", environment: "Temperate mountains and hills",
                  summary: "Savage humanoids with green or gray skin and fierce tusks.",
                  desc: "Orcs are savage humanoids with a reputation for brutality. Proud and warlike, orcs are known for charging into battle without strategy or formation, relying on brute strength and ferocity."),

            .make("Kobold", cr: "1/4", type: "Humanoid (reptilian)", size: "Small", alignment: "LE",
                  hp: "5 (1d8+1)", ac: 15, speed: "30 ft.", attacks: "Spear +1 (1d6-1/×3)",
                  special: "Darkvision 60 ft., light sensitivity, crafty", environment: "Underground",
                  summary: "Tiny reptilian humanoids who favor traps and ambushes.",
                  desc: "Kobolds are a craven reptilian race that claims to be the distant kin of dragons. Kobolds have a deep-seated resentment of gnomes and are known for constructing elaborate traps to overcome their enemies."),

            .make("Skeleton", cr: "1/3", type: "Undead", size: "Medium", alignment: "NE",
                  hp: "4 (1d8)", ac: 16, speed: "30 ft.", attacks: "Broken scimitar +0 (1d6) or claw +0 (1d4+1)",
                  special: "DR 5/bludgeoning, immunity to cold, undead traits",
                  environment: "Any",
                  summary: "An animated skeleton, driven by dark magic.",
                  desc: "Skeletons are the animated bones of the dead, brought to unlife through foul magic. Skeletons are mindless, driven only by the necromancer who created them. They relentlessly attack enemies with claw and bone."),

            .make("Zombie", cr: "1/2", type: "Undead", size: "Medium", alignment: "NE",
                  hp: "12 (2d8+3)", ac: 12, speed: "30 ft.", attacks: "Slam +4 (1d6+4)",
                  special: "DR 5/slashing, undead traits, staggered",
                  environment: "Any",
                  summary: "A shambling corpse reanimated by necromantic energy.",
                  desc: "Zombies are the animated corpses of humanoids, driven by dark magic. They shuffle and moan, driven to destroy the living. Zombies are created through dark necromantic rituals."),

            .make("Dire Wolf", cr: "3", type: "Animal", size: "Large", alignment: "N",
                  hp: "37 (5d8+15)", ac: 14, speed: "50 ft.", attacks: "Bite +6 (1d8+6 plus trip)",
                  special: "Low-light vision, scent, trip",
                  environment: "Cold forests",
                  summary: "A massive wolf the size of a pony.",
                  desc: "Dire wolves are the largest and most powerful wolves that roam the wild. These savage predators hunt in packs, using their trip ability to knock opponents to the ground."),

            .make("Ogre", cr: "3", type: "Humanoid (giant)", size: "Large", alignment: "CE",
                  hp: "30 (4d8+12)", ac: 17, speed: "30 ft.", attacks: "Greatclub +8 (2d8+7)",
                  special: "Low-light vision, darkvision 60 ft.",
                  environment: "Temperate hills and mountains",
                  summary: "A massive, brutal humanoid with skin like stone.",
                  desc: "Ogres are simple, brutal creatures known for their strength and appetite. They are easily bribed with food and treasure, but will also eat those who displease them."),

            .make("Troll", cr: "5", type: "Humanoid (giant)", size: "Large", alignment: "CE",
                  hp: "63 (6d8+36)", ac: 16, speed: "30 ft.", attacks: "2 claws +9 (1d6+6) and bite +4 (1d6+3)",
                  special: "Darkvision 60 ft., low-light vision, regeneration 5 (acid or fire), rend",
                  environment: "Cold mountains",
                  summary: "A horrifying humanoid giant that regenerates all wounds except acid and fire.",
                  desc: "Trolls have no fear of death. They attack without reason and eat everything. Their bodies regenerate nearly any wound, though acid or fire will destroy them permanently."),

            .make("Adult Red Dragon", cr: "15", type: "Dragon (fire)", size: "Huge", alignment: "CE",
                  hp: "250 (20d12+120)", ac: 30, speed: "40 ft., fly 200 ft. (poor)",
                  attacks: "Bite +28 (2d8+14/19-20), 2 claws +26 (2d6+9), 2 wings +23 (1d8+4), tail slap +23 (2d6+13)",
                  special: "Fire immunity, frightful presence, breath weapon (cone of fire 50 ft., 14d10), DR 10/magic",
                  environment: "Warm mountains",
                  summary: "An enormous fire-breathing wyrm of terrifying power.",
                  desc: "Red dragons are the most covetous of all dragons, spending their lives amassing enormous hoards of gold, gems, and other treasures. They are arrogant, dangerous, and destructive."),

            .make("Lich", cr: "12", type: "Undead", size: "Medium", alignment: "Any evil",
                  hp: "112 (15d8+45)", ac: 23, speed: "30 ft.",
                  attacks: "Touch +12 (1d8+5 negative energy plus paralyzing touch)",
                  special: "DR 15/bludgeoning and magic, immunity to cold/electricity/polymorph, spell resistance 20, rejuvenation, paralyzing touch",
                  environment: "Any",
                  summary: "A powerful undead spellcaster who has cheated death through dark rituals.",
                  desc: "A lich is a powerful undead creature who has chosen to transcend death through foul magic. Liches are spellcasters who transformed themselves by creating a phylactery, a magical item that houses their souls."),

            .make("Gelatinous Cube", cr: "3", type: "Ooze", size: "Large", alignment: "N",
                  hp: "50 (4d8+32)", ac: 3, speed: "15 ft.",
                  attacks: "Slam +1 (1d6 plus 1d6 acid plus paralysis)",
                  special: "Acid, engulf, immunity (acid, electricity), paralysis, transparent",
                  environment: "Underground dungeons",
                  summary: "A transparent cube of acid that fills dungeon corridors.",
                  desc: "Gelatinous cubes are mindless oozes that fill dungeon corridors as they hunt for organic matter to absorb. They are almost perfectly transparent, making them exceptionally hard to notice."),

            .make("Mimic", cr: "4", type: "Aberration", size: "Medium", alignment: "N",
                  hp: "52 (7d8+21)", ac: 15, speed: "10 ft.",
                  attacks: "Slam +8 (1d8+4 plus adhesive)",
                  special: "Adhesive, crush, mimic shape, darkvision 60 ft.",
                  environment: "Underground",
                  summary: "A shapeshifting hunter that resembles a treasure chest.",
                  desc: "Mimics are shapechanging predators able to alter their form to disguise their bodies as inanimate objects. Commonly taking the form of chests or door frames, they lure adventurers with the promise of easy loot before attacking."),

            .make("Owlbear", cr: "4", type: "Magical Beast", size: "Large", alignment: "N",
                  hp: "47 (5d10+20)", ac: 15, speed: "30 ft.",
                  attacks: "2 claws +9 (1d6+5) and bite +4 (1d6+2)",
                  special: "Low-light vision, darkvision 60 ft., grab, scent",
                  environment: "Temperate forests",
                  summary: "A ferocious beast with the body of a bear and the head of an owl.",
                  desc: "Owlbears are fierce predatory creatures combining features of bears and giant owls. They are notoriously aggressive and territorial, attacking most creatures on sight."),

            .make("Rust Monster", cr: "3", type: "Aberration", size: "Medium", alignment: "N",
                  hp: "27 (5d8+5)", ac: 18, speed: "40 ft.",
                  attacks: "Antennae touch +3 (rust) and bite +1 (1d3)",
                  special: "Darkvision 60 ft., scent, rust, smell metal",
                  environment: "Underground",
                  summary: "A creature that dissolves metal on touch.",
                  desc: "Rust monsters are strange creatures that feed on metal. When they touch metal, it rapidly corrodes and falls apart. Adventurers fear these creatures because of the threat they pose to weapons and armor."),

            .make("Basilisk", cr: "5", type: "Magical Beast", size: "Medium", alignment: "N",
                  hp: "52 (7d10+14)", ac: 16, speed: "20 ft.",
                  attacks: "Bite +9 (1d8+3)",
                  special: "Darkvision 60 ft., low-light vision, petrifying gaze",
                  environment: "Warm deserts and hills",
                  summary: "A legendary creature whose gaze can turn flesh to stone.",
                  desc: "The basilisk is a reptilian predator whose gaze causes living creatures to turn to stone. Basilisks hunt by ambush, relying on their powerful gaze attack to petrify prey before finishing them off."),

            .make("Medusa", cr: "7", type: "Monstrous Humanoid", size: "Medium", alignment: "LE",
                  hp: "76 (8d10+32)", ac: 15, speed: "30 ft.",
                  attacks: "Longbow +14/+9 (1d8/×3) or dagger +10/+5 (1d4/19-20) or snakes +9 (1d4 plus poison)",
                  special: "Darkvision 60 ft., petrifying gaze, poison (Con damage)",
                  environment: "Temperate marshes and underground",
                  summary: "A deadly woman with snakes for hair whose gaze can petrify.",
                  desc: "A medusa is a monstrous creature that takes on the appearance of a beautiful human woman, though her hair is actually composed of venomous serpents. Her gaze can turn flesh to stone."),

            .make("Manticore", cr: "5", type: "Magical Beast", size: "Large", alignment: "LE",
                  hp: "57 (6d10+24)", ac: 17, speed: "30 ft., fly 50 ft. (clumsy)",
                  attacks: "2 claws +9 (2d4+5) and bite +9 (1d8+5) and tail spikes +6 (1d8+2)",
                  special: "Darkvision 60 ft., low-light vision, scent, tail spikes",
                  environment: "Warm hills and marshes",
                  summary: "A winged beast with a human face, lion body, and scorpion tail.",
                  desc: "Manticores are voracious predators that combine the body of a lion with leathery wings and a humanoid head. Their most feared attack is a volley of razor-sharp tail spikes."),

            .make("Wyvern", cr: "7", type: "Dragon", size: "Large", alignment: "N",
                  hp: "73 (7d12+28)", ac: 18, speed: "20 ft., fly 60 ft. (poor)",
                  attacks: "Bite +12 (2d6+7) and sting +12 (1d6+7 plus poison) and 2 wings +7 (1d8+3)",
                  special: "Darkvision 60 ft., low-light vision, scent, poison",
                  environment: "Temperate hills and mountains",
                  summary: "A cousin of true dragons with no forelimbs but a venomous sting.",
                  desc: "Wyverns are aggressive and violent cousins of true dragons. They swoop down on prey and use their venomous stingers to inject lethal poison before tearing the creature apart with their powerful jaws."),

            .make("Balor", cr: "20", type: "Outsider (chaotic, demon, evil, extraplanar)", size: "Huge", alignment: "CE",
                  hp: "370 (20d10+260)", ac: 35, speed: "40 ft., fly 90 ft. (good)",
                  attacks: "+2 vorpal longsword +33/+28/+23/+18 (3d6+18/17-20/×2) and +2 flaming whip +30 (1d4+10 plus entangle plus 1d6 fire)",
                  special: "DR 15/cold iron and good, spell-like abilities, summon demons, whip, vorpal sword, death throes (200 hp in 100 ft., DC 36 Reflex half)",
                  environment: "Abyss",
                  summary: "A towering demon of tremendous power, second only to demon lords.",
                  desc: "Balors stand at the pinnacle of demonic hierarchy below only the demon lords themselves. They are generals of the Abyss, mighty warriors of chaos and evil. A balor's burning body is draped in fire and crackling energy."),

            .make("Beholder", cr: "13", type: "Aberration", size: "Large", alignment: "LE",
                  hp: "184 (16d8+112)", ac: 26, speed: "0 ft., fly 20 ft. (good)",
                  attacks: "Eye rays +14 ranged touch and bite +15 (2d4+4)",
                  special: "All-around vision, antimagic cone, ten eye rays (charm person, charm monster, sleep, flesh to stone, disintegrate, fear, slow, wound, telekinesis, death ray), flight",
                  environment: "Underground",
                  summary: "A floating orb covered in deadly magical eyes.",
                  desc: "The dreaded beholder is an orb-shaped creature with a vast array of magical eyes. The central eye emits an antimagic ray while the smaller eyestalks fire various magical rays. Beholders are megalomaniacal creatures that consider themselves to be the pinnacle of evolution."),
        ]

        for monster in monsters {
            try await db.insertMonster(monster)
        }
    }

    // MARK: - Items

    private func seedItems() async throws {
        let items: [ItemEntry] = [
            .make("Longsword", price: "15 gp", weight: "4 lbs.", slot: "None (held)", aura: "None", cl: 0,
                  type: "Weapon", summary: "The standard one-handed slashing weapon.",
                  desc: "This sword is the weapon of choice for many adventurers. A versatile weapon that deals 1d8 slashing damage, the longsword is prized for its balance between offense and defense."),

            .make("Greatsword", price: "50 gp", weight: "8 lbs.", slot: "None (held)", aura: "None", cl: 0,
                  type: "Weapon", summary: "A massive two-handed sword dealing 2d6 damage.",
                  desc: "The greatsword is a massive, powerful blade designed to be wielded with two hands. It deals tremendous damage but requires both hands to wield effectively."),

            .make("Longbow", price: "75 gp", weight: "3 lbs.", slot: "None (held)", aura: "None", cl: 0,
                  type: "Weapon", summary: "A powerful ranged weapon with 100 ft. range increment.",
                  desc: "The longbow is a tall bow that requires significant strength to draw. It is the weapon of choice for many archers and hunters, capable of firing arrows to great distances with power and accuracy."),

            .make("Chain Mail", price: "150 gp", weight: "40 lbs.", slot: "Body", aura: "None", cl: 0,
                  type: "Armor", summary: "Medium armor granting +6 AC with -5 armor check penalty.",
                  desc: "Chain mail is made of interlocking metal rings. It includes a layer of quilted fabric underneath to prevent chafing and to cushion the impact of blows. It grants a +6 armor bonus to AC."),

            .make("Full Plate", price: "1,500 gp", weight: "50 lbs.", slot: "Body", aura: "None", cl: 0,
                  type: "Armor", summary: "Heavy armor granting +9 AC, slowest and most protective mundane armor.",
                  desc: "Full plate is the most protective mundane armor available. This heavy suit of metal armor is crafted with precision to cover the entire body. It grants a +9 armor bonus to AC."),

            .make("Ring of Protection +1", price: "2,000 gp", weight: "—", slot: "Ring", aura: "Faint abjuration", cl: 5,
                  type: "Ring", summary: "Grants +1 deflection bonus to AC.",
                  desc: "This ring offers continual magical protection in the form of a +1 deflection bonus to AC. The ring is a simple metal band inscribed with runes of protection."),

            .make("Cloak of Resistance +1", price: "1,000 gp", weight: "1 lb.", slot: "Shoulders", aura: "Faint abjuration", cl: 5,
                  type: "Wondrous Item", summary: "+1 resistance bonus to all saving throws.",
                  desc: "These cloaks, of various styles and materials, grant their wearer a +1 resistance bonus on all saving throws (Fortitude, Reflex, and Will)."),

            .make("Bag of Holding (Type I)", price: "2,500 gp", weight: "15 lbs.", slot: "None", aura: "Moderate conjuration", cl: 9,
                  type: "Wondrous Item", summary: "Holds up to 250 lbs. in a space larger on the inside.",
                  desc: "This appears to be a common cloth sack about 2 feet by 4 feet in size. The bag of holding opens into a nondimensional space: its inside is larger than its outside dimensions. Regardless of what is put into the bag, it weighs a fixed amount."),

            .make("Boots of Speed", price: "12,000 gp", weight: "1 lb.", slot: "Feet", aura: "Moderate transmutation", cl: 10,
                  type: "Wondrous Item", summary: "Haste for up to 10 rounds per day.",
                  desc: "These boots allow the wearer to act as though affected by a haste spell once per day. The boots can be used for up to 10 rounds per day. These rounds need not be consecutive."),

            .make("Amulet of Natural Armor +1", price: "2,000 gp", weight: "—", slot: "Neck", aura: "Faint transmutation", cl: 5,
                  type: "Wondrous Item", summary: "+1 natural armor bonus to AC.",
                  desc: "This amulet, usually crafted from bone or animal parts, grants its wearer a +1 enhancement bonus to his natural armor bonus. Unlike most enhancement bonuses, this enhancement bonus stacks with the target's existing natural armor bonus."),

            .make("Headband of Vast Intelligence +2", price: "4,000 gp", weight: "1 lb.", slot: "Headband", aura: "Moderate transmutation", cl: 8,
                  type: "Wondrous Item", summary: "+2 enhancement bonus to Intelligence.",
                  desc: "This intricate headband is decorated with gems and fine metalwork. It grants the wearer a +2 enhancement bonus to Intelligence. The wearer also gains skill ranks based on the bonus."),

            .make("Belt of Giant Strength +2", price: "4,000 gp", weight: "1 lb.", slot: "Belt", aura: "Moderate transmutation", cl: 8,
                  type: "Wondrous Item", summary: "+2 enhancement bonus to Strength.",
                  desc: "This wide belt is decorated with a giant's face and grants the wearer a +2 enhancement bonus to Strength."),

            .make("Handy Haversack", price: "2,000 gp", weight: "5 lbs.", slot: "None", aura: "Moderate conjuration", cl: 9,
                  type: "Wondrous Item", summary: "A backpack with instant-access extradimensional spaces.",
                  desc: "A backpack of this sort appears to be a well-made, well-crafted backpack. It has two side pouches, each of which can hold up to 20 pounds of material (2 cubic feet in volume). The large central pouch can hold up to 80 pounds of material (8 cubic feet in volume). The weight of items in the haversack does not count against the wearer's normal weight limits. The user can retrieve any item from the haversack as a move action, without provoking attacks of opportunity."),

            .make("Wand of Cure Light Wounds", price: "750 gp", weight: "—", slot: "None (held)", aura: "Faint conjuration", cl: 1,
                  type: "Wand", summary: "50 charges of cure light wounds (cures 1d8+1 HP).",
                  desc: "This slender wand, crafted from white wood, contains 50 charges of cure light wounds, each of which heals 1d8+1 points of damage. The wand uses a caster level of 1st."),

            .make("Longsword +1", price: "2,315 gp", weight: "4 lbs.", slot: "None (held)", aura: "Faint evocation", cl: 3,
                  type: "Weapon", summary: "A magically enhanced longsword with +1 to attack and damage.",
                  desc: "This longsword has a +1 enhancement bonus on attack and damage rolls. The blade glows faintly when drawn."),
        ]

        for item in items {
            try await db.insertItem(item)
        }
    }

    // MARK: - Races

    private func seedRaces() async throws {
        let races: [RaceEntry] = [
            .make("Human", size: "Medium", speed: "30 ft.", mods: "+2 to one ability score (player's choice)",
                  traits: ["Bonus Feat", "Skilled (+1 skill rank per level)", "Heart of Many Lands"],
                  langs: ["Common", "Any (bonus)"],
                  summary: "The most adaptable and numerous of all races.",
                  desc: "Humans are the most adaptable and ambitious of the common races. They have a wide range of physical characteristics and personality traits. Humans are known for their drive and versatility; they are natural leaders and explorers, equally comfortable in all environments."),

            .make("Dwarf", size: "Medium", speed: "20 ft. (never reduced by armor/encumbrance)", mods: "+2 Constitution, +2 Wisdom, -2 Charisma",
                  traits: ["Darkvision 60 ft.", "Defensive Training (+4 dodge AC vs giants)", "Greed", "Hatred (+1 attack vs orcs and goblinoids)", "Hardy (+2 vs poison/spells)", "Stability (+4 CMD vs bull rush/trip on ground)", "Stonecunning", "Weapon Familiarity (dwarven)"],
                  langs: ["Common", "Dwarven"],
                  summary: "Stocky mountain-dwelling craftsmen and warriors of proud lineage.",
                  desc: "Dwarves are a stoic but stern race, ensconced in cities carved from the hearts of mountains and fiercely determined to repel the depredations of savage races like orcs and goblins. More than any other race, the dwarves have acquired a reputation as expert artisans, miners, and warriors."),

            .make("Elf", size: "Medium", speed: "30 ft.", mods: "+2 Dexterity, +2 Intelligence, -2 Constitution",
                  traits: ["Elven Immunities (immune sleep, +2 vs enchantments)", "Elven Magic (+2 to overcome SR, Spellcraft)", "Keen Senses (+2 Perception)", "Low-Light Vision", "Weapon Familiarity (elven curve blade, etc.)"],
                  langs: ["Common", "Elven"],
                  summary: "Tall, long-lived humanoids known for grace and magical affinity.",
                  desc: "The long-lived elves are children of the natural world, similar in many superficial ways to fey creatures, yet different as well. Elves value art, music, nature, and their own emotional experiences, and tend to be rather focused on themselves."),

            .make("Gnome", size: "Small", speed: "20 ft.", mods: "+2 Constitution, +2 Charisma, -2 Strength",
                  traits: ["Defensive Training (+4 dodge AC vs giants)", "Gnome Magic (spell-like abilities)", "Hatred", "Illusion Resistance (+2 saves vs illusions)", "Keen Senses (+2 Perception)", "Low-Light Vision", "Obsessive (+2 one Craft or Profession)", "Weapon Familiarity (gnome)"],
                  langs: ["Common", "Gnome", "Sylvan"],
                  summary: "Small curious humanoids with a love for the arcane and the unusual.",
                  desc: "Gnomes are small, enthusiastic, and imaginative folk who constantly seek out excitement and new experiences. They are often prone to obsession and delightful quirks. Known for their love of invention, gnomes are skilled tinkerers."),

            .make("Half-Elf", size: "Medium", speed: "30 ft.", mods: "+2 to one ability score",
                  traits: ["Adaptability (Skill Focus bonus feat)", "Elf Blood", "Elven Immunities", "Keen Senses", "Low-Light Vision", "Multitalented (2 favored classes)"],
                  langs: ["Common", "Elven", "Any (bonus)"],
                  summary: "Hybrid of human and elf, combining the strengths of both.",
                  desc: "Half-elves stand apart from both humans and elves, and their mixed heritage grants them a wealth of diverse talents. Half-elves have access to the adaptability of humans as well as the mystical affinity of elves."),

            .make("Half-Orc", size: "Medium", speed: "30 ft.", mods: "+2 to one ability score",
                  traits: ["Darkvision 60 ft.", "Intimidating (+2 Intimidate)", "Orc Blood", "Orc Ferocity (once/day fight at -1 HP)", "Weapon Familiarity (orc weapons)"],
                  langs: ["Common", "Orc"],
                  summary: "Humans of orcish descent, combining savage strength with human adaptability.",
                  desc: "Half-orcs are a race of battered and bruised peoples, born from the crossing of orcs and humans. They often face prejudice from both sides of their heritage, yet their strength and resilience make them formidable adventurers."),

            .make("Halfling", size: "Small", speed: "20 ft.", mods: "+2 Dexterity, +2 Charisma, -2 Strength",
                  traits: ["Fearless (+2 vs fear)", "Halfling Luck (+1 all saves)", "Keen Senses (+2 Perception)", "Sure-Footed (+2 Acrobatics/Climb)", "Weapon Familiarity (halfling weapons)"],
                  langs: ["Common", "Halfling"],
                  summary: "Small, cheerful folk with remarkable luck and dexterity.",
                  desc: "Halflings are clever and resourceful survivors. They are notoriously difficult to daunt, and their cheerful outlook and luck seem to carry them through the most dangerous of situations. Though small, halflings have remarkable dexterity and extraordinary luck."),
        ]

        for race in races {
            try await db.insertRace(race)
        }
    }

    // MARK: - Rules

    private func seedRules() async throws {
        let rules: [RuleEntry] = [
            .makeRule("Actions in Combat", cat: "Combat",
                      summary: "Overview of action types available during combat.",
                      body: """
ACTIONS IN COMBAT

In each round, you may take one of the following combinations:
• Standard + Move + Swift + Free actions
• Full-Round + Swift + Free actions

STANDARD ACTION: Make one attack, cast a spell with 1 standard action cast time, use an activated item, use a special ability.

MOVE ACTION: Move up to your speed, draw/sheathe a weapon, pick up an item, open a door, mount/dismount.

FULL-ROUND ACTION: Make a full attack (multiple attacks at all BAB increments), charge, run (4× speed).

SWIFT ACTION: Cast a quickened spell, use some class abilities (1 per round).

IMMEDIATE ACTION: React to another event, even on another's turn (costs next round's swift action).

FREE ACTION: Drop an item, fall prone, speak a few words (DM discretion).
"""),

            .makeRule("Conditions", cat: "Combat",
                      summary: "All standard conditions and their effects.",
                      body: """
STANDARD CONDITIONS

BLINDED: -2 AC, loses Dex bonus to AC, -4 Strength/Dex checks, 50% miss chance, -4 Perception.
CONFUSED: Roll d% each round: 1–25 act normally, 26–50 do nothing, 51–75 attack nearest creature, 76–100 attack self.
COWERING: Cannot act, lose Dex to AC, attackers get +2 to hit.
DAZED: Can take no actions (but still threatens).
DAZZLED: -1 on attack rolls and sight-based Perception checks.
DEAFENED: -4 on initiative, 20% spell failure for verbal components, -4 Perception.
ENTANGLED: Cannot move (or halved if spell); -2 attack, -4 Dex; concentration DC 15+spell level.
EXHAUSTED: Halved movement, -6 Str and Dex; becomes fatigued after 1 hour of rest.
FASCINATED: Stands/sits quietly, -4 Perception vs other threats, cannot use reactions.
FATIGUED: -2 Str and Dex, cannot run or charge; rest 8 hours to recover.
FLAT-FOOTED: Cannot use reactions, loses Dex bonus to AC (if positive).
FRIGHTENED: -2 attacks/saves/skills, must flee from source.
GRAPPLED: Cannot move, -4 Dex, -2 attack and CMB except to escape grapple.
HELPLESS: AC = 5 + size mod, attackers may coup de grace.
INVISIBLE: +2 bonus on attacks, target loses Dex bonus to AC.
NAUSEATED: Cannot attack, cast, concentrate; single move action only.
PANICKED: Drop held items, flee at top speed for duration.
PARALYZED: Str and Dex effectively 0, falls prone, helpless.
PETRIFIED: Creature and carried items turn to stone; aware but cannot act.
PINNED: Helpless but still conscious; -4 AC, cannot take actions but attempt to escape.
PRONE: -4 melee attacks, -4 AC vs melee, +4 AC vs ranged; move action to stand.
SHAKEN: -2 attacks/saves/skills/ability checks.
SICKENED: -2 attacks/damage/saves/skill/ability checks.
STAGGERED: Only one move or standard action per round.
STUNNED: Cannot act, drops all held items, loses Dex to AC, attackers get +2 to hit.
UNCONSCIOUS: Knocked out; helpless.
"""),

            .makeRule("Saving Throws", cat: "Magic",
                      summary: "How to make and calculate saving throws.",
                      body: """
SAVING THROWS

TYPES:
• Fortitude (Fort): Resists physical damage (poison, disease, death effects). Key ability: Constitution.
• Reflex (Ref): Dodges area effects. Key ability: Dexterity.
• Will: Resists mental attacks (enchantments, illusions). Key ability: Wisdom.

FORMULA: d20 + base save bonus + key ability modifier + resistance bonus + other modifiers vs. DC

RESULT ON SAVE: Unless stated otherwise, a successful save halves damage or negates the effect.

SAVE DCs:
• Spell Save DC = 10 + spell level + caster's casting stat modifier
• Alchemist extracts use Intelligence
• Clerics/Druids use Wisdom; Bards/Sorcerers use Charisma; Wizards use Intelligence

SPECIAL SAVES:
• Fortitude partial: Even if you save, you take some effect.
• Will harmless: The spell is beneficial; you can choose to fail the save.
• Resist fire (ongoing): Add fire resistance to the save amount, not the damage roll.
"""),

            .makeRule("Ability Scores", cat: "Core Rules",
                      summary: "The six ability scores and what they govern.",
                      body: """
ABILITY SCORES

The six core ability scores are:

STRENGTH (Str): Melee attack rolls, melee damage rolls, Strength checks, carrying capacity.
DEXTERITY (Dex): Ranged attack rolls, AC, Reflex saves, Dex-based skills.
CONSTITUTION (Con): Hit points (+1 HP per HD per Con mod), Fortitude saves, concentration checks.
INTELLIGENCE (Int): Skills per level, Intelligence skills, arcane spell DCs.
WISDOM (Wis): Will saves, Wisdom skills, divine spell DCs, healing item use.
CHARISMA (Cha): Face skills, channel energy, Charisma spell DCs.

ABILITY MODIFIER = (Score - 10) / 2, rounded down.
Score 10-11: +0 | 12-13: +1 | 14-15: +2 | 16-17: +3 | 18-19: +4 | 20-21: +5

ABILITY DAMAGE vs DRAIN:
• Damage is temporary, healed by rest.
• Drain is permanent, requires restoration magic.
• 0 in a score = incapacitated (Str/Dex/Con = death or unconscious).
"""),

            .makeRule("Skill Checks", cat: "Skills",
                      summary: "How skill checks are made and how difficulty classes work.",
                      body: """
SKILL CHECKS

FORMULA: d20 + ranks + ability modifier + misc bonuses vs. DC

DIFFICULTY CLASSES (DC):
• Trivial: DC 5
• Easy: DC 10
• Average: DC 15
• Tough: DC 20
• Challenging: DC 25
• Formidable: DC 30
• Heroic: DC 35

TRAINED-ONLY SKILLS: Require at least 1 rank to attempt. Examples: Disable Device, Knowledge (most), Spellcraft, Use Magic Device.

TAKE 10: When not in immediate danger or distracted, you may take 10 instead of rolling. Result = 10 + modifier.

TAKE 20: Spend 20× the normal time and assume you rolled a 20. Only possible when there is no penalty for failure. Result = 20 + modifier.

AID ANOTHER: Help a friend with a skill check. Roll DC 10; if successful, they get +2 on their check.
"""),

            .makeRule("Experience Points and Leveling", cat: "Core Rules",
                      summary: "XP thresholds and advancement rates by level.",
                      body: """
EXPERIENCE POINT TABLE

SLOW PROGRESSION:
1→2: 3,000 XP | 2→3: 7,500 | 3→4: 14,000 | 4→5: 23,000 | 5→6: 35,000
6→7: 53,000 | 7→8: 77,000 | 8→9: 115,000 | 9→10: 160,000 | 10→11: 235,000
11→12: 330,000 | 12→13: 475,000 | 13→14: 665,000 | 14→15: 955,000 | 15→16: 1,350,000
16→17: 1,900,000 | 17→18: 2,700,000 | 18→19: 3,850,000 | 19→20: 5,350,000

MEDIUM PROGRESSION:
1→2: 2,000 XP | 2→3: 5,000 | 3→4: 9,000 | 4→5: 15,000 | 5→6: 23,000
6→7: 35,000 | 7→8: 51,000 | 8→9: 75,000 | 9→10: 105,000 | 10→11: 155,000
11→12: 220,000 | 12→13: 315,000 | 13→14: 445,000 | 14→15: 635,000 | 15→16: 890,000
16→17: 1,300,000 | 17→18: 1,800,000 | 18→19: 2,550,000 | 19→20: 3,600,000

FAST PROGRESSION:
1→2: 1,300 XP | 2→3: 3,300 | 3→4: 6,000 | 4→5: 10,000 | 5→6: 15,000
6→7: 23,000 | 7→8: 34,000 | 8→9: 50,000 | 9→10: 71,000 | 10→11: 105,000
11→12: 145,000 | 12→13: 210,000 | 13→14: 295,000 | 14→15: 425,000 | 15→16: 600,000
16→17: 850,000 | 17→18: 1,200,000 | 18→19: 1,700,000 | 19→20: 2,400,000
"""),

            .makeRule("Carrying Capacity", cat: "Core Rules",
                      summary: "How much a character can carry based on Strength.",
                      body: """
CARRYING CAPACITY

Light Load: Move normally, no penalties.
Medium Load: Speed -10 ft., -3 armor check penalty, max Dex to AC +3.
Heavy Load: Speed -20 ft. (min 5 ft.), -6 armor check penalty, max Dex to AC +1.
Lift Over Head: Max load (same as heavy load max).
Lift Off Ground: 2× heavy load max (only lift, cannot move).
Push or Drag: 5× heavy load max.

STRENGTH → LIGHT / MEDIUM / HEAVY (lbs.):
Str 1: 3/6/10 | Str 5: 25/50/75 | Str 10: 50/100/150 | Str 13: 75/150/225
Str 15: 100/200/300 | Str 16: 115/230/345 | Str 18: 150/300/450
Str 20: 200/400/600 | Str 25: 400/800/1,200 | Str 29: 700/1,400/2,100

For Str > 29, multiply the Str 29 values by 4 for each 10-point increase.
Quadrupeds: ×1.5 capacity. Large creatures: ×2. Huge: ×4. Gargantuan: ×8. Colossal: ×16.
"""),

            .makeRule("Movement", cat: "Combat",
                      summary: "Movement rules including difficult terrain and special movement.",
                      body: """
MOVEMENT

BASE SPEEDS: Most races 30 ft. | Dwarves/halflings/gnomes 20 ft.

MOVE ACTION: Move up to your speed. Provokes attacks of opportunity.
FULL-ROUND MOVE: Move up to 2× speed. Provokes attacks of opportunity.
CHARGE: Move 2× speed in straight line, attack (+2 to hit, -2 AC until next turn). Must move at least 10 ft.
RUN: Move up to 4× speed (3× in heavy armor). Can't use Dex bonus to AC.

DIFFICULT TERRAIN: Costs 2 ft. of movement per 1 ft. of terrain (double movement cost).

MOVEMENT THROUGH ALLIES: You can move through a square occupied by an ally.
MOVEMENT THROUGH ENEMIES: Must succeed on Acrobatics check (DC = 5 + enemy CMD) or make a 5-ft. step. Provoking attack of opportunity otherwise.

5-FOOT STEP: You can take a single 5-ft. step as a free action on your turn without provoking attacks of opportunity. Cannot take a 5-ft. step if you have already moved this turn.
"""),

            .makeRule("Cover and Concealment", cat: "Combat",
                      summary: "How cover and concealment affect combat.",
                      body: """
COVER AND CONCEALMENT

COVER (Physical obstacles):
• Soft cover (other creatures): +4 AC bonus.
• Partial cover (behind a wall): +2 AC, +1 Reflex save.
• Standard cover (half your body behind obstacle): +4 AC, +2 Reflex save.
• Improved cover (firing through arrow slit): +8 AC, +4 Reflex save, improved evasion.
• Total cover: Cannot be targeted by attacks or many spells.

CONCEALMENT (Visual obscurement):
• Concealment (smoke, dim light): 20% miss chance.
• Total concealment (magical darkness, invisible): 50% miss chance.

FIRING INTO MELEE: -4 penalty to ranged attack rolls (negated by Precise Shot feat).

FLANKING: Two allies adjacent to an enemy and on opposite sides grant +2 to attack rolls.
"""),

            .makeRule("Spell Components", cat: "Magic",
                      summary: "The types of spell components and their rules.",
                      body: """
SPELL COMPONENTS

V (Verbal): The spell requires speaking a command word or incantation. If you cannot speak, you cannot cast the spell. Deafness does not prevent verbal components.

S (Somatic): The spell requires specific hand movements. You must have at least one hand free. Wearing armor may impose arcane spell failure chance.

M (Material): A physical component that is consumed. Usually worth less than 1 gp and can be assumed to be on hand. Expensive components (noted with gp value) must be purchased.

F (Focus): A non-consumed physical item required for the spell. Must be in hand or worn.

DF (Divine Focus): For divine spellcasters, a holy symbol (or unholy symbol). For arcane, a focus as noted.

XP (Experience Point): Some powerful spells consume XP. This is rare in Pathfinder (most converted to gp costs).

SPELL FAILURE: Arcane casters in armor risk spell failure (percentage chance). Divine casters are not affected by armor spell failure for their spells. Spells with no somatic component ignore spell failure.
"""),
        ]

        for rule in rules {
            try await db.insertRule(rule)
        }
    }
}

// MARK: - Factory Helpers

private extension SpellEntry {
    static func make(_ title: String, school: String, levels: String, castingTime: String, components: String,
                     range: String, duration: String, savingThrow: String, sr: Bool, summary: String, desc: String) -> SpellEntry {
        SpellEntry(id: UUID(), title: title, summary: summary, isPremium: false,
                   school: school, levels: levels, castingTime: castingTime, components: components,
                   range: range, duration: duration, savingThrow: savingThrow, spellResistance: sr,
                   description: desc, source: "Core Rulebook")
    }
}

private extension ClassEntry {
    static func make(_ title: String, hitDie: String, skillRanks: Int, bab: String,
                     fort: String, ref: String, will: String, skills: [String],
                     summary: String, desc: String) -> ClassEntry {
        ClassEntry(id: UUID(), title: title, summary: summary, isPremium: false,
                   hitDie: hitDie, skillRanks: skillRanks, baseAttackBonus: bab,
                   fortSave: fort, refSave: ref, willSave: will, classSkills: skills,
                   description: desc, source: "Core Rulebook")
    }
}

private extension FeatEntry {
    static func make(_ title: String, type: String, prereqs: String, summary: String,
                     benefit: String, normal: String, special: String) -> FeatEntry {
        FeatEntry(id: UUID(), title: title, summary: summary, isPremium: false,
                  prerequisites: prereqs, benefit: benefit, normal: normal, special: special,
                  featType: type, source: "Core Rulebook")
    }
}

private extension MonsterEntry {
    static func make(_ title: String, cr: String, type: String, size: String, alignment: String,
                     hp: String, ac: Int, speed: String, attacks: String, special: String,
                     environment: String, summary: String, desc: String) -> MonsterEntry {
        MonsterEntry(id: UUID(), title: title, summary: summary, isPremium: false,
                     challengeRating: cr, type: type, size: size, alignment: alignment,
                     hitPoints: hp, armorClass: ac, speed: speed, attacks: attacks,
                     specialAbilities: special, environment: environment, description: desc,
                     source: "Bestiary")
    }
}

private extension ItemEntry {
    static func make(_ title: String, price: String, weight: String, slot: String, aura: String,
                     cl: Int, type: String, summary: String, desc: String) -> ItemEntry {
        ItemEntry(id: UUID(), title: title, summary: summary, isPremium: false,
                  price: price, weight: weight, slot: slot, aura: aura,
                  casterLevel: cl, itemType: type, description: desc, source: "Core Rulebook")
    }
}

private extension RaceEntry {
    static func make(_ title: String, size: String, speed: String, mods: String,
                     traits: [String], langs: [String], summary: String, desc: String) -> RaceEntry {
        RaceEntry(id: UUID(), title: title, summary: summary, isPremium: false,
                  size: size, speed: speed, abilityModifiers: mods, racialTraits: traits,
                  languages: langs, description: desc, source: "Core Rulebook")
    }
}

private extension RuleEntry {
    static func makeRule(_ title: String, cat: String, summary: String, body: String) -> RuleEntry {
        RuleEntry(id: UUID(), title: title, summary: summary, isPremium: false,
                  category: cat, body: body, source: "Core Rulebook")
    }
}
