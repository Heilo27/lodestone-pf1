import Foundation

extension SeedDataBuilder {
    func seedRules() async throws {
        let rules: [RuleEntry] = [

            // MARK: - Combat

            .make("Combat Sequence",
                  category: "Combat",
                  body: """
                  Each round represents 6 seconds in the game world. A round is divided into turns in initiative order. At the start of combat, each participant rolls initiative (1d20 + Dexterity modifier). Creatures act in order from highest initiative to lowest. Ties are broken by comparing Dexterity scores; if still tied, the players decide or roll off. Each round, a creature may take one standard action, one move action, and one swift action, plus any number of free actions. Alternatively, a creature may forgo its standard action and take an additional move action.
                  """,
                  summary: "Overview of how combat rounds and initiative work.",
                  source: "Core Rulebook"),

            .make("Actions in Combat",
                  category: "Combat",
                  body: """
                  In each round of combat, each creature takes a turn in initiative order. On your turn, you may take the following types of actions:

                  STANDARD ACTION: An attack, casting most spells, or using most special abilities.
                  MOVE ACTION: Moving up to your speed, drawing a weapon, or picking up an item.
                  FULL-ROUND ACTION: Making a full attack, running, or charging. Takes the entire round.
                  SWIFT ACTION: Extremely fast actions such as casting a swift spell. Limit one per round.
                  FREE ACTION: Negligible actions such as dropping an item, speaking a few words, or releasing a held item.
                  IMMEDIATE ACTION: Actions that can be taken even when it is not your turn. Counts as your next turn's swift action.

                  You may convert your standard action into a move action. You may take two move actions per round instead of a standard and a move action.
                  """,
                  summary: "Describes standard, move, swift, free, and immediate action types.",
                  source: "Core Rulebook"),

            .make("Attack Rolls",
                  category: "Combat",
                  body: """
                  To make an attack roll, roll 1d20 and add your attack bonus. If the result equals or exceeds the target's Armor Class (AC), the attack hits. Your base attack bonus is determined by your class and level. You add your Strength modifier to melee attack rolls and your Dexterity modifier to ranged attack rolls. Various feats, spells, and conditions can further modify your attack roll.

                  A natural 20 on the d20 always hits and is a potential critical hit — roll again to confirm. If the confirmation roll also hits the target's AC, the critical hit is confirmed and additional damage is dealt according to the weapon's critical multiplier. A natural 1 always misses regardless of modifiers.
                  """,
                  summary: "How to make an attack roll and what constitutes a critical hit.",
                  source: "Core Rulebook"),

            .make("Damage",
                  category: "Combat",
                  body: """
                  When you hit with a weapon, roll the weapon's damage dice and add your ability modifier. For melee weapons, add your Strength modifier. For ranged weapons, add your Strength modifier only if the weapon has the thrown property. Two-handed melee weapons add 1.5× your Strength modifier to damage. Off-hand weapons add only 0.5× your Strength modifier (minimum 0 added if positive).

                  Damage reduces a creature's hit points. At 0 or fewer hit points, a creature is disabled (if at exactly 0) or dying (if below 0). Damage types include bludgeoning, piercing, and slashing, and may be fire, cold, electricity, acid, sonic, or other energy types. Damage reduction (DR) can reduce some physical damage. Energy resistance reduces energy damage by a set amount per attack.
                  """,
                  summary: "How to apply weapon damage and understand damage types.",
                  source: "Core Rulebook"),

            .make("Hit Points and Healing",
                  category: "Combat",
                  body: """
                  Hit points (HP) represent a creature's ability to withstand damage. At maximum HP, a creature is uninjured. At 1 HP, a creature is alive but near death. At exactly 0 HP, a creature is disabled and can take only a single standard or move action each round; taking standard actions causes 1 damage. Below 0 HP, a creature is dying and falls unconscious; each round it loses 1 additional HP until it stabilizes or dies.

                  A dying creature must succeed on a DC 10 Constitution check each round or lose 1 HP. With a natural 20 on the check, the creature stabilizes and stops losing HP. Healing restores HP. Natural healing restores 1 HP per character level per night of rest. Magical healing restores HP immediately. A creature is dead when it reaches negative HP equal to its Constitution score.
                  """,
                  summary: "How hit points, dying, stabilizing, and healing work.",
                  source: "Core Rulebook"),

            .make("Attacks of Opportunity",
                  category: "Combat",
                  body: """
                  Certain actions provoke attacks of opportunity (AoOs) from threatening enemies. You threaten all squares adjacent to you with a melee weapon (reach weapons threaten a larger area). When an enemy in a threatened square takes a provoking action, you may make one melee attack against them as a free action.

                  Common actions that provoke AoOs include: moving through a threatened square, casting a spell, making a ranged attack, standing up from prone, using a skill in a threatened square, retrieving a stored item, and drinking a potion. Using a combat-ready action or 5-foot step does not provoke. You may only make one AoO per round unless you have the Combat Reflexes feat, which allows one additional AoO per point of Dexterity modifier.
                  """,
                  summary: "What provokes attacks of opportunity and how to make them.",
                  source: "Core Rulebook"),

            .make("Flanking",
                  category: "Combat",
                  body: """
                  When two or more allies are on directly opposite sides of a creature, all attackers threatening that creature gain the flanking bonus. A flanking attacker gains a +2 bonus on melee attack rolls against the flanked creature. Rogues and certain classes can use this bonus for precision-based damage such as sneak attack.

                  To flank, two allies must be positioned on opposite sides of the target (corners count if the line connecting them passes through opposite corners of the target's space). You do not need to be adjacent to your flanking partner, only to the target. A creature that cannot be flanked (such as an undead immune to critical hits via certain feats) may ignore flanking.
                  """,
                  summary: "+2 attack bonus when allies are on opposite sides of a foe.",
                  source: "Core Rulebook"),

            .make("Combat Maneuvers",
                  category: "Combat",
                  body: """
                  Combat maneuvers are special actions in combat that allow you to do something other than deal damage. To perform a combat maneuver, make a Combat Maneuver Bonus (CMB) check against your target's Combat Maneuver Defense (CMD).

                  CMB = Base attack bonus + Strength modifier + special size modifier
                  CMD = 10 + Base attack bonus + Strength modifier + Dexterity modifier + special size modifier + miscellaneous modifiers

                  Success means the maneuver takes effect; failure means it does not, and if you fail by 10 or more you provoke an AoO. Most combat maneuvers provoke attacks of opportunity unless you have the Improved feat for that maneuver. Standard maneuvers include Bull Rush, Disarm, Grapple, Overrun, Sunder, and Trip.
                  """,
                  summary: "CMB and CMD govern Bull Rush, Disarm, Grapple, Overrun, Sunder, and Trip.",
                  source: "Core Rulebook"),

            .make("Bull Rush",
                  category: "Combat",
                  body: """
                  A bull rush attempts to push an opponent directly away from you. As a standard action, move into the opponent's square. This provokes an attack of opportunity unless you have Improved Bull Rush. Make a CMB check against the opponent's CMD. If you succeed, push the target back 5 feet plus 5 feet for every 5 points by which your CMB exceeds the CMD.

                  You can move with the target if you wish (and have remaining movement). If an obstacle stops the target, both you and the target stop at that point. If you push the target into another creature, the target's movement stops and both the target and the blocking creature take 1d6 points of damage.
                  """,
                  summary: "Push an opponent directly away; uses CMB vs. CMD.",
                  source: "Core Rulebook"),

            .make("Disarm",
                  category: "Combat",
                  body: """
                  You can attempt to knock a weapon or held item from an opponent's hands. Disarming an opponent provokes an attack of opportunity from the target unless you have the Improved Disarm feat. Make a CMB check against the opponent's CMD. If you succeed, the target drops the weapon or item to the ground in its square.

                  If you attempt to disarm and fail by 10 or more, you drop your own weapon in your square. You can attempt to disarm an opponent wielding a two-handed weapon, but take a –4 penalty on the check. If successful, you may take the item if you have a free hand; otherwise it falls to the ground.
                  """,
                  summary: "Knock a weapon from an opponent's hand; uses CMB vs. CMD.",
                  source: "Core Rulebook"),

            .make("Grapple",
                  category: "Combat",
                  body: """
                  Grappling allows you to grab and hold a creature. As a standard action, move to the target's square and make a CMB check against their CMD. Success means both you and the target are grappled. A grappled creature cannot move freely and takes a –2 penalty on all attack rolls and a –4 penalty to Dexterity. Casting a spell while grappled requires a concentration check (DC 10 + double the spell level).

                  On subsequent rounds, you can move, damage, pin, or attempt to tie up the grappled opponent as a standard action using CMB. Pinning holds the opponent completely immobile until they escape. A pinned creature is also helpless. Grappling provokes AoOs unless you have Improved Grapple.
                  """,
                  summary: "Grab and hold a creature; both are grappled on success.",
                  source: "Core Rulebook"),

            .make("Overrun",
                  category: "Combat",
                  body: """
                  An overrun allows you to move through a creature's space during movement. As part of a charge or a move action, you can attempt to move through the target's space. This provokes an AoO unless you have Improved Overrun. Make a CMB check against the target's CMD. If you succeed, you move through the target's space; if you fail, you stop adjacent to the target and your movement ends.

                  On a successful overrun you may knock the target prone (and continue moving) or simply pass through without knocking them down. If you exceed the CMD by 5 or more, you may automatically knock the target prone in addition to moving through their space.
                  """,
                  summary: "Move through an enemy's space, potentially knocking them prone.",
                  source: "Core Rulebook"),

            .make("Sunder",
                  category: "Combat",
                  body: """
                  A sunder allows you to strike at an opponent's held or wielded weapon or shield, trying to break it. Sunder provokes an AoO unless you have Improved Sunder. Make a CMB check against the target's CMD. If you succeed, deal damage to the item. Items have HP equal to their hardness × 10, and items with HP reduced to 0 are broken. Items with HP reduced to half or fewer their starting HP are broken and less functional.

                  Breaking worn armor requires that the attacker specifically target it and succeed on the sunder check. Most objects are immune to critical hits, precision damage, and many conditions. Magical items may have additional hardness from their enchantment.
                  """,
                  summary: "Damage or break an opponent's weapon or shield.",
                  source: "Core Rulebook"),

            .make("Trip",
                  category: "Combat",
                  body: """
                  A trip causes your opponent to fall prone. As a standard action (or as part of an attack), make a CMB check against the opponent's CMD. This provokes an AoO unless you have Improved Trip. If you succeed, the target falls prone. If you fail by 10 or more, you fall prone instead.

                  A prone creature gains a –4 penalty on melee attack rolls and must use a move action to stand up (this provokes an AoO). A prone creature is easier to hit with melee attacks (+4 to hit) but harder to hit with ranged attacks (–4 to ranged attack rolls). Certain creatures (such as those with more than two legs) gain a +4 bonus to CMD against trip attempts.
                  """,
                  summary: "Knock an opponent prone; uses CMB vs. CMD.",
                  source: "Core Rulebook"),

            .make("Two-Weapon Fighting",
                  category: "Combat",
                  body: """
                  Fighting with two weapons can multiply the number of attacks you can make in a round, but requires significant penalty management. Normally, if you make an attack with your primary weapon and your off-hand weapon in the same round, you take a –6 penalty on your primary attack and a –10 penalty on your off-hand attack. These penalties are reduced to –4/–4 if the off-hand weapon is light.

                  The Two-Weapon Fighting feat reduces the penalties to –2/–2 (or –0/–0 with a light off-hand weapon). Improved and Greater Two-Weapon Fighting feats grant additional off-hand attacks. In a full-attack action, you can make one primary attack at your highest BAB and one off-hand attack at your highest BAB. Further feats allow additional off-hand attacks.
                  """,
                  summary: "Rules for fighting with a weapon in each hand.",
                  source: "Core Rulebook"),

            .make("Mounted Combat",
                  category: "Combat",
                  body: """
                  When riding a mount in combat, you must make Ride checks to control the mount. A trained combat-ready mount will not flee from battle, but untrained mounts require a Ride check (DC 20) each round. Your mount acts on your initiative count; if you direct it to attack, it uses its own attack bonus and moves under your direction.

                  If your mount is hit in combat and you are mounted, make a Ride check (DC 5 + damage taken) or fall. Charging on horseback doubles the mount's speed. Casting spells while mounted requires a Ride check (DC 5 for concentrating, harder for casting). The Mounted Combat feat allows you to negate one hit against your mount per round with a Ride check (DC = attack roll).
                  """,
                  summary: "How to fight effectively while riding a mount.",
                  source: "Core Rulebook"),

            .make("Underwater Combat",
                  category: "Combat",
                  body: """
                  Fighting underwater imposes significant penalties. Creatures without a swim speed take a –2 penalty on attack rolls made with slashing or bludgeoning weapons. Creatures without a swim speed must make Swim checks each round to stay afloat. Ranged weapon attacks take a –2 penalty per 5 feet of water (cumulative) and are often impractical.

                  Piercing weapons function normally underwater. Fire-based spells and effects do not function underwater unless specifically noted. Cold, electricity, and sonic spells function normally. Underwater movement without a swim speed is typically halved or requires Swim checks. Characters holding their breath can act for a number of rounds equal to their Constitution modifier before risking drowning.
                  """,
                  summary: "Penalties and special rules for fighting in water.",
                  source: "Core Rulebook"),

            .make("Cover",
                  category: "Combat",
                  body: """
                  Cover improves a creature's AC and Reflex saves against attacks that originate from the source of the cover. Soft cover (such as standing near another creature) provides a +4 bonus to AC. Standard cover provides a +4 bonus to AC and a +2 bonus on Reflex saves against attacks that pass through the cover. Improved cover (more than half your body blocked) provides +8 to AC and +4 to Reflex saves, and the creature is effectively hidden.

                  Total cover means the creature cannot be targeted at all by normal attacks. Cover does not apply to attacks from inside the cover area. Creatures in adjacent squares can provide cover for each other against ranged attacks from across the battlefield.
                  """,
                  summary: "+4 AC and +2 Reflex saves from cover; total cover prevents targeting.",
                  source: "Core Rulebook"),

            .make("Concealment",
                  category: "Combat",
                  body: """
                  Concealment provides a chance for attacks to miss even if they normally would hit. A target with concealment benefits from a 20% miss chance. Total concealment imposes a 50% miss chance. To determine if an attack misses, roll percentile dice; if the result is less than the miss chance, the attack misses regardless of the attack roll.

                  Common sources of concealment: darkness (if you can see at all), fog, blur spell, concealment from foliage. A target with total concealment cannot be targeted with spells requiring line of sight. You can still attack into a square you think a creature occupies, but must guess the correct square. Invisible creatures gain total concealment.
                  """,
                  summary: "20% or 50% miss chance from concealment; invisible grants total concealment.",
                  source: "Core Rulebook"),

            .make("Conditions Summary",
                  category: "Combat",
                  body: """
                  Conditions alter a creature's capabilities in defined ways:

                  BLINDED: –2 AC, loses Dex bonus to AC, –4 to most Str/Dex-based checks, 50% miss chance, cannot flank.
                  DAZZLED: –1 on attack rolls and sight-based Perception checks.
                  EXHAUSTED: Half speed, –6 Str and Dex, must rest 1 hour before becoming fatigued.
                  FATIGUED: Cannot run or charge; –2 Str and Dex.
                  FRIGHTENED: Flees from source; –2 attack, saves, skills, ability checks.
                  GRAPPLED: Cannot move freely; –2 attacks, –4 Dex; must concentrate to cast.
                  PARALYZED: Str and Dex reduced to 0; helpless.
                  PRONE: –4 melee attack; +4 melee AC; –4 ranged AC; move action to stand.
                  SHAKEN: –2 attack, saves, skills, ability checks.
                  STAGGERED: Only a single move or standard action per round.
                  STUNNED: Drops held items; –2 AC; cannot take actions; attackers gain +2.
                  """,
                  summary: "Quick reference for common conditions and their mechanical effects.",
                  source: "Core Rulebook"),

            // MARK: - Magic

            .make("Spell Basics",
                  category: "Magic",
                  body: """
                  Spells are magical effects created by concentrating on specific formulae, prayers, or innate powers. Each spell has a level from 0 to 9. Casters must have a sufficient score in their key ability (Intelligence for wizards, Wisdom for clerics, Charisma for sorcerers) to cast spells of a given level. A spell's level determines its slot usage, concentration DC, and other factors.

                  Spells have the following characteristics: casting time (how long it takes to cast), components (V = verbal, S = somatic, M = material, F = focus, DF = divine focus), range, area or target, duration, saving throw, and spell resistance. Metamagic feats allow modification of spells at the cost of higher spell slots.
                  """,
                  summary: "Overview of spell levels, components, and basic mechanics.",
                  source: "Core Rulebook"),

            .make("Casting Spells",
                  category: "Magic",
                  body: """
                  Most spells take a standard action to cast. When casting a spell, you must have both hands free if the spell requires somatic components unless you have the feat or ability that allows one-handed casting. You must speak clearly for verbal components; silence or deafness may prevent casting. Material components are consumed in casting; focuses are not.

                  Spells are prepared each morning (wizards, clerics, druids) or known and cast spontaneously (sorcerers, bards). Prepared casters lose a spell slot when they cast a spell. Spontaneous casters can cast any known spell a number of times per day according to their spell slots. Casting on the defensive requires a concentration check (DC 15 + double spell level).
                  """,
                  summary: "How spellcasters prepare, access, and cast spells.",
                  source: "Core Rulebook"),

            .make("Concentration",
                  category: "Magic",
                  body: """
                  If a caster is distracted while casting a spell, they must make a concentration check to successfully cast. The DC depends on the distraction. Failing the check causes the spell to fail (the spell slot is still used for prepared casters). Common concentration DCs:

                  Taking damage: DC = 10 + damage dealt + spell level
                  Casting defensively (no AoO): DC = 15 + double spell level
                  Grappled: DC = 10 + grappler's CMB + spell level
                  Weather (heavy rain): DC = 5 + spell level
                  Violent weather (hurricane): DC = 10 + spell level

                  The concentration check modifier is caster level + spellcasting ability modifier.
                  """,
                  summary: "Concentration checks prevent spells from failing when distracted.",
                  source: "Core Rulebook"),

            .make("Spell Resistance",
                  category: "Magic",
                  body: """
                  Spell resistance (SR) is a special defensive ability that some creatures possess. When you target a creature with SR, you must succeed on a caster level check (1d20 + caster level) equal to or exceeding the creature's SR. If you fail, the spell has no effect on that creature, though it may still affect other targets in an area.

                  SR applies only to targeted spells and those that specify it. Area spells that simply fill a region do not require SR checks unless they specify "SR: Yes." Spell resistance can be bypassed by spells with the SR: No notation and by some special abilities. Certain feats (such as Spell Penetration) give bonuses on caster level checks against SR.
                  """,
                  summary: "Caster level check required to affect creatures with spell resistance.",
                  source: "Core Rulebook"),

            .make("Spell Descriptors",
                  category: "Magic",
                  body: """
                  Spell descriptors provide additional information about a spell's nature and can interact with resistances, immunities, and other rules. Common descriptors include:

                  ACID, COLD, ELECTRICITY, FIRE, SONIC: Energy type spells; can be resisted or absorbed.
                  CHAOTIC, EVIL, GOOD, LAWFUL: Alignment descriptors; apply to creatures of the opposite alignment.
                  DEATH: Spells with this descriptor may kill outright; undead and constructs are usually immune.
                  EMOTION: Affects emotional states; some creatures are immune.
                  FEAR: Fear effects; bonuses to saves against fear apply.
                  FORCE: Untyped physical damage from magical force; bypasses most DR.
                  LANGUAGE-DEPENDENT: Only affects targets that understand the language used.
                  LIGHT and DARKNESS: Interact with each other and with darkvision.
                  MIND-AFFECTING: Enchantments and illusions; mindless creatures immune.
                  """,
                  summary: "Common spell descriptors and how they interact with resistances and immunities.",
                  source: "Core Rulebook"),

            .make("Counterspells",
                  category: "Magic",
                  body: """
                  A counterspell neutralizes an opponent's spell before it can take effect. To counterspell, you must ready an action specifically to counter the opponent's spell, then identify the spell with a Spellcraft check (DC 15 + spell level). If you identify the spell, you may attempt to counterspell it.

                  You can counterspell any spell by casting its exact duplicate. The dispel magic spell can counter any spell as long as you succeed on a caster level check (DC 11 + the spell's caster level). Some specific spells have natural counters (e.g., haste/slow). A counterspell uses up your readied action and the spell slot used to counterspell.
                  """,
                  summary: "How to ready and execute a counterspell against an opponent's casting.",
                  source: "Core Rulebook"),

            .make("Arcane Spells",
                  category: "Magic",
                  body: """
                  Arcane spells draw power from ambient magical energies, learned lore, and innate magical talent. Wizards prepare arcane spells from a spellbook each morning, choosing spells to fill their daily spell slots. Intelligence governs the maximum spell level they can cast and bonus spells. Sorcerers and bards cast arcane spells spontaneously from a fixed list of known spells, governed by Charisma.

                  Arcane spells with somatic components require a free hand or may fail. Arcane spells in medium or heavy armor have a chance of arcane spell failure unless the caster has a special ability. Spell failure chance is listed on the armor table. Wizard specialty schools and bloodlines grant additional abilities related to arcane magic.
                  """,
                  summary: "Arcane spells use Intelligence (wizards) or Charisma (sorcerers, bards).",
                  source: "Core Rulebook"),

            .make("Divine Spells",
                  category: "Magic",
                  body: """
                  Divine spells draw power from deities, natural forces, or philosophical ideals. Clerics, druids, and paladins prepare divine spells through prayer each morning, choosing spells based on Wisdom (their casting stat). Rangers access a limited divine spell list at higher levels. Oracles cast divine spells spontaneously like sorcerers.

                  Divine spells do not require a spellbook but must be prepared fresh each day after prayer. The deity's alignment and domains grant access to additional spells. Divine spells are never subject to arcane spell failure from armor. Clerics and druids have access to the full divine spell list; they simply choose which spells to prepare daily.
                  """,
                  summary: "Divine spells use Wisdom and are accessed through prayer and deity connection.",
                  source: "Core Rulebook"),

            .make("Abjuration School",
                  category: "Magic",
                  body: """
                  Abjuration spells protect, block, and banish. They create magical barriers, negate harmful effects, harm trespassers, or banish creatures to other planes. Abjuration is one of the most straightforward defensive schools. Protection spells like shield and mage armor create force barriers. Spell resistance-granting spells like spell resistance block enemy magic. Ward spells like alarm and glyph of warding guard areas.

                  Dismissal and banishment return extraplanar creatures to their home planes. Dispel magic and greater dispel magic end or suppress ongoing magical effects. Abjurers tend to be conservative, reactive spellcasters. A specialist abjurer gains the Resistance and Protective Ward abilities.
                  """,
                  summary: "Abjuration spells protect, banish, and dispel magical effects.",
                  source: "Core Rulebook"),

            .make("Conjuration School",
                  category: "Magic",
                  body: """
                  Conjuration spells transport objects and creatures from place to place, create objects out of nothing, and summon monsters and other beings. Summoning spells conjure creatures or objects to your side for a limited time. Teleportation spells move targets instantly between locations. Creation spells generate objects or substances.

                  Healing spells (a subschool of conjuration) restore hit points and cure conditions. Calling spells bring extraplanar creatures directly to the caster; they can refuse the call. Conjured creatures can be quite powerful but the spell has a duration and the creatures return when it ends. A specialist conjurer gains the Summoner's Charm and Acid Dart abilities.
                  """,
                  summary: "Conjuration spells summon creatures, teleport, and create matter.",
                  source: "Core Rulebook"),

            .make("Divination School",
                  category: "Magic",
                  body: """
                  Divination spells enable the caster to learn secrets long forgotten, to predict the future, to find hidden things, and to foil deceptive spells. Scrying spells let you observe distant targets. Detection spells sense the presence of things nearby (alignment, magic, traps, etc.). Foreknowledge spells reveal information about the future, such as augury and divination.

                  Commune and contact other plane allow access to higher-order information from powerful beings. True seeing is among the most powerful divinations, cutting through all illusions and invisibility. A specialist diviner gains the Forewarned and Diviner's Fortune abilities.
                  """,
                  summary: "Divination spells reveal information, detect hidden things, and predict the future.",
                  source: "Core Rulebook"),

            .make("Enchantment School",
                  category: "Magic",
                  body: """
                  Enchantment spells affect the minds of others, influencing or controlling their behavior. Charm effects make the target regard the caster as a trusted friend. Compulsion effects control the target's actions, forcing them to act against their will. Mindless creatures and undead are typically immune to enchantments.

                  The saving throw for most enchantments is Will. Creatures that succeed on their Will save are typically immune to the same spell from the same caster for 24 hours. Dominate person and dominate monster are among the most powerful compulsion spells. A specialist enchanter gains the Enchanting Smile and Dazing Touch abilities.
                  """,
                  summary: "Enchantment spells charm, compel, and control thinking creatures.",
                  source: "Core Rulebook"),

            .make("Evocation School",
                  category: "Magic",
                  body: """
                  Evocation spells manipulate magical energy or create it from nothing. They can create weapons of energy, cause explosions, hurl bolts of energy, or create objects of force. Fireball, lightning bolt, and magic missile are iconic evocations. Most evocations deal damage, making them critical in combat situations.

                  Many evocations allow a Reflex save for half damage (area spells) or require a touch or ranged touch attack. Force effects (created from pure magical energy) bypass most damage reduction and affect ethereal creatures. A specialist evoker gains the Intense Spells and Force Missile abilities, allowing them to deal extra damage with evocations.
                  """,
                  summary: "Evocation spells create energy, deal damage, and produce magical force effects.",
                  source: "Core Rulebook"),

            .make("Illusion School",
                  category: "Magic",
                  body: """
                  Illusion spells deceive the senses or minds of others. Figment illusions create false sensory impressions with no substance. Glamer spells change a target's sensory qualities. Pattern spells create a visual pattern that affects the actions of those who see it. Phantasm spells create a mental impression. Shadow spells use quasi-real shadow substance.

                  Disbelief is a key mechanic: when a creature interacts with an illusion or has reason to doubt it, it can attempt a Will save to disbelieve. Disbelieving doesn't end the illusion, but the creature is no longer fooled by it. Invisibility is one of the most commonly used illusion spells. A specialist illusionist gains the Blinding Ray and Extended Illusions abilities.
                  """,
                  summary: "Illusion spells deceive the senses; can be disbelieved with a Will save.",
                  source: "Core Rulebook"),

            .make("Necromancy School",
                  category: "Magic",
                  body: """
                  Necromancy spells manipulate the power of death, unlife, and the life force. They can raise undead creatures, drain the life force from living creatures, or cause fear and weakness. Animate dead creates undead servitors; more powerful spells like create undead produce wights and more powerful horrors.

                  Negative energy is the power source of necromancy; it damages living creatures and heals undead. Inflict wounds spells harm the living; cure wounds spells heal. Clerics of evil deities may spontaneously channel their cure spells into inflict spells. A specialist necromancer gains the Power over Undead and Grave Touch abilities, allowing channeling and touch debuffs.
                  """,
                  summary: "Necromancy spells raise undead, drain life, and channel negative energy.",
                  source: "Core Rulebook"),

            .make("Transmutation School",
                  category: "Magic",
                  body: """
                  Transmutation spells change the properties of some creature, thing, or condition. They can alter form (polymorph spells), enhance physical capabilities (bull's strength, cat's grace), alter matter (stone to flesh, transmute mud to rock), or grant new abilities. Transmutation spells are among the most versatile.

                  Polymorph spells allow a creature to take a new form, typically gaining that form's physical attributes and natural attacks while retaining its own mental stats. Flesh to stone and similar spells have dramatic permanent effects. Speed-altering spells like haste and slow provide significant combat advantage or disadvantage. A specialist transmuter gains the Physical Enhancement and Telekinetic Fist abilities.
                  """,
                  summary: "Transmutation spells change the properties of creatures, objects, or conditions.",
                  source: "Core Rulebook"),

            // MARK: - Skills

            .make("Skill Basics",
                  category: "Skills",
                  body: """
                  Skills represent a character's ability to perform tasks outside of combat. Each skill is tied to an ability score: your modifier for that ability is added to skill checks. Skills have ranks, purchased with skill points gained each level (class skill ranks + Intelligence modifier). Class skills cost 1 point per rank; cross-class skills also cost 1 point but cannot exceed half the maximum rank.

                  When a skill is a class skill, you gain a +3 bonus on checks with it once you have at least 1 rank. A trained skill requires at least 1 rank to attempt. An untrained skill can be attempted by anyone (though many have a DC too high to succeed without training). Skill checks are 1d20 + ranks + ability modifier + miscellaneous modifiers.
                  """,
                  summary: "Skill ranks, class skills, and how to make skill checks.",
                  source: "Core Rulebook"),

            .make("Acrobatics",
                  category: "Skills",
                  body: """
                  Acrobatics (Dexterity; Armor Check Penalty) allows you to balance, tumble, and navigate difficult terrain. Common uses: Balance (DC 10–20+ depending on surface), Move Through Threatened Squares without provoking (DC 15 + highest AoO modifier in path), Tumble to reduce falling damage (DC 15), and Jumping (DC based on distance, run = no penalty).

                  Moving through a threatened area requires one Acrobatics check per threatened square; failure provokes the AoO. Jumping long distances: DC = distance in feet × 2 (running start) or × 4 (standing); high jump DC = 4 × height in feet. Acrobatics checks are generally made as part of movement and do not require a separate action.
                  """,
                  summary: "Balance, tumble through threatened squares, and jump.",
                  source: "Core Rulebook"),

            .make("Appraise",
                  category: "Skills",
                  body: """
                  Appraise (Intelligence; Trained Only) lets you assess the value of objects. DC 20 to estimate common or well-known items within 20%. DC 25 for unusual items. Success within 5 gives you the exact value; failure by 5+ gives a wildly incorrect estimate. Magical items require Spellcraft to assess their magical properties; Appraise only estimates mundane value.

                  Gems, art objects, and trade goods can also be assessed with Appraise. With a success, you know whether an item has any peculiarities (such as a flaw in a gem) that reduce its value. Appraise is a class skill for bards, clerics, rogues, and wizards.
                  """,
                  summary: "Estimate the value of objects; trained only.",
                  source: "Core Rulebook"),

            .make("Bluff",
                  category: "Skills",
                  body: """
                  Bluff (Charisma) allows you to tell convincing lies, pass secret messages, and feint in combat. Deceiving: opposed check vs. target's Sense Motive; modifiers based on how believable the lie is (–5 to –20 for implausible lies). Pass secret message: opposed vs. Perception with –2 to –4 for complex messages. Feint in combat: DC = 10 + target's BAB + target's Wis modifier.

                  A successful feint allows you to deny the target their Dexterity bonus to AC for your next attack. Characters with the Improved Feint feat can feint as a move action instead of a standard action. Creating a diversion to hide requires a Bluff check against opponents' Sense Motive and is often combined with Stealth.
                  """,
                  summary: "Deceive, feint, and pass secret messages.",
                  source: "Core Rulebook"),

            .make("Climb",
                  category: "Skills",
                  body: """
                  Climb (Strength; Armor Check Penalty) allows you to scale walls, cliffs, ropes, and other vertical surfaces. You must make a Climb check to ascend or descend any surface without obvious handholds. Typical DCs: rope (0), knotted rope (5), rough stone wall (15), smooth stone (20), overhang (25). With a successful check, you move at one quarter speed; a running start gives no benefit.

                  While climbing, you are considered flat-footed unless you have 5+ ranks in Climb. Failure by 5+ means you slip and fall. You can hold yourself in place without moving as a move action (DC 5) and can hang from one hand as a free action. A climber who takes damage must make a DC 15 Climb check or fall.
                  """,
                  summary: "Scale walls and vertical surfaces; failure by 5+ means falling.",
                  source: "Core Rulebook"),

            .make("Diplomacy",
                  category: "Skills",
                  body: """
                  Diplomacy (Charisma) allows you to change the attitude of NPCs, gather information, and make requests. Attitude shifts take at least 1 minute of conversation. Base DC = 15 to shift attitude by one step (from unfriendly to indifferent, or neutral to friendly, etc.) with modifiers for the NPC's starting attitude. Multiple shifts are possible but each additional shift increases the DC by 5.

                  Gather Information: DC 10 for common knowledge, up to DC 30 for secrets, with a minimum of 1 hour of canvassing a settlement. Make Requests: after an attitude shift, make a separate check with DC based on the nature of the request (DC 5 for easy requests, up to DC 35 for extreme requests). Diplomacy cannot be rushed without penalty.
                  """,
                  summary: "Change NPC attitudes, gather information, and make requests.",
                  source: "Core Rulebook"),

            .make("Disable Device",
                  category: "Skills",
                  body: """
                  Disable Device (Dexterity; Trained Only; Armor Check Penalty) allows you to disarm traps, open locks, and sabotage mechanisms. Disarming a simple trap: DC 10; complex trap: DC 15–25+; deadly trap: DC 20–40. Time required is typically a full-round action. Failing by 5 or more triggers the trap. Opening a lock without a key: DC 20–40 depending on quality (open lock takes 1 round).

                  Thieve's tools grant a +2 circumstance bonus; masterwork tools grant +2 (stacking). Without tools, the check has a –2 penalty. The Trapfinding class feature (rogues, investigators) is required to find and disable magical traps, which have DCs that otherwise cannot be beaten. A rogue can take 20 on Disable Device checks if not rushed or threatened.
                  """,
                  summary: "Disarm traps and pick locks; trained only; requires Trapfinding for magic traps.",
                  source: "Core Rulebook"),

            .make("Knowledge",
                  category: "Skills",
                  body: """
                  Knowledge skills (Intelligence; Trained Only for DCs above 10) represent academic learning in various fields. Each field is a separate skill: Arcana, Dungeoneering, Engineering, Geography, History, Local, Nature, Nobility, Planes, Religion. A DC 10 check recalls easy or common information. DC 15 for average information. DC 20 for obscure or specialized information. DC 30+ for very rare or extremely specialized information.

                  Each Knowledge skill also allows you to identify monsters associated with that field (DC 10 + CR). Identifying a monster also recalls special attacks, qualities, and vulnerabilities. Using Knowledge in play often provides roleplaying advantage or mechanical bonuses at the GM's discretion.
                  """,
                  summary: "Recall academic information and identify monsters by type.",
                  source: "Core Rulebook"),

            .make("Perception",
                  category: "Skills",
                  body: """
                  Perception (Wisdom) is the most commonly used skill in the game, covering all manner of sensing the environment. Standard uses: Hear (DC 0 for no concealment, higher for muffled or distant sounds), Spot (DC 20+ for hidden objects or creatures), Find Traps (DC typically = 10 + trap level), Sense Motive (opposed by target's Bluff).

                  Creatures can use Perception opposed by Stealth to detect hidden creatures. Perception DCs are modified by distance (+1 per 10 feet), conditions (bright light, darkness, distraction), and whether the observer is actively searching or passively listening. Elves, halflings, and gnomes have racial bonuses to Perception. Taking 10 is allowed when not rushed.
                  """,
                  summary: "Spot, hear, find traps, and sense danger — the most used skill.",
                  source: "Core Rulebook"),

            .make("Stealth",
                  category: "Skills",
                  body: """
                  Stealth (Dexterity; Armor Check Penalty) allows you to move without being detected. You can make a Stealth check while moving at half speed without penalty. Moving at full speed imposes a –5 penalty; running imposes a –20 penalty. You must have cover or concealment to attempt to hide, or be at least 10 feet from any observer.

                  Stealth checks are opposed by Perception checks. You can try to hide even after being spotted if you quickly break line of sight. Invisible creatures gain a +40 bonus on Stealth checks. Sniping: after making a ranged attack, you may use Stealth with a –20 penalty as a move action to hide again before observers can locate you. Tiny or smaller creatures gain a +8 size bonus; Large or larger creatures take size penalties.
                  """,
                  summary: "Move silently and hide from observers; opposed by Perception.",
                  source: "Core Rulebook"),

            .make("Survival",
                  category: "Skills",
                  body: """
                  Survival (Wisdom) covers navigating the wilderness, tracking, and enduring harsh conditions. Get Along in the Wild (DC 10): provide food and water for yourself; DC 15 extends to a second creature per additional 2 points. Navigate Without Getting Lost (DC 15, DC 20 in trackless desert, ocean, or similar). Track (DC = environment difficulty + creature's size modifier): follow tracks left by a creature.

                  Predict Weather (DC 15 for 24 hours, DC 25 for 48 hours). Deal With Hazards: recognize naturally occurring hazards (DC 15 for poisonous plants, quicksand, etc.). Sled or Handle Animals in Nature (DC 15). The Track feat allows you to use Survival for tracking even on the move (without the feat, tracking requires you to move at half speed).
                  """,
                  summary: "Navigate wilderness, track creatures, and endure harsh environments.",
                  source: "Core Rulebook"),

            .make("Use Magic Device",
                  category: "Skills",
                  body: """
                  Use Magic Device (Charisma; Trained Only) allows you to activate magic items you would not normally be able to use. Activate a Spell Completion Item (DC 20 + spell level): use a scroll without meeting its prerequisites. Activate a Command Word Item (DC 25): activate an item whose command word you don't know. Activate at a Specific Location (DC 20): activate an item designed for a specific location or purpose.

                  Emulate an Ability Score (DC 15): make the item treat you as having a specific ability score. Emulate a Race (DC 25): convince an item that requires a specific race that you are that race. Emulate an Alignment (DC 30): temporarily act as a different alignment for item purposes. Failed UMD checks by 10 or more cause a mishap (the item activates in an unexpected way).
                  """,
                  summary: "Activate magic items outside your class's normal access; trained only.",
                  source: "Core Rulebook"),

            // MARK: - Core Rules

            .make("Ability Scores",
                  category: "Core Rules",
                  body: """
                  The six ability scores represent a creature's basic physical and mental attributes: Strength (Str), Dexterity (Dex), Constitution (Con), Intelligence (Int), Wisdom (Wis), and Charisma (Cha). Scores are typically generated by rolling 4d6, dropping the lowest die, six times, then assigning totals to the six stats. The standard point buy uses a pool of 15 to 25 points depending on campaign power level.

                  Ability modifiers are calculated as (score – 10) / 2, rounded down. A score of 10–11 = +0; 12–13 = +1; 14–15 = +2; 16–17 = +3; 18–19 = +4; 20–21 = +5. Ability scores can be temporarily damaged (ability damage, restored by rest or healing) or permanently reduced (ability drain, restored only by restoration). A score reduced to 0 causes unconsciousness (physical) or coma (mental).
                  """,
                  summary: "The six ability scores and how to derive modifiers.",
                  source: "Core Rulebook"),

            .make("Ability Score Damage and Drain",
                  category: "Core Rules",
                  body: """
                  Ability damage temporarily reduces an ability score. 1 point of ability damage reduces the ability score by 1 point, which may lower the modifier. A creature with Strength damage of 2 and a base Strength of 14 has an effective Strength of 12 for all purposes. Ability damage heals naturally: 1 point per day of rest (1 point of temporary damage regardless of type).

                  Ability drain is permanent loss of an ability score that can only be restored by a restoration or greater restoration spell. Both ability damage and drain are reduced to 0 by death and are reset when the creature is raised from the dead (though drain may leave permanent stat deficits). A Constitution score of 0 is immediately fatal; other scores at 0 cause incapacitation.
                  """,
                  summary: "Temporary ability damage heals with rest; ability drain requires magical restoration.",
                  source: "Core Rulebook"),

            .make("Alignment",
                  category: "Core Rules",
                  body: """
                  Alignment represents a creature's moral and ethical outlook on two axes: Good/Neutral/Evil (moral axis) and Lawful/Neutral/Chaotic (ethical axis). Nine alignments result from combining these: Lawful Good, Neutral Good, Chaotic Good, Lawful Neutral, True Neutral, Chaotic Neutral, Lawful Evil, Neutral Evil, Chaotic Evil.

                  Alignment affects which spells and abilities affect you (protection from evil, detect chaos, etc.). Certain classes (paladin, anti-paladin) require specific alignments and may fall if their alignment shifts. Alignment is not rigidly mechanical; it guides roleplaying rather than dictating every action. Alignment-based spells deal 2d6 extra damage against creatures of the opposite alignment and are treated as the relevant alignment for overcoming damage reduction.
                  """,
                  summary: "Nine alignments on a good-evil and lawful-chaotic axis.",
                  source: "Core Rulebook"),

            .make("Experience Points",
                  category: "Core Rules",
                  body: """
                  Characters gain experience points (XP) by defeating monsters, completing quests, and overcoming challenges. XP is awarded based on the Challenge Rating (CR) of encounters. A CR-appropriate encounter awards XP split equally among participants. XP thresholds for each level are defined in the Level Advancement table (slow, medium, or fast advancement tracks).

                  The medium track is standard: CR 1 encounter awards 400 XP to a typical party of four. XP for encounters above or below the party level are scaled up or down accordingly. Reaching enough XP automatically triggers leveling up; typically this happens between sessions so new features take effect at the next session's start.
                  """,
                  summary: "XP from CR-appropriate encounters; three advancement track speeds.",
                  source: "Core Rulebook"),

            .make("Level Advancement",
                  category: "Core Rules",
                  body: """
                  When a character gains enough XP, they advance to the next character level. Upon leveling up, the character gains: new class features as specified in the class table, additional hit points (roll hit die or take average), additional skill ranks (class skill ranks + Intelligence modifier, minimum 1), possibly new base attack bonus progression, and potentially new ability score points (every 4 levels, gain +1 to any ability score).

                  At every odd level (1st, 3rd, 5th, etc.), characters may gain a feat. All classes gain a bonus feat at certain levels as well. Multiclassing allows a character to take a level in a different class instead of advancing in their primary class, gaining that class's benefits (BAB, saves, class features) for the new level taken.
                  """,
                  summary: "Leveling grants hit points, skill ranks, feats, and class features.",
                  source: "Core Rulebook"),

            .make("Carrying Capacity",
                  category: "Core Rules",
                  body: """
                  A character's carrying capacity is determined by their Strength score. Carrying more than a light load imposes penalties. Light load: no penalty. Medium load: –3 max Dex bonus to AC, –3 armor check penalty, reduced speed. Heavy load: –1 max Dex bonus to AC, –6 armor check penalty, reduced speed. Over maximum: cannot move.

                  Light load = up to (Str score × 2) lbs approximately (exact values in table). Medium = up to twice light load. Heavy = up to three times light load. Maximum = 3× heavy load. A character cannot run with a heavy load. Encumbrance affects Acrobatics, Climb, and Swim checks due to armor check penalties. Strength enhancing magic items increase effective Strength for carrying capacity.
                  """,
                  summary: "Light/medium/heavy loads based on Strength; penalties for overloading.",
                  source: "Core Rulebook"),

            .make("Movement and Distance",
                  category: "Core Rules",
                  body: """
                  Most characters have a base speed of 30 feet. Dwarves, gnomes, and halflings have a base speed of 20 feet. In a round, a character can move up to their speed as a move action. A full-round movement (double move) allows moving up to twice speed. Running (as a full-round action) allows movement up to four times speed in a straight line, but the character loses Dexterity to AC.

                  A 5-foot step allows movement of exactly 5 feet without provoking AoOs, as long as no other movement occurred that turn. Difficult terrain costs double movement to cross. Forced movement from abilities moves the creature regardless of their speed; they do not fall prone unless the effect specifies. Overland speed is typically 24 miles per day of normal travel.
                  """,
                  summary: "Speed, 5-foot steps, and overland travel rates.",
                  source: "Core Rulebook"),

            .make("Vision and Light",
                  category: "Core Rules",
                  body: """
                  Vision in Pathfinder is categorized into bright light, normal light, dim light, and darkness. In dim light, creatures without special vision take a –2 penalty on Perception checks; concealment applies. In darkness, sighted creatures are effectively blind. Low-light vision allows seeing in dim conditions as if normal light. Darkvision allows seeing in total darkness in black and white, typically out to 60 feet for most races.

                  Blindsight allows perceiving surroundings without sight at all (sonar, scent, or other senses). Blindsense grants an unspecified ability to detect within range but not precisely locate. Torches illuminate a 20-foot radius of bright light and 40-foot radius of dim light. Lanterns illuminate 30 feet bright and 60 feet dim. Magical light and darkness interact: higher-level light and darkness spells override lower-level ones.
                  """,
                  summary: "Light conditions, darkvision, low-light vision, and blindsight.",
                  source: "Core Rulebook"),

            .make("Exploration",
                  category: "Core Rules",
                  body: """
                  Exploration covers the activities characters engage in between combat encounters: moving through the wilderness, searching rooms, resting, and handling encounters. A standard dungeon room takes roughly 1 minute to thoroughly search (Search or Perception check to find hidden objects or traps). Overland travel is typically handled at a pace of 24 miles per day at normal speed, 18 miles per day for a cautious pace, or 32+ miles per day at a fast pace.

                  Resting for 8 hours restores 1 hit point per character level through natural healing, recovers all spell slots for prepared casters, and removes the fatigued condition. Characters on watch during rest can only benefit from 4 hours of rest if combat interrupts. Skill checks during exploration (Survival for navigation, Stealth for avoiding patrols, Perception for traps) are key overland and dungeon mechanics.
                  """,
                  summary: "Overland travel, resting, searching, and common exploration mechanics.",
                  source: "Core Rulebook"),

            .make("Environment",
                  category: "Core Rules",
                  body: """
                  The game environment can impose a variety of hazards and conditions. Cold environments: characters risk hypothermia when below 40°F without cold weather gear (Fortitude save DC 15; failure = 1d6 nonlethal damage per hour). Heat: in temperatures above 90°F, characters risk heatstroke (Fortitude DC 15 + 1 per previous check; failure = 1d4 nonlethal damage). Fire deals 1d6 damage per round of contact.

                  Drowning: a character who runs out of breath begins taking 1d6 damage per round. Falling: 1d6 damage per 10 feet fallen, maximum 20d6. Falling into water reduces damage by half. Suffocation and starvation/thirst rules apply in extended survival scenarios. Natural hazards (floods, avalanches, earthquakes) are handled with specialized rules that the GM adjudicates.
                  """,
                  summary: "Environmental hazards: heat, cold, falling, drowning, and starvation.",
                  source: "Core Rulebook")
        ]

        for rule in rules {
            try await db.insertRule(rule)
        }
    }
}

// MARK: - RuleEntry factory
private extension RuleEntry {
    static func make(
        _ title: String,
        category: String,
        body: String,
        summary: String,
        source: String = "Core Rulebook",
        isPremium: Bool = false
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
