import Foundation

extension SeedDataBuilder {
    func seedFeatsF() async throws {
        try await db.insertFeat(
        .make("Arcane Insight",
                          featType: "General",
                          prerequisites: "Arcane Shield APG, arcane spellcaster, caster level 10th, worshiper of Nethys.",
                          benefit: "Whenever you use Arcane Shield, you also gain a +1 insight bonus to AC for 1 round.",
                          summary: "Whenever you use Arcane Shield, you also gain a +1 insight bonus to AC for 1 round.",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bloody Vengeance (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, worshiper of Calistria.",
                          benefit: "If an opponent within line of sight has damaged you within the last minute, you may study that opponent as a standard action. Thereafter, if you hit that opponent with a melee attack, you deal 1 point of bleed damage to that creature in addition to the normal damage dealt by your attack.",
                          summary: "If an opponent within line of sight has damaged you within the last minute, you may study that opponent as a standard action.",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true)
        )
        try await db.insertFeat(
        .make("Measured Response (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, worshiper of Abadar.",
                          benefit: "When you hit an opponent with a melee or ranged weapon attack, you may choose to deal average damage (rounded down), as if you had rolled exactly the average amount on the damage die or dice. You add your damage bonuses and penalties as normal.",
                          summary: "When you hit an opponent with a melee or ranged weapon attack, you may choose to deal average damage (rounded down), as if you had rolled exactly the average amount on the damage die or dice.",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true)
        )
        try await db.insertFeat(
        .make("Riptide Attack (Combat)",
                          featType: "General",
                          prerequisites: "Improved Drag APG, Improved Trip, worshiper of Gozreh.",
                          benefit: "Whenever you succeed at a trip combat maneuver, you can automatically attempt a drag combat maneuver against your tripped target as a swift action.",
                          summary: "Whenever you succeed at a trip combat maneuver, you can automatically attempt a drag combat maneuver against your tripped target as a swift action.",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spiked Destroyer (Combat)",
                          featType: "General",
                          prerequisites: "Proficient with armor spikes.",
                          benefit: "When you succeed at a bull rush or overrun combat maneuver, you may automatically make an attack roll with your armor spikes against the target of the maneuver as a swift action, using your highest attack bonus.",
                          summary: "When you succeed at a bull rush or overrun combat maneuver, you may automatically make an attack roll with your armor spikes against the target of the maneuver as a swift action, using your highest…",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true)
        )
        try await db.insertFeat(
        .make("Steady Engagement (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes, Stand Still, worshiper of Irori.",
                          benefit: "If you use Stand Still to prevent an opponent from moving, you may make a disarm or trip combat maneuver against your target as an immediate action.",
                          summary: "If you use Stand Still to prevent an opponent from moving, you may make a disarm or trip combat maneuver against your target as an immediate action.",
                          source: "Inner Sea Gods, Faiths of Balance", isPremium: true),

                    // // MARK: - Inner Sea Gods, Faiths of Corruption
        )
        try await db.insertFeat(
        .make("Bloodletting (Combat)",
                          featType: "General",
                          prerequisites: "Worshiper of Zon-Kuthon.",
                          benefit: "Whenever you threaten a critical hit with a piercing or slashing weapon (regardless of whether you confirm the critical hit or not), you deal 1 point of bleed damage to the targeted creature.",
                          summary: "Whenever you threaten a critical hit with a piercing or slashing weapon (regardless of whether you confirm the critical hit or not), you deal 1 point of bleed damage to the targeted creature.",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Destroy Identity (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, base attack bonus +11, worshiper of Lamashtu.",
                          benefit: "Whenever you confirm a critical hit against an opponent, in addition to dealing critical damage as normal, you maim your target so much that it takes 2 points of Charisma damage and becomes staggered for 1 round.",
                          summary: "Whenever you confirm a critical hit against an opponent, in addition to dealing critical damage as normal, you maim your target so much that it takes 2 points of Charisma damage and becomes staggered…",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fearsome Finish (Combat)",
                          featType: "General",
                          prerequisites: "Intimidating Prowess, worshiper of Lamashtu.",
                          benefit: "Upon reducing an enemy to 0 or fewer hit points, for the remaining duration of the combat encounter, you gain a +4 bonus on any Intimidate checks made to demoralize opponents who can see both you and the opponent you dropped.",
                          summary: "Upon reducing an enemy to 0 or fewer hit points, for the remaining duration of the combat encounter, you gain a +4 bonus on any Intimidate checks made to demoralize opponents who can see both you and…",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Merciless Rush (Combat)",
                          featType: "General",
                          prerequisites: "Improved Bull Rush, worshiper of Rovagug.",
                          benefit: "When you bull rush a creature and your check exceeds the target’s CMD by 5 or more, you deal damage equal to your Strength modifier to that target.",
                          summary: "When you bull rush a creature and your check exceeds the target’s CMD by 5 or more, you deal damage equal to your Strength modifier to that target.",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ordered Mind",
                          featType: "General",
                          prerequisites: "Caster level 7th, any lawful alignment.",
                          benefit: "The DC of your Spellcraft check to identify an opponent’s spell is equal to 20 + the spell level of the opponent’s spell, but for your counterspell you can cast any spell from the same school of your foe’s spell. The level of the spell used to counterspell must be equal to or higher than the level of your foe’s spell.",
                          normal: "The Spellcraft DC to identify an opponent’s spell is equal to 15 + the spell’s level. Generally, a spell can only counter itself.",
                          summary: "The DC of your Spellcraft check to identify an opponent’s spell is equal to 20 + the spell level of the opponent’s spell, but for your counterspell you can cast any spell from the same school of your…",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reject Poison",
                          featType: "General",
                          prerequisites: "Con 13, poison use class feature, worshiper of Norgorber.",
                          benefit: "Whenever you fail the initial saving throw against poison, you have a 20% chance of naturally rejecting the toxin, negating its effects and wasting its use.",
                          summary: "Whenever you fail the initial saving throw against poison, you have a 20% chance of naturally rejecting the toxin, negating its effects and wasting its use.",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shadow Dodge",
                          featType: "General",
                          prerequisites: "Dex 13, worshiper of Norgorber.",
                          benefit: "You can use the light around you to move back and forth from shadow to light again, and your sudden shifting confuses your enemies’ eyes. Each time you move a distance equal to or greater than your speed in areas of normal light or dim light, you gain a +3 dodge bonus to AC until the start of your next turn. Enemies who do not use sight in order to perceive you or are using true seeing or a similar effect ignore this AC bonus. This feat is ineffective in areas of darkness or bright light, where one cannot readily shift between light and shadow.",
                          summary: "You can use the light around you to move back and forth from shadow to light again, and your sudden shifting confuses your enemies’ eyes.",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shatter Resolve",
                          featType: "General",
                          prerequisites: "Channel energy class feature, worshiper of Urgathoa.",
                          benefit: "When you damage a creature by channeling negative energy, you fill your foe with fear. A creature that fails its Will save against your channeled energy also becomes shaken for a number of rounds equal to the number of dice you roll for your channel energy ability.",
                          summary: "When you damage a creature by channeling negative energy, you fill your foe with fear.",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Squash Flat (Combat)",
                          featType: "General",
                          prerequisites: "Improved Bull Rush, Merciless Rush, worshiper of Rovagug.",
                          benefit: "Whenever you make a bull rush attack and your combat maneuver check exceeds the target’s CMD by 5 or more, you can attempt to trip the target as part of your bull rush as a free action. This does not provoke an attack of opportunity.",
                          summary: "Whenever you make a bull rush attack and your combat maneuver check exceeds the target’s CMD by 5 or more, you can attempt to trip the target as part of your bull rush as a free action.",
                          source: "Inner Sea Gods, Faiths of Corruption", isPremium: true),

                    // // MARK: - Inner Sea Gods, Faiths of Purity
        )
        try await db.insertFeat(
        .make("Bestow Hope",
                          featType: "General",
                          prerequisites: "Improved Channel, channel energy class feature, worshiper of Sarenrae.",
                          benefit: "When you heal a creature by channeling positive energy, you also relieve its fear. If a creature you heal is shaken, that condition ends. If the creature is frightened, it becomes shaken instead. If the creature is panicked, it becomes frightened instead.",
                          summary: "When you heal a creature by channeling positive energy, you also relieve its fear. If a creature you heal is shaken, that condition ends. If the creature is frightened, it becomes shaken instead.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bullseye Shot (Combat)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, Precise Shot, base attack bonus +5.",
                          benefit: "You can spend a move action to steady your shot. When you do, you gain a +4 bonus on your next ranged attack roll before the end of your turn.",
                          summary: "You can spend a move action to steady your shot. When you do, you gain a +4 bonus on your next ranged attack roll before the end of your turn.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Butterfly's Sting (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, worshiper of Desna.",
                          benefit: "When you confirm a critical hit against a creature, you can choose to forgo the effect of the critical hit and grant a critical hit to the next ally who hits that creature with a melee attack before the start of your next turn. Your attack only deals normal damage, and the next ally to hit the target automatically confirms the attack as a critical hit.",
                          summary: "When you confirm a critical hit against a creature, you can choose to forgo the effect of the critical hit and grant a critical hit to the next ally who hits that creature with a melee attack before…",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Charge of the Righteous (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, any good alignment.",
                          benefit: "You do not take a penalty to AC while charging undead creatures and evil outsiders.",
                          normal: "When you charge, you take a –2 penalty to AC until the start of your next turn.",
                          summary: "You do not take a penalty to AC while charging undead creatures and evil outsiders.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Divination Guide",
                          featType: "General",
                          prerequisites: "Caster level 3rd, ability to cast augury or divination, must worship a deity.",
                          benefit: "Whenever you cast augury or divination, you receive further guidance from your deity’s agents. You gain a +1 sacred bonus if your worship a good deity or a +1 profane bonus if you worship an evil deity (if you worship a neutral deity the type of bonus is either determined by the type of energy you channel with the channel energy class feature or, if you don’t have that class ability, your choice upon taking this feat) on all saving throws for 1 minute per caster level of the augury or divination spell you cast.",
                          summary: "Whenever you cast augury or divination, you receive further guidance from your deity’s agents.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Drunken Brawler (Combat)",
                          featType: "General",
                          prerequisites: "Endurance, worshiper of Cayden Cailean.",
                          benefit: "When you drink a tankard of ale or strong alcohol, you take a –2 penalty on Reflex saving throws, but gain a number of temporary hit points equal to your character level, and gain a +2 alchemical bonus on Fortitude and Will saving throws. These bonuses last 1 hour or until the temporary hit points gained by this effect are lost, whichever occurs first. Regardless, the penalty lasts for a full hour.",
                          summary: "When you drink a tankard of ale or strong alcohol, you take a –2 penalty on Reflex saving throws, but gain a number of temporary hit points equal to your character level, and gain a +2 alchemical…",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Glorious Heat",
                          featType: "General",
                          prerequisites: "Ability to cast divine spells, caster level 5th, worshiper of Sarenrae.",
                          benefit: "Whenever you cast a divine spell with the fire descriptor, choose a single ally within 30 feet that you can see. That ally heals a number of hit points equal to half your level and gains a +1 morale bonus on attack rolls until the end of its next turn.",
                          summary: "Whenever you cast a divine spell with the fire descriptor, choose a single ally within 30 feet that you can see.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nimble Natural Summons",
                          featType: "General",
                          prerequisites: "Augmented Summoning, Spell Focus (conjuration), ability to cast summon nature’s ally, caster level 6th, worshiper of Erastil.",
                          benefit: "Creatures you summon with summon nature’s ally can move through any sort of undergrowth (such as natural thorns, briars, and similar terrain) at their normal speeds without taking damage or suffering other impairment. Thorns, briars, and undergrowth areas that have been magically manipulated to impede motion, however, still affect summoned creatures.",
                          summary: "Creatures you summon with summon nature’s ally can move through any sort of undergrowth (such as natural thorns, briars, and similar terrain) at their normal speeds without taking damage or suffering…",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Protector's Strike",
                          featType: "General",
                          prerequisites: "Base attack bonus +5, smite evil class feature.",
                          benefit: "When you choose the target of your smite evil ability, you also choose one creature other than you within line of sight. While your smite is in effect, the additional creature you chose gains a deflection bonus to AC equal to your Charisma modifier against attacks made by the target of the smite. This bonus ends when the smite ends. You do not gain the deflection bonus to AC normally granted by smite evil.",
                          normal: "While smite evil is in effect, the paladin gains a deflection bonus to her AC equal to her Charisma bonus (if any) against attacks made by the target of her smite attack.",
                          summary: "When you choose the target of your smite evil ability, you also choose one creature other than you within line of sight.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spear Dancer (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus (any two-handed reach weapon), Perform (dance) 4 ranks.",
                          benefit: "Each time you hit a creature with a twohanded reach weapon that you have Weapon Focus in, the creature is dazzled for 1 round.",
                          summary: "Each time you hit a creature with a twohanded reach weapon that you have Weapon Focus in, the creature is dazzled for 1 round.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stone Read",
                          featType: "General",
                          prerequisites: "Knowledge (dungeoneering) 4 ranks.",
                          benefit: "You gain a +3 bonus on Perception checks in underground or mountainous environments. If you have 10 or more ranks in Knowledge (dungeoneering), this bonus increases to +6.",
                          summary: "You gain a +3 bonus on Perception checks in underground or mountainous environments. If you have 10 or more ranks in Knowledge (dungeoneering), this bonus increases to +6.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Undermining Exploit",
                          featType: "General",
                          prerequisites: "Knowledge (dungeoneering) 4 ranks.",
                          benefit: "You gain a +4 insight bonus on combat maneuver checks against opponents occupying a square of rocky difficult terrain such as rubble, broken ground, or steep stairs.",
                          summary: "You gain a +4 insight bonus on combat maneuver checks against opponents occupying a square of rocky difficult terrain such as rubble, broken ground, or steep stairs.",
                          source: "Inner Sea Gods, Faiths of Purity", isPremium: true),

                    // // MARK: - Inner Sea Intrigue
        )
        try await db.insertFeat(
        .make("Convincing Persona",
                          featType: "General",
                          prerequisites: "Bluff 5 ranks, Perform (act) 5 ranks, or dual identityUI class feature.",
                          benefit: "Your dual identity is never considered publicly compromised barring some massive, public unmasking, allowing you to benefit from your dual identity or masked persona regardless of how many people know your true identity. You gain a +5 circumstance bonus on Bluff skill checks to convince people your masked persona and your true identity are entirely different people, and on Disguise checks to maintain your masked persona.",
                          summary: "Your dual identity is never considered publicly compromised barring some massive, public unmasking, allowing you to benefit from your dual identity or masked persona regardless of how many people…",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Stylized Spell",
                          featType: "General",
                          prerequisites: "Stylized Spell UI, Bluff 10 ranks, Spellcraft 10 ranks.",
                          benefit: "When you modify a spell with Stylized Spell, you can apply one of the stylized magic options (see the Styalized spell metamagic) without reducing the DC of the check to identify the spell. In addition, you can apply up to two additional stylized magic options, reducing the DC of checks to identify the spell by 5 per option as normal.",
                          summary: "When you modify a spell with Stylized Spell, you can apply one of the stylized magic options (see the Styalized spell metamagic) without reducing the DC of the check to identify the spell.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Masked Renown",
                          featType: "General",
                          prerequisites: "Cha 13, Disguise 2 ranks.",
                          benefit: "You gain the vigilante’s renown social talent (Ultimate Intrigue 12), allowing you to gather and maintain a reputation in a community.",
                          special: "Beginning at 9th level, you can select this feat a second time to gain the great renown vigilante social talent.",
                          summary: "You gain the vigilante’s renown social talent (Ultimate Intrigue 12), allowing you to gather and maintain a reputation in a community.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Masked Symbol",
                          featType: "General",
                          prerequisites: "Disguise 1 rank or dual identityUI class feature.",
                          benefit: "Your masked persona represents a particular concept, granting you a benefit while in your masked persona or vigilante identity. Each time you gain a new character level, you can choose to embody a different symbol, forgoing your previous bonus and gaining a new one. Faith: +2 circumstance bonus on Diplomacy checks against creatures of your faith; +2 circumstance bonus on Intimidate checks against enemies of your faith. Fear: +3 circumstance bonus on Intimidate checks. Hope: +3 circumstance bonus on Diplomacy checks. Leadership: +2 bonus to your Leadership score. Mystery: +2 circumstance bonus on Disguise checks to conceal your true identity; +2 circumstance bonus on Stealth checks to enter or escape unseen. The People: +2 circumstance bonus on checks to influence crowds. Trust: +2 circumstance bonus on Bluff checks to lie and Diplomacy checks to make requests.",
                          summary: "Your masked persona represents a particular concept, granting you a benefit while in your masked persona or vigilante identity.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stylized Spell Mastery",
                          featType: "General",
                          prerequisites: "Spell Mastery, Stylized Spell UI, Bluff 5 ranks, Spellcraft 5 ranks.",
                          benefit: "You do not modify the spell slot used when applying the Stylized Spell metamagic feat to any spell you have mastered with Spell Mastery.",
                          normal: "A stylized spell uses up a spell slot 1 higher than the spell’s actual level.",
                          summary: "You do not modify the spell slot used when applying the Stylized Spell metamagic feat to any spell you have mastered with Spell Mastery.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stylized Spontaneity",
                          featType: "General",
                          prerequisites: "Bluff 5 ranks, Spellcraft 5 ranks.",
                          benefit: "When you cast a spell, you can apply any number of the stylized magic modifications; however, you must succeed at a caster level check (DC = 5 + twice the spell’s level + 5 per modification) or the magic is too badly warped to function and the spell is wasted with no effect",
                          summary: "When you cast a spell, you can apply any number of the stylized magic modifications; however, you must succeed at a caster level check (DC = 5 + twice the spell’s level + 5 per modification) or the…",
                          source: "Inner Sea Intrigue", isPremium: true),

                    // // MARK: - Inner Sea Magic
        )
        try await db.insertFeat(
        .make("False Casting",
                          featType: "General",
                          prerequisites: "Magical Aptitude, Bluff 1 rank, Sleight of Hand 1 rank.",
                          benefit: "When you use a magic item or a spelllike ability to create a magical effect, you may add additional magic-seeming words and hand gestures to trick onlookers into believing you cast the spell yourself. If using an item that is recognizable as a magical implement (such as a wand or ring), you can trick viewers into thinking you are just using the item as a focus component. Onlookers who have no ranks in Spellcraft have no knowledge of what is genuine spellcasting, and automatically believe you are casting a spell. If an onlooker attempts a Spellcraft check to identify your “casting,” his check is opposed by your Bluff check. If he succeeds, he realizes the deception. If he fails, he believes you cast the spell. Regardless of the result of that opposed check, he uses the result of that Spellcraft check to identify the “spell” you cast, except the DC is 20 + the spell’s level instead of 15 + the spell’s level.",
                          summary: "When you use a magic item or a spelllike ability to create a magical effect, you may add additional magic-seeming words and hand gestures to trick onlookers into believing you cast the spell…",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("False Focus",
                          featType: "General",
                          prerequisites: "Knowledge (religion) 1 rank, ability to cast arcane spells.",
                          benefit: "By using a divine focus as part of casting, you can cast any spell with a material component costing the value of that divine focus (maximum 100 gp) or less without needing that component. For example, if you use a silver holy symbol worth 25 gp, you do not have to provide material components for an arcane spell if its components are worth 25 gp or less. The casting of the spell still provokes attacks of opportunity as normal. If the spell requires a material component that costs more than the value of the divine focus, you must have the material component on hand to cast the spell, as normal.",
                          normal: "A divine focus has no effect when used as a component in arcane spells.",
                          summary: "By using a divine focus as part of casting, you can cast any spell with a material component costing the value of that divine focus (maximum 100 gp) or less without needing that component.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inscribe Magical Tattoo (Item Creation)",
                          featType: "General",
                          prerequisites: "Craft (calligraphy, paintings, or tattoos) 5 ranks, caster level 5th",
                          benefit: "You can create magical tattoos, magic items inked directly into the flesh of a willing or helpless creature. Both you and the recipient of the tattoo (if the recipient is not yourself) must be present during the entire tattooing process. Magic tattoos must be placed on a part of the body normally able to hold a magic item slot, but they do not count against or interfere with magic items worn on those slots. A single slot can only hold one magical tattoo (nonmagical tattoos and tattoos acquired from the tattooed sorcerer archetype do not count against this limit). Tattoos may be inscribed on the following slots: belt, body, chest, feet, hands, head, neck, shoulder, ring (up to two), or wrist. They cannot be inscribed on armor, eye, headband, or shield slots. Magical tattoos are difficult to destroy, though they count as magic items for the purposes of dispel magic. The spell erase can permanently destroy a magical tattoo, but the bearer of the tattoo can resist the spell with a Will save, in addition to the caster needing to make a successful caster level check to erase the tattoo. Physically removing a magical tattoo with a sharp instrument or defacing it with fire or acid can destroy it as well. Doing so is a full-round action that not only requires the target to be willing or helpless, but also provokes attacks of opportunity. At least 2 points of damage per caster level of the tattoo must be dealt to destroy a magical tattoo in this manner. Magical tattoos follow the rules for magic item creation as though they were wondrous items, except that they can use the Craft (calligraphy, paintings, tattoos) skill. New magical tattoos can be researched and designed using the guidelines for pricing new magic items. Magical tattoos are treated as slotless magical items for pricing purposes.",
                          summary: "You can create magical tattoos, magic items inked directly into the flesh of a willing or helpless creature.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shadow Gambit",
                          featType: "General",
                          prerequisites: "Spell Focus (illusion), caster level 5th.",
                          benefit: "As a standard action, you can draw upon energies from the Plane of Shadow to cause an ongoing figment spell you cast to damage a foe as if the illusion were real. The illusion must be one you retain ongoing control of, such as minor image, and the target must be both visible to you and within or adjacent to the area of your illusion. Using this feat immediately ends the figment’s duration. You must either make a melee touch attack or give the target a saving throw (Fortitude or Reflex) to resist the damage (see below). If you choose a melee touch attack, you use your own melee touch attack bonus, and if you miss, the spell deals no damage. If you choose to allow the target a saving throw, a successful save means it takes half damage. The shadowy attack deals 1d6 points of damage per spell level. If the target disbelieves or sees through the illusion, reduce the damage by half. The shadowy attack can deal acid, bludgeoning, cold, electricity, fire, piercing, or slashing damage, but the damage must be appropriate to the illusion. For example, an illusory wall that collapses deals bludgeoning damage with a Fortitude save for half, an illusory swordsman strikes with a melee touch attack deals slashing damage, and an illusory wall of fire deals fire damage with a Reflex save for half.",
                          summary: "As a standard action, you can draw upon energies from the Plane of Shadow to cause an ongoing figment spell you cast to damage a foe as if the illusion were real.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shadow Grasp (Metamagic)",
                          featType: "General",
                          prerequisites: "Tenebrous Spell, Umbral Spell.",
                          benefit: "When you cast a spell with the darkness descriptor that affects an area, creatures in the area are entangled. If the spell allows a saving throw, a successful save negates the entangle effect. If the spell does not normally allow a save, a creature can make a Reflex save (DC = the spell’s DC if it had a saving throw) to negate the effect. If the spell allows spell resistance, failing to overcome a creature’s spell resistance means it is not entangled. An entangled creature remains so as long as it is in the area of the spell and for 1 round after it leaves. A creature that leaves and reenters the area must make a new saving throw to avoid becoming entangled. Creatures that succeed at a save to resist being entangled do not have to make additional saves if they stay within the darkened area. You are never impeded by the effects of your spells modified by this feat. A Shadow Grasp spell uses up a slot one level higher than the spell’s actual level.",
                          summary: "When you cast a spell with the darkness descriptor that affects an area, creatures in the area are entangled. If the spell allows a saving throw, a successful save negates the entangle effect.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tenebrous Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you cast a tenebrous spell in darkness or dim light, the spell’s effective caster level and any associated save DCs are increased by 1. Any attempts at dispelling a tenebrous spell in darkness or dim light take a –2 penalty on the dispel check. Casting a tenebrous spell in bright light is difficult, and requires a concentration check (DC 15 + twice the tenebrous spell’s effective spell level). Attempts to dispel a tenebrous spell in bright light gain a +4 bonus on the dispel check. You cannot use this feat on spells with the light descriptor. A tenebrous spell uses up a spell slot one level higher than the spell’s actual level, except in the case of spells with the darkness or shadow descriptor or of the illusion (shadow) subschool; this feat does not change the effective level of those spells (but still counts as using a metamagic feat for all other purposes).",
                          summary: "When you cast a tenebrous spell in darkness or dim light, the spell’s effective caster level and any associated save DCs are increased by 1.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertFeat(
        .make("Umbral Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Tenebrous Spell.",
                          benefit: "An umbral spell gains the darkness descriptor. As long as the spell is in effect, the creature or object affected radiates darkness in a 10-foot radius, reducing illumination similar to the effects of the darkness spell. Nonmagical sources of light, such as torches or lanterns, do not increase the light level in this area. Magical light sources only increase the light level in an area affected by an umbral spell if they are of a higher level than the umbral spell’s unmodified spell level. This effect does not stack with itself or with any other effect that creates darkness. An umbral spell uses up a spell slot two levels higher than the spell’s actual level. You cannot use this feat on a spell with an instantaneous duration or a spell that does not target a creature or object.",
                          summary: "An umbral spell gains the darkness descriptor. As long as the spell is in effect, the creature or object affected radiates darkness in a 10-foot radius, reducing illumination similar to the effects…",
                          source: "Inner Sea Magic", isPremium: true),

                    // // MARK: - Inner Sea Monster Codex
        )
        try await db.insertFeat(
        .make("Assured Destruction",
                          featType: "General",
                          prerequisites: "Empowered Daemonic Pact, urdefhan.",
                          benefit: "When you use your daemonic pact ability and allow your soul to be consumed, you automatically succeed. The amount of negative energy damage dealt by your daemonic pact ability increases to 3d6 points, and the profane bonus to the save DC increases to +4.",
                          normal: "The daemonic pact ability has a 50% chance of success per attempt, and it deals 2d6 points of negative energy damage.",
                          summary: "When you use your daemonic pact ability and allow your soul to be consumed, you automatically succeed.",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Buffeting Wings (Combat)",
                          featType: "General",
                          prerequisites: "Hover, Powerful Wings.",
                          benefit: "As a full-round action, you can beat your wings to create a blast of air as the gust of wind spell. This is an extraordinary ability.",
                          special: "While the following feats are primarily taken by strix, other creatures with natural wings can also take them at the GM's discretion.",
                          summary: "As a full-round action, you can beat your wings to create a blast of air as the gust of wind spell. This is an extraordinary ability.",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cloak of Feathers",
                          featType: "General",
                          prerequisites: "Cha 13, strix.",
                          benefit: "When you fold your wings, you gain a +2 bonus on Disguise checks to pose as a human, and ignore the penalties for disguising yourself as a different race while doing so. Additionally, you can hide one small item within your wings’ folds (such as a potion, a wand, a weapon weighing 1 pound or less, or a similarly sized item at your GM’s discretion). Any such hidden item requires a successful DC 25 Perception check for others to notice. You can retrieve this item with a swift action, but unfolding your wings causes it to drop to the ground.",
                          special: "Other creatures with natural wings can also take Cloak of Feathers at the GM's discretion, ignoring the racial prerequisite",
                          summary: "When you fold your wings, you gain a +2 bonus on Disguise checks to pose as a human, and ignore the penalties for disguising yourself as a different race while doing so.",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Empowered Daemonic Pact",
                          featType: "General",
                          prerequisites: "Urdefhan.",
                          benefit: "When you succeed at using your daemonic pact ability and allow your soul to be consumed, the resulting blast’s radius increases to 10 feet, and you gain a +2 profane bonus to the DC of the Reflex save victims must attempt to halve this damage.",
                          normal: "A successful use of the daemonic pact ability deals negative energy damage to creatures in a 5-foot radius.",
                          summary: "When you succeed at using your daemonic pact ability and allow your soul to be consumed, the resulting blast’s radius increases to 10 feet, and you gain a +2 profane bonus to the DC of the Reflex…",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fling (Combat)",
                          featType: "General",
                          prerequisites: "Flyby Attack, Powerful Wings, Snatch and Drop, Throw Anything.",
                          benefit: "Whenever you successfully grapple an opponent using the Snatch and Drop feat, you can instead fling your victim at another target. You can throw a creature 10 feet, plus an additional 5 feet for every size category by which it is smaller than you. To strike another target, make a ranged touch attack. If you hit, the attack deals damage to both the creature flung and its intended target. This damage is equal to that of a slam attack of a creature two sizes larger than the creature being flung (see page 302 of the Pathfinder RPG Bestiary) plus your Strength modifier. The flung creature lands prone in the nearest adjacent square to the target, and the target must succeed at a Reflex saving throw (DC = 10 + damage dealt) or also fall prone in its own square. You can’t use this feat if the weight of the creature you intend to fling exceeds the amount you can carry as a heavy load.",
                          special: "While the following feats are primarily taken by strix, other creatures with natural wings can also take them at the GM's discretion.",
                          summary: "Whenever you successfully grapple an opponent using the Snatch and Drop feat, you can instead fling your victim at another target.",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Graceful Flier",
                          featType: "General",
                          prerequisites: "Skill Focus (Fly), fly speed.",
                          benefit: "You are a gifted flier. While wearing light or no armor, your fly speed increases by 5 feet and your maneuverability is one step better than normal, to a maximum of good. You lose the benefits of this feat if you carry a medium or heavy load.",
                          special: "While the following feats are primarily taken by strix, other creatures with natural wings can also take them at the GM's discretion.",
                          summary: "You are a gifted flier. While wearing light or no armor, your fly speed increases by 5 feet and your maneuverability is one step better than normal, to a maximum of good.",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Guardian of Tradition",
                          featType: "General",
                          prerequisites: "Domain class feature, girtablilu.",
                          benefit: "You can replace one of the domains offered by your deity with one of the following druid domains: Desert (Ultimate Magic 34), Ruins, or Vermin. You gain a +1 bonus to your caster level when casting domain spells from the selected domain.",
                          summary: "You can replace one of the domains offered by your deity with one of the following druid domains: Desert (Ultimate Magic 34), Ruins, or Vermin.",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Powerful Wings (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Skill Focus (Fly), base attack bonus +8.",
                          benefit: "You gain two wing attacks. These are secondary natural attacks that each deal damage appropriate to a creature one size category larger than yourself (see page 302 of the Bestiary). You are also considered one size category larger for the purposes of any feats or abilities related to your wings, such as the Hover feat.",
                          special: "While the following feats are primarily taken by strix, other creatures with natural wings can also take them at the GM's discretion.",
                          summary: "You gain two wing attacks. These are secondary natural attacks that each deal damage appropriate to a creature one size category larger than yourself (see page 302 of the Bestiary).",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Siphoning Blade (Combat)",
                          featType: "General",
                          prerequisites: "Voracious Blade, Weapon Focus (rhoka sword), base attack bonus +8, urdefhan.",
                          benefit: "When you use the Voracious Blade feat to deal Strength damage with your rhoka sword, you also drain the victim’s blood. The attack deals 1 point of bleed damage in addition to its normal damage, and you gain fast healing 2 for 3 rounds. You can use this ability only once against an individual creature in a 24-hour period.",
                          summary: "When you use the Voracious Blade feat to deal Strength damage with your rhoka sword, you also drain the victim’s blood.",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Skaveling Companion",
                          featType: "General",
                          prerequisites: "7th level in a class that grants an animal companion or mount, urdefhan.",
                          benefit: "In place of the animal companion or mount granted by your class feature, you are bonded with a skaveling (Bestiary 2 42). Though less intelligent than others of its kind and lacking the ability to paralyze and infect victims with its bite, the beast serves you unerringly.",
                          summary: "In place of the animal companion or mount granted by your class feature, you are bonded with a skaveling (Bestiary 2 42).",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Snatch and Drop (Combat)",
                          featType: "General",
                          prerequisites: "Flyby Attack, Powerful Wings.",
                          benefit: "When you succeed at a grapple combat maneuver check as part of a flyby attack, you can move yourself and your target up to half your remaining fly speed. You must drop your target before the end of your turn, or both you and your target crash to the ground immediately and take 2d6 points of falling damage each. A dropped creature takes falling damage as normal. You can’t use this feat on creatures whose weight would exceed the amount you can carry as a heavy load.",
                          special: "While the following feats are primarily taken by strix, other creatures with natural wings can also take them at the GM's discretion.",
                          summary: "When you succeed at a grapple combat maneuver check as part of a flyby attack, you can move yourself and your target up to half your remaining fly speed.",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Urdefhan Bladebreaker (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, proficiency with the rhoka sword, urdefhan.",
                          benefit: "When wielding a rhoka sword, you can attempt to sunder an opponent’s sword or other slender-bladed weapon without provoking an attack of opportunity. You gain a +2 circumstance bonus on the combat maneuver check to do so.",
                          summary: "When wielding a rhoka sword, you can attempt to sunder an opponent’s sword or other slender-bladed weapon without provoking an attack of opportunity.",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertFeat(
        .make("Voracious Blade (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus (rhoka sword), base attack bonus +4, urdefhan.",
                          benefit: "When wielding a rhoka sword, you can channel your daemonic energies through the blade as a swift action, causing it to deal Strength damage as your bite attack. You can use this ability a number of times per day equal to your Constitution modifier (minimum 1).",
                          summary: "When wielding a rhoka sword, you can channel your daemonic energies through the blade as a swift action, causing it to deal Strength damage as your bite attack.",
                          source: "Inner Sea Monster Codex", isPremium: true),

                    // // MARK: - Inner Sea Races
        )
        try await db.insertFeat(
        .make("Alien Mindpaths (Teamwork)",
                          featType: "General",
                          prerequisites: "Android, kasatha, lashunta, or Triaxian.",
                          benefit: "Whenever you’re adjacent to at least one other android, kasatha, lashunta, or Triaxian ally who also has this feat, you gain a +4 circumstance bonus on saves against mind-affecting effects and divination (scrying) effects, unless the effect comes from an android, kasatha, lashunta, or Triaxian.",
                          summary: "Whenever you’re adjacent to at least one other android, kasatha, lashunta, or Triaxian ally who also has this feat, you gain a +4 circumstance bonus on saves against mind-affecting effects and…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ambush Squad (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, kobold.",
                          benefit: "When you’re adjacent to an ally who also has this feat at the beginning of a surprise round, and both you and that ally can act during that surprise round, you can take both a standard action and a move action during that surprise round.",
                          normal: "You can take only a standard action or a move action during a surprise round.",
                          summary: "When you’re adjacent to an ally who also has this feat at the beginning of a surprise round, and both you and that ally can act during that surprise round, you can take both a standard action and a…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Amplified Radiance (Teamwork)",
                          featType: "General",
                          prerequisites: "Aasimar, daylight racial spell-like ability.",
                          benefit: "Whenever you are within 15 feet of an aasimar ally who has both the daylight racial spell-like ability and this feat, you gain an aura of radiance. You and your ally must both have at least one use of your daylight racial spell-like ability available to gain this benefit. This aura functions as per the daylight spell, except that it’s a 10-foot-radius emanation centered on you without additional areas of weaker illumination. Creatures within this aura who take penalties in bright light double those penalties. The effects of overlapping auras of radiance don’t stack. You can activate or suppress this aura as a swift action.",
                          summary: "Whenever you are within 15 feet of an aasimar ally who has both the daylight racial spell-like ability and this feat, you gain an aura of radiance.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ancestral Weapon Mastery (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, weapon familiarity racial trait.",
                          benefit: "You’re proficient with all of your race’s racial weapons (the weapons mentioned in your race’s weapon familiarity racial trait). If you’re already proficient with any of those weapons, you instead gain Weapon Focus for one of those weapons as a bonus feat. Furthermore, if you gain Weapon Focus as a bonus feat with one of your racial weapons as a result of this feat, you can change which racial weapon your bonus Weapon Focus feat applies to by engaging in 10 minutes of practice with the new weapon. The benefits of this bonus Weapon Focus feat last until you choose to practice and apply it to a different racial weapon.",
                          summary: "You’re proficient with all of your race’s racial weapons (the weapons mentioned in your race’s weapon familiarity racial trait).",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Artillery Team (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Proficiency with light crossbow, heavy crossbow, or musket; size Small or Medium.",
                          benefit: "When you’re adjacent to an ally who also has this feat, together you count as being Large for the purpose of using Large light crossbows, Large heavy crossbows, and Large muskets. Firing such a weapon this way requires your ally to support the barrel or bow of the weapon. You must be able to trace a line from your space to the target’s space in such a way that the line passes through the ally’s space. The ally doesn’t provide soft cover to your target. Your ally uses her actions to load the weapon, and you use your actions to make attacks. Similarly, your ally’s feats and abilities apply to reloading, while your feats and abilities apply to making attacks. This feat does not allow you and your ally to act simultaneously on the same initiative.",
                          summary: "When you’re adjacent to an ally who also has this feat, together you count as being Large for the purpose of using Large light crossbows, Large heavy crossbows, and Large muskets.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Barrage of Styles (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, human.",
                          benefit: "You gain a cumulative +1 morale bonus (maximum +4) on combat maneuver checks for each human ally who also has this feat, is threatening the same foe, and does not share an ethnicity with you or any other ally threatening that foe.",
                          summary: "You gain a cumulative +1 morale bonus (maximum +4) on combat maneuver checks for each human ally who also has this feat, is threatening the same foe, and does not share an ethnicity with you or any…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blades Above and Below (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6.",
                          benefit: "When you and your ally who also has this feat threaten the same enemy, you’re both considered to be flanking that enemy, regardless of your actual positioning. To gain this benefit, you and your ally must be of different size categories, and your target must be the same size category as either you or your ally.",
                          summary: "When you and your ally who also has this feat threaten the same enemy, you’re both considered to be flanking that enemy, regardless of your actual positioning.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Burn It Down! (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, goblin.",
                          benefit: "Whenever you make an attack with a torch, a flask of lamp oil fitted with a fuse, alchemist’s fire, or a flaming weapon, you gain a morale bonus on your damage roll equal to the number of goblin allies within 30 feet who also have this feat (maximum +4). This bonus damage is fire damage.",
                          summary: "Whenever you make an attack with a torch, a flask of lamp oil fitted with a fuse, alchemist’s fire, or a flaming weapon, you gain a morale bonus on your damage roll equal to the number of goblin…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Child of Two Fates",
                          featType: "General",
                          prerequisites: "Knowledge (local) 5 ranks, half-elf.",
                          benefit: "Once per day, you can select a teamwork feat that a human or elf ally within 30 feet possesses. You can ignore any race, ethnicity, or racial trait prerequisites, but you must still meet any other prerequisites for that feat to gain this benefit. You’re treated as if you possess that feat for up to 1 minute, as long as you stay within 30 feet of the ally whose teamwork feat you have chosen to emulate.",
                          summary: "Once per day, you can select a teamwork feat that a human or elf ally within 30 feet possesses.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Choir of Blades (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "While you’re adjacent to an ally of a race different that your own who also has this feat, you gain the following benefits. If your ally has a racial bonus on attack rolls against a particular creature type or subtype, you also gain that bonus. If your ally has ancestral arms, weapon familiarity, or any other racial trait that grants weapon proficiencies, you also gain those proficiencies.",
                          summary: "While you’re adjacent to an ally of a race different that your own who also has this feat, you gain the following benefits.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Concentrated Fire (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, elf, weapon familiarity racial trait.",
                          benefit: "If you and a single ally who also has this feat both ready an action to each make a ranged attack against the same opponent and choose the same condition for the readied action, when you and the ally make those attacks, each of you can use the highest of the two attack rolls for your attack roll. Furthermore, if you and your ally both hit the target, you can total the damage for both attacks before applying the target’s damage reduction or energy resistance.",
                          summary: "If you and a single ally who also has this feat both ready an action to each make a ranged attack against the same opponent and choose the same condition for the readied action, when you and the ally…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cooperative Counterspelling (Teamwork)",
                          featType: "General",
                          prerequisites: "Spellcraft 5 ranks, racial spell-like ability replicating a spell of 1st level or higher.",
                          benefit: "When you and an ally who also has this feat both ready an action to counterspell, you can counter a spell if you both expend any spell of the same level and school as the spell you wish to counter. If you both attempt to counterspell with dispel magic, you each gain a +2 bonus on your caster level checks. If you have more than one ally readying an action to counterspell, you can select only one of those allies for the purpose of this feat, and that ally must also select you.",
                          summary: "When you and an ally who also has this feat both ready an action to counterspell, you can counter a spell if you both expend any spell of the same level and school as the spell you wish to counter.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Coordinated Blast (Teamwork)",
                          featType: "General",
                          prerequisites: "Spellcraft 5 ranks, any racial spell-like ability.",
                          benefit: "Whenever you use a spell or ability with an area (such as fireball or channel energy), you can exclude any number of allies who also have this feat from that area of effect.",
                          summary: "Whenever you use a spell or ability with an area (such as fireball or channel energy), you can exclude any number of allies who also have this feat from that area of effect.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crowd of Bullies (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Half-orc.",
                          benefit: "Whenever you fail a combat maneuver check, your allies within 30 feet who also have this feat gain a +2 circumstance bonus on combat maneuver checks of the same type against the same foe for 1 round.",
                          summary: "Whenever you fail a combat maneuver check, your allies within 30 feet who also have this feat gain a +2 circumstance bonus on combat maneuver checks of the same type against the same foe for 1 round.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deadly Troupe (Teamwork)",
                          featType: "General",
                          prerequisites: "Perform (act) or Perform (dance) 3 ranks, human (Varisian).",
                          benefit: "When at least one ally who also has this feat is threatening a foe, you gain a +4 circumstance bonus against that foe on Bluff checks to feint, Bluff checks to create a diversion to hide, and Acrobatics checks to move through that foe’s threatened squares. You also gain a +2 circumstance bonus on steal and dirty trick combat maneuver checks made against that foe.",
                          summary: "When at least one ally who also has this feat is threatening a foe, you gain a +4 circumstance bonus against that foe on Bluff checks to feint, Bluff checks to create a diversion to hide, and…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Death Roll (Combat)",
                          featType: "General",
                          prerequisites: "Bite attack, reptilian subtype.",
                          benefit: "When grappling a foe of your size or smaller, you can attempt to perform a death roll. Upon a successful grapple combat maneuver check to deal damage with your bite attack, you can immediately attempt a second grapple combat maneuver check as a free action. If successful, you knock the target prone. Upon knocking the target prone, you must either release the grapple or fall prone and maintain the grapple. This doesn’t count as a combat maneuver check to maintain the grapple, and doesn’t add any other effects (such as constrict) beyond knocking the target prone.",
                          summary: "When grappling a foe of your size or smaller, you can attempt to perform a death roll.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Diplomatic Ruse (Teamwork)",
                          featType: "General",
                          prerequisites: "Diplomacy 3 ranks, human (Keleshite).",
                          benefit: "Whenever you’re adjacent to an ally who also has this feat, you can perform a quick, seemingly courteous gesture when you make an initiative check. As part of the gesture, you can perform a single free action, such as dropping an item or entering rage. This feat can be used only when combat breaks out after a conversation, such as from failed negotiations.",
                          summary: "Whenever you’re adjacent to an ally who also has this feat, you can perform a quick, seemingly courteous gesture when you make an initiative check.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Echoes of the First World (Teamwork)",
                          featType: "General",
                          prerequisites: "Knowledge (nature) 2 ranks, gnome subtype.",
                          benefit: "While you’re adjacent to an ally who has the gnome subtype and who also has this feat, you gain DR 2/cold iron, and you count as fey instead of humanoid for the purposes of effects that target creatures by type. You still count as having the gnome subtype, however.",
                          summary: "While you’re adjacent to an ally who has the gnome subtype and who also has this feat, you gain DR 2/cold iron, and you count as fey instead of humanoid for the purposes of effects that target…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eclipse Strike (Teamwork)",
                          featType: "General",
                          prerequisites: "Tiefling, darkness racial spell-like ability.",
                          benefit: "You can attack with an eclipse strike as a standard action if you and an ally who also has this feat are both flanking the target. You and your ally must both have at least one use of your darkness racial spell-like ability available to make this attack. If your eclipse strike hits, your target is blinded for 1 round. Creatures that have the see in darkness ability are immune to the blindness that is caused by an eclipse strike.",
                          summary: "You can attack with an eclipse strike as a standard action if you and an ally who also has this feat are both flanking the target.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elemental Strike (Combat)",
                          featType: "General",
                          prerequisites: "Ifrit, oread, sylph, or undine.",
                          benefit: "As a swift action, you can imbue your weapons with elemental energy. For 1 round, your weapons deal an additional 1 point of energy damage. The type of energy damage depends on your race: acid for oread, electricity for sylph, fire for ifrit, or cold for undine. For every 5 levels you possess, this bonus increases by 1, to a maximum of +5 at 20th level.",
                          special: "You can use this feat instead of Arcane Strike to qualify for or attack with the Deadly Dealer feat (Pathfinder Player Companion: The Harrow Handbook 15).",
                          summary: "As a swift action, you can imbue your weapons with elemental energy. For 1 round, your weapons deal an additional 1 point of energy damage.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eternal Enmity",
                          featType: "General",
                          prerequisites: "Knowledge 3 ranks (see special), hatred racial trait.",
                          benefit: "Your attacks deal an additional 1d6 points of precision damage against targets of your hatred racial trait. This bonus damage stacks with other sources of precision damage, such as sneak attack. If your hatred racial trait applies to two creature types or subtypes, you must choose one of them—this feat applies to targets of that type (and subtype, if applicable). Once made, this choice cannot be changed.",
                          special: "The Knowledge skill used to qualify for this feat must be appropriate for identifying creatures of the chosen type.",
                          summary: "Your attacks deal an additional 1d6 points of precision damage against targets of your hatred racial trait. This bonus damage stacks with other sources of precision damage, such as sneak attack.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extraplanar Conjunction (Teamwork)",
                          featType: "General",
                          prerequisites: "Any racial spell-like ability, outsider.",
                          benefit: "Whenever you’re adjacent to an outsider ally who also has this feat, the DC of any racial spell-like abilities you use increases by 2 if your ally has the same racial spell-like ability. The proximity of multiple allies can’t increase the DC further.",
                          summary: "Whenever you’re adjacent to an outsider ally who also has this feat, the DC of any racial spell-like abilities you use increases by 2 if your ally has the same racial spell-like ability.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eyes of the Twilight",
                          featType: "General",
                          prerequisites: "Sharp Senses APG, Perception 7 ranks, keen senses racial trait, low-light vision.",
                          benefit: "Creatures within an area of dim light don’t gain concealment from you. You’re still effectively blinded in an area of darkness.",
                          normal: "Creatures within an area of dim light gain concealment (20% miss chance in combat) from those without darkvision or the ability to see in darkness.",
                          summary: "Creatures within an area of dim light don’t gain concealment from you. You’re still effectively blinded in an area of darkness.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ferocious Horde (Teamwork)",
                          featType: "General",
                          prerequisites: "Orc, ferocity racial trait.",
                          benefit: "Whenever you are at or below half of your full hit points and an orc ally within 30 feet who also has this feat is at or below half of her full hit points, you gain a +2 morale bonus on attack rolls.",
                          summary: "Whenever you are at or below half of your full hit points and an orc ally within 30 feet who also has this feat is at or below half of her full hit points, you gain a +2 morale bonus on attack rolls.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flow of Elements (Teamwork)",
                          featType: "General",
                          prerequisites: "Ability to cast spells; ifrit, oread, sylph, or undine.",
                          benefit: "Whenever you’re adjacent to an ifrit, oread, sylph, or undine ally who also has this feat, you can spontaneously replace or split a spell’s damage when casting it, as though the spell were affected by Elemental SpellAPG (without using a higher-level spell slot). The type of energy damage depends on your ally’s race: acid for oread, electricity for sylph, fire for ifrit, or cold for undine.",
                          summary: "Whenever you’re adjacent to an ifrit, oread, sylph, or undine ally who also has this feat, you can spontaneously replace or split a spell’s damage when casting it, as though the spell were affected…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Friendly Rivalry (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Human (Taldan).",
                          benefit: "If you’re the only one threatening a foe and an ally within 30 feet who also has this feat is the only creature threatening a different foe, you gain a +2 morale bonus on your melee attack rolls against the foe that only you are threatening. You gain the bonus only if neither of the qualifying opponents is flat-footed, helpless or otherwise unable to act. You must be able to see your ally to gain the benefit of this feat. If another ally who is not threatening your chosen foe makes any sort of attack against that foe (such as a ranged attack or a spell), you lose this feat’s benefit for 1 round.",
                          summary: "If you’re the only one threatening a foe and an ally within 30 feet who also has this feat is the only creature threatening a different foe, you gain a +2 morale bonus on your melee attack rolls…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Giantslaying Team (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Mobility, base attack bonus +4, defensive training racial trait.",
                          benefit: "Whenever a foe with the giant subtype you threaten misses with an attack of opportunity against an ally with this feat, you can make a melee attack against that giant as an immediate action.",
                          summary: "Whenever a foe with the giant subtype you threaten misses with an attack of opportunity against an ally with this feat, you can make a melee attack against that giant as an immediate action.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("High Magic Focus (Teamwork)",
                          featType: "General",
                          prerequisites: "Any metamagic feat, Spellcraft 7 ranks, ability to cast 2nd-level spells, human (Garundi).",
                          benefit: "With the help of allies who also have this feat, you can spontaneously apply metamagic feats to your spells without using a higher-level slot or increasing the casting time. Each ally must ready an action to cast the same spell you intend to cast. For each other ally within 30 feet who does so, you reduce the cost of the spontaneous metamagic feat by 1 level (to a minimum of 0, and you must have at least one ally assist you, even if the metamagic feat is normally a +0 adjustment). The allies don’t need to have the metamagic feat you choose to apply, and the effective level of the spell (after applying the metamagic feat) can’t be higher than the highest level of spells you can cast. Lastly, when you use this ability, the spell each ally readies is lost, as if they had cast that spell.",
                          summary: "With the help of allies who also have this feat, you can spontaneously apply metamagic feats to your spells without using a higher-level slot or increasing the casting time.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inspiring Talent (Teamwork)",
                          featType: "General",
                          prerequisites: "Half-elf, adaptability or ancestral arms racial trait.",
                          benefit: "Whenever you are within 30 feet of an ally who also has this feat, you gain the following benefits. If the ally has a Skill Focus feat, you also count as having that feat for the purpose of the following skill uses: Acrobatics checks to move through threatened squares, Bluff checks to feint, Escape Artist checks to escape a grapple, Intimidate checks to demoralize, Knowledge checks to identify a monster, and Perception checks to notice a creature using Stealth. Furthermore, if the ally has a weapon proficiency gained through the ancestral arms racial trait, you also count as having that weapon proficiency.",
                          summary: "Whenever you are within 30 feet of an ally who also has this feat, you gain the following benefits.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Juju Way (Teamwork)",
                          featType: "General",
                          prerequisites: "Knowledge (religion) 3 ranks, human (Mwangi).",
                          benefit: "You can cast spells with the range of “touch” at a range of 20 feet if the recipient is a willing Mwangi ally who also has this feat.",
                          summary: "You can cast spells with the range of “touch” at a range of 20 feet if the recipient is a willing Mwangi ally who also has this feat.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kinslayer",
                          featType: "General",
                          prerequisites: "Knowledge 3 ranks (see special), evil alignment.",
                          benefit: "Your attacks deal an additional 1d6 points of precision damage against creatures that have the same creature type (and subtype, if applicable) as you. This bonus damage stacks with other sources of precision damage, such as sneak attack. If you have more than one subtype, you must choose one of them—this feat applies only to targets of that subtype. Once made, this choice can’t be changed.",
                          special: "The Knowledge skill used to qualify for this feat must be appropriate for identifying creatures of your type.",
                          summary: "Your attacks deal an additional 1d6 points of precision damage against creatures that have the same creature type (and subtype, if applicable) as you.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Living Fortress (Teamwork)",
                          featType: "General",
                          prerequisites: "Dwarf, hardy racial trait.",
                          benefit: "Whenever you fight defensively and you’re adjacent to an ally who also has this feat, your racial bonus on saving throws against spells and spell-like abilities increases by 2.",
                          summary: "Whenever you fight defensively and you’re adjacent to an ally who also has this feat, your racial bonus on saving throws against spells and spell-like abilities increases by 2.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Loyal to the Death (Teamwork)",
                          featType: "General",
                          prerequisites: "Human (Tian).",
                          benefit: "Whenever an opponent makes a melee or ranged attack against one of your allies who is adjacent to you and who also has this feat, you can spend an immediate action to shield the ally with your own body. You become the target of the attack, and the opponent gains a +4 bonus on her attack roll. For the purpose of determining distance, cover and concealment, you count as being in your ally’s square when the attack is resolved. If the attack misses you due to concealment, blink, or a similar effect, it instead targets your ally as if you had not used this feat’s ability.",
                          summary: "Whenever an opponent makes a melee or ranged attack against one of your allies who is adjacent to you and who also has this feat, you can spend an immediate action to shield the ally with your own…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mirror Kin (Teamwork)",
                          featType: "General",
                          prerequisites: "Bluff 8 ranks, gnome, gnome magic racial trait.",
                          benefit: "Whenever you’re adjacent to any gnome allies who also have this feat, your appearance and mannerisms change into an amalgam of the features of you and your allies, making you and your allies look exactly alike. Your shapes occasionally appear to blend into each other, making it impossible to distinguish you and granting you and any affected allies a 20% miss chance due to concealment. This is an illusion (figment) effect. Spells and effects that don’t require an attack roll, such as area spells, affect you normally. An attacker must be able to see and reach both you and your ally to be fooled. If you’re invisible or the attacker is blind, the feat has no effect. Because this feat relies on the fact that both you and your ally are blending together to create the visual illusion, it doesn’t function with effects like the inquisitor’s solo tactics class feature; both you and the ally must possess the feat. If you have more than one adjacent ally with this feat, this feat applies to all allies who qualify.",
                          summary: "Whenever you’re adjacent to any gnome allies who also have this feat, your appearance and mannerisms change into an amalgam of the features of you and your allies, making you and your allies look…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("One Mind (Teamwork)",
                          featType: "General",
                          prerequisites: "Alertness, Sense Motive 3 ranks, human (Vudrani).",
                          benefit: "Whenever you’re adjacent to an ally who also has this feat, if your ally is not flat-footed, you’re also not considered flat-footed before you act in combat (you might become flat-footed in other ways, however). Additionally, if your ally can see a creature that you can’t see, that creature doesn’t gain a +2 bonus on attack rolls against you from being invisible, nor do you take a –2 penalty to AC for being blinded if your ally can see.",
                          summary: "Whenever you’re adjacent to an ally who also has this feat, if your ally is not flat-footed, you’re also not considered flat-footed before you act in combat (you might become flat-footed in other…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pack Intimidation (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Half-orc, intimidating racial trait.",
                          benefit: "Whenever you use the Intimidate skill to demoralize foes, you gain a +2 circumstance bonus on your check for every ally who also has this feat within 30 feet (maximum +6).",
                          summary: "Whenever you use the Intimidate skill to demoralize foes, you gain a +2 circumstance bonus on your check for every ally who also has this feat within 30 feet (maximum +6).",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pursuit of Glory (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Human (Ulfen).",
                          benefit: "Whenever you start or end a charge attack in a space adjacent to an ally who also has this feat, you gain a +2 morale bonus on one attack roll you make as part of the charge. Furthermore, you can charge through a space containing an ally who also has this feat.",
                          summary: "Whenever you start or end a charge attack in a space adjacent to an ally who also has this feat, you gain a +2 morale bonus on one attack roll you make as part of the charge.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quah Bond (Teamwork)",
                          featType: "General",
                          prerequisites: "Totem Spirit ( The Inner Sea World Guide 289), human (Shoanti).",
                          benefit: "If at least one Shoanti ally from the same quah who also has this feat is within 30 feet, double your benefits from the Totem Spirit feat.",
                          summary: "If at least one Shoanti ally from the same quah who also has this feat is within 30 feet, double your benefits from the Totem Spirit feat.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Relentless Cheer (Teamwork)",
                          featType: "General",
                          prerequisites: "Halfling, fearless and halfling luck racial traits.",
                          benefit: "Adjacent allies who also have this feat gain a +1 morale bonus on all saving throws. This bonus increases to +3 on saving throws against fear.",
                          summary: "Adjacent allies who also have this feat gain a +1 morale bonus on all saving throws. This bonus increases to +3 on saving throws against fear.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Returning Throw (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, Precise Shot, Sleight of Hand 3 ranks, goblinoid subtype.",
                          benefit: "Whenever an ally who also has this feat makes an attack with a thrown weapon and misses the target by 4 or less, you can catch the weapon as an immediate action. Both you and your ally must be within 30 feet of the target, and you must be able to trace a line from any part of your space to any part of your ally’s space so that the line passes through the target’s space. As part of the action to catch the weapon, you can throw it at the target of the original attack. If your target has never seen you perform this maneuver before, it is denied its Dexterity bonus to AC against your attack. You must have at least one hand free to use this feat. You must be aware of the attack and not flat-footed.",
                          summary: "Whenever an ally who also has this feat makes an attack with a thrown weapon and misses the target by 4 or less, you can catch the weapon as an immediate action.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ruthless Opportunist (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Human (Chelaxian).",
                          benefit: "When a Chelish ally with this feat hits with an attack of opportunity against an enemy both you and that ally are threatening, you gain a +2 circumstance bonus on your melee attack rolls against that enemy for 1 round.",
                          summary: "When a Chelish ally with this feat hits with an attack of opportunity against an enemy both you and that ally are threatening, you gain a +2 circumstance bonus on your melee attack rolls against that…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scion of the Lost Empire (Teamwork)",
                          featType: "General",
                          prerequisites: "Human (Chelaxian or Taldan).",
                          benefit: "While you’re adjacent to an ethnically Chelish or Taldan ally who also has this feat, you gain a +2 competence bonus on a single attack roll, saving throw, ability check, or skill check as an immediate action. You must choose to use this ability before making the roll.",
                          summary: "While you’re adjacent to an ethnically Chelish or Taldan ally who also has this feat, you gain a +2 competence bonus on a single attack roll, saving throw, ability check, or skill check as an…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Seeping Darkness (Teamwork)",
                          featType: "General",
                          prerequisites: "Drow, darkness racial spell-like ability.",
                          benefit: "Whenever you’re adjacent to a drow ally who also has this feat, you can spend a move action to gain concealment (20% miss chance) for 1 round.",
                          summary: "Whenever you’re adjacent to a drow ally who also has this feat, you can spend a move action to gain concealment (20% miss chance) for 1 round.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shared Ownership (Teamwork)",
                          featType: "General",
                          prerequisites: "Well-Prepared APG, Sleight of Hand 1 rank, halfling.",
                          benefit: "Whenever you’re within 30 feet of a halfling ally who also has this feat, as a move action you can draw an item in that ally’s possession as if it were on your person. This is not a magical effect—you just conveniently happen to remember that you had borrowed that item earlier. The item must be something that easily fits in a pocket or sleeve, such as a dagger, potion, wand, or scroll. When you or an ally draw an item (whether or not you do so using Shared Ownership) or otherwise definitively establish who is holding the item, you can’t use Shared Ownership to draw the item in this manner until you have had at least 1 hour to mingle with your companions.",
                          summary: "Whenever you’re within 30 feet of a halfling ally who also has this feat, as a move action you can draw an item in that ally’s possession as if it were on your person.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shared Remembrance (Teamwork)",
                          featType: "General",
                          prerequisites: "Knowledge (any) 1 rank, elf.",
                          benefit: "Whenever you make a Knowledge check to identify a monster, you gain a cumulative +2 circumstance bonus on the check for each ally within 30 feet who also has this feat and has ranks in the Knowledge skill required to identify that monster (maximum +10 bonus).",
                          summary: "Whenever you make a Knowledge check to identify a monster, you gain a cumulative +2 circumstance bonus on the check for each ally within 30 feet who also has this feat and has ranks in the Knowledge…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shrouded in Mystery",
                          featType: "General",
                          prerequisites: "Bluff 1 rank; Disguise 1 rank; kitsune, nagaji, samsaran, tengu, or wayang.",
                          benefit: "You gain a +2 insight bonus on Will saves against mind-affecting spells and effects and a +3 insight bonus on Bluff checks. Both benefits apply only against humanoid creatures of races other than your own.",
                          summary: "You gain a +2 insight bonus on Will saves against mind-affecting spells and effects and a +3 insight bonus on Bluff checks.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Suppressive Fire (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Far Shot, Point-Blank Shot, Precise Shot, keen senses racial trait.",
                          benefit: "Whenever you damage a target using a ranged attack, that target can’t make attacks of opportunity for 1 round against your allies who also have this feat when they move out of one of the target’s threatened squares.",
                          summary: "Whenever you damage a target using a ranged attack, that target can’t make attacks of opportunity for 1 round against your allies who also have this feat when they move out of one of the target’s…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Triangulate (Teamwork)",
                          featType: "General",
                          prerequisites: "Blind-Fight, Greater Blind-Fight, Improved Blind-Fight, Perception 15 ranks, human (Kellid).",
                          benefit: "Whenever both you and an ally who also has this feat are within 30 feet of an invisible foe of whose presence you’re aware, you automatically pinpoint the foe’s location. Whenever both you and an ally who has this feat are within 30 feet of a creature and you miss that creature because of its concealment, you can reroll your miss chance percentile roll.",
                          summary: "Whenever both you and an ally who also has this feat are within 30 feet of an invisible foe of whose presence you’re aware, you automatically pinpoint the foe’s location.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("True Breed",
                          featType: "General",
                          prerequisites: "Two subtypes, elf blood or orc blood racial trait.",
                          benefit: "For the purposes of any effect related to subtype (such as a ranger’s favored enemy and bane weapons), you count as neither of your subtypes, and you no longer count as either of your parent races for the purposes of effects related to race.",
                          summary: "For the purposes of any effect related to subtype (such as a ranger’s favored enemy and bane weapons), you count as neither of your subtypes, and you no longer count as either of your parent races…",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertFeat(
        .make("Umbral Shift (Teamwork)",
                          featType: "General",
                          prerequisites: "Darkness racial spell-like ability.",
                          benefit: "Whenever you and an ally with the darkness racial spell-like ability who also has this feat are each in an area of darkness within 20 feet of an object radiating darkness from a darkness spell, you can swap places with that ally as a swift action. Your ally must be willing and must spend an immediate action to complete the swap.",
                          summary: "Whenever you and an ally with the darkness racial spell-like ability who also has this feat are each in an area of darkness within 20 feet of an object radiating darkness from a darkness spell, you…",
                          source: "Inner Sea Races", isPremium: true),

                    // // MARK: - Inner Sea Taverns
        )
        try await db.insertFeat(
        .make("Drinking Buddy (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Once per day, if you are drunk (or worse) within 10 feet of an ally who has this feat and is also drunk (or worse), you can reroll one d20 roll as a free action. You must take the result of the second roll, even if it is worse.",
                          summary: "Once per day, if you are drunk (or worse) within 10 feet of an ally who has this feat and is also drunk (or worse), you can reroll one d20 roll as a free action.",
                          source: "Inner Sea Taverns", isPremium: true)
        )
        try await db.insertFeat(
        .make("Drunken God's Blessings",
                          featType: "General",
                          prerequisites: "Worshiper of Cayden Cailean.",
                          benefit: "When you have had at least a number of drinks equal to your Constitution modifier (or get drunk or soused, if you are using the rules on pages 54–55) in a tavern, once within the following 24 hours, you can gain the benefits of remove paralysis as a free action. Alternatively, you can choose one of the following benefits depending on the type of bar you patronized. (The specific taverns detailed in this book are given in parentheses as examples.) At the GM’s discretion, other types of taverns might grant other benefits. Gambling Den (Whispering Stone): You can gain the benefits of detect thoughts for 1 minute as a free action. Illegal Tavern (Runoff): You can gain the benefits of invisibility for 1 minute as a free action. Posh Tavern (Aeylinth Vineyard): You can gain the benefits of eagle’s splendor for 1 minute as a free action. Private Club (The Porthmos Club): You can gain the benefits of undetectable alignment for 1 minute as a free action. Rowdy Bar (Formidably Maid): You can gain the benefits of bear’s endurance for 1 minute as a free action. Tavern of Intrigue (The Wicked Fork): You can gain the benefits of fox’s cunning for 1 minute as a free action.",
                          summary: "When you have had at least a number of drinks equal to your Constitution modifier (or get drunk or soused, if you are using the rules on pages 54–55) in a tavern, once within the following 24 hours,…",
                          source: "Inner Sea Taverns", isPremium: true)
        )
        try await db.insertFeat(
        .make("Drunken Sing-Along",
                          featType: "General",
                          prerequisites: "Diplomacy 1 rank, Performance (sing) 1 rank.",
                          benefit: "While in a tavern or other drinking establishment, you can change the attitude of the patrons from unfriendly to indifferent or from indifferent to friendly by spending 10 minutes engaging in a group sing-along. For the following 24 hours, your attempts to gather information in that tavern take only 2d6 minutes if the patrons are indifferent or 1d4 minutes if the patrons are friendly. You must be able to speak the same language as the majority of the patrons to use this feat.",
                          special: "You can use this feat with a large crowd of people outside of a tavern if you supply at least 5 gp worth of alcohol to the group.",
                          summary: "While in a tavern or other drinking establishment, you can change the attitude of the patrons from unfriendly to indifferent or from indifferent to friendly by spending 10 minutes engaging in a group…",
                          source: "Inner Sea Taverns", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extreme Mood Swings",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Increase each morale bonus you receive by 1. You take a −1 penalty on saves against emotion and fear effects. When you are drunk (or worse), this penalty doubles, but you increase each morale bonus you receive by 2 instead.",
                          summary: "Increase each morale bonus you receive by 1. You take a −1 penalty on saves against emotion and fear effects.",
                          source: "Inner Sea Taverns", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hardy Liver",
                          featType: "General",
                          prerequisites: "Great Fortitude.",
                          benefit: "You gain a +2 bonus on Fortitude saving throws against ingested poisons. You take no penalties when you are tipsy, and the penalties for being drunk or soused are halved for you.",
                          summary: "You gain a +2 bonus on Fortitude saving throws against ingested poisons. You take no penalties when you are tipsy, and the penalties for being drunk or soused are halved for you.",
                          source: "Inner Sea Taverns", isPremium: true)
        )
        try await db.insertFeat(
        .make("Implacable (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +2 bonus on saving throws against pain effects. When you are drunk or soused, you gain DR 5/piercing or slashing.",
                          summary: "You gain a +2 bonus on saving throws against pain effects. When you are drunk or soused, you gain DR 5/piercing or slashing.",
                          source: "Inner Sea Taverns", isPremium: true)
        )
        try await db.insertFeat(
        .make("Muddled Morals",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +2 bonus on saving throws against effects that affect you based on your alignment. In addition, choose an alignment one step away from your true alignment; when you are drunk (or worse), spells and other effects affect you as if this alignment were your alignment.",
                          summary: "You gain a +2 bonus on saving throws against effects that affect you based on your alignment.",
                          source: "Inner Sea Taverns", isPremium: true)
        )
        try await db.insertFeat(
        .make("Read the Room",
                          featType: "General",
                          prerequisites: "Drunken Sing-Along, Diplomacy 1 rank, Performance (sing) 1 rank, Sense Motive 1 rank.",
                          benefit: "Before you use the Drunken Sing-Along feat, you can attempt a DC 20 Sense Motive check as a free action to pick the exact right song for that crowd. If you are successful, you gain a +4 circumstance bonus on your next Diplomacy check to gather information in that tavern.",
                          summary: "Before you use the Drunken Sing-Along feat, you can attempt a DC 20 Sense Motive check as a free action to pick the exact right song for that crowd.",
                          source: "Inner Sea Taverns", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tavern Regular",
                          featType: "General",
                          prerequisites: "Cha 14.",
                          benefit: "You receive a 10% discount at any tavern after you have spent a cumulative 500 gp there. In addition, if a bar fight occurs in that tavern, you gain a +2 bonus on your checks to use the redirect action. On a round in which you don’t attempt the redirect action, the crowd reduces your tenacity by only 1d4 (instead of by the normal amount).",
                          summary: "You receive a 10% discount at any tavern after you have spent a cumulative 500 gp there.",
                          source: "Inner Sea Taverns", isPremium: true),

                    // // MARK: - Inner Sea World Guide
        )
        try await db.insertFeat(
        .make("Focused Discipline (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +2 bonus on all saving throws against fear effects. Whenever a fear effect targets you and fails to affect you (either because of a successful saving throw or because of immunity to fear), you gain a +2 morale bonus on attack rolls, weapon damage rolls, and CMB checks against the creature that attempted to use the fear affect on you for 1 round.",
                          summary: "You gain a +2 bonus on all saving throws against fear effects.",
                          source: "Inner Sea World Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Necromantic Affinity",
                          featType: "General",
                          prerequisites: "Con 15.",
                          benefit: "You gain a +2 bonus on saving throws made to resist spells and effects that utilize negative energy, cause negative levels, or cause ability damage, ability drain, or ability penalties. In addition, damage caused by inflict spells heals you as if you were an undead creature, but you also take damage from cure spells.",
                          summary: "You gain a +2 bonus on saving throws made to resist spells and effects that utilize negative energy, cause negative levels, or cause ability damage, ability drain, or ability penalties.",
                          source: "Inner Sea World Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Noble Scion",
                          featType: "General",
                          prerequisites: "Cha 13, must be taken at 1st level.",
                          benefit: "You gain a +2 bonus on all Knowledge (nobility) checks, and that chosen Knowledge skill is always considered a class skill for you.When you select this feat, choose one of the benefits listed below that matches the flavor of your noble family. Work with your GM to ensure that your choice is appropriate.Scion of the Arts: You gain a +1 bonus on all Perform checks, and Perform is always a class skill for you. If you have the bardic performance ability, you can use that ability for an additional 3 rounds per day.Scion of Lore: You gain a +1 bonus on all Knowledge skills in which you have at least 1 rank.Scion of Magic: You gain one of the following languages as a bonus language: Abyssal, Aklo, Celestial, Draconic, Infernal, or Sylvan. Once per day, as a free action, you can gain a +2 bonus on any Spellcraft check you make. You must spend the free action to gain this bonus before you make the check.Scion of Peace: Whenever you take 10 on a Wisdom-based skill, treat the result as if you had rolled a 13 instead of a 10.Scion of War: You use your Charisma modifier to adjust Initiative checks instead of your Dexterity modifier.",
                          summary: "You gain a +2 bonus on all Knowledge (nobility) checks, and that chosen Knowledge skill is always considered a class skill for you.When you select this feat, choose one of the benefits listed below…",
                          source: "Inner Sea World Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shrewd Tactician (Combat)",
                          featType: "General",
                          prerequisites: "Alertness, Combat Reflexes.",
                          benefit: "Opponents do not gain a +2 bonus on attack rolls for flanking you, although they can still sneak attack you. You also gain a +3 bonus on Sense Motive checks made to resist a foe’s Bluff checks to feint in combat.",
                          summary: "Opponents do not gain a +2 bonus on attack rolls for flanking you, although they can still sneak attack you.",
                          source: "Inner Sea World Guide", isPremium: true),

                    // // MARK: - Inner Sea World Guide, Curse of the Crimson Throne Player's Guide, Pathfinder Campaign Setting
        )
        try await db.insertFeat(
        .make("Harrowed",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You get a +1 bonus on all Will saves made to resist enchantment effects. Once per day, you may draw a card from a Harrow deck you own. At any one time for the rest of that day, you may apply a +2 bonus on any d20 roll modified by the card’s suit. For example, if you drew a card from the suit of Dexterity, you could apply this +2 bonus on an Initiative check, a Reflex save, a Dexterity-based skill check, or a ranged attack roll. You may assign this +2 bonus after you make the roll, but you must do so before you know whether the roll was a success or not.",
                          summary: "You get a +1 bonus on all Will saves made to resist enchantment effects. Once per day, you may draw a card from a Harrow deck you own.",
                          source: "Inner Sea World Guide, Curse of the Crimson Throne Player's Guide, Pathfinder Campaign Setting", isPremium: true),

                    // // MARK: - Inner Sea World Guide, Guide to Darkmoon Vale, Pathfinder Campaign Setting
        )
        try await db.insertFeat(
        .make("Green Faith Acolyte",
                          featType: "General",
                          prerequisites: "Follower of the Green Faith.",
                          benefit: "Spells you cast that deal damage, channel negative energy, or otherwise harm life do not hurt normal or magical plants. In addition, whenever you cast a spell that utilizes, heals, or enhances normal or magical plants (such as entangle or plant growth), you cast the spell at +1 caster level.",
                          summary: "Spells you cast that deal damage, channel negative energy, or otherwise harm life do not hurt normal or magical plants.",
                          source: "Inner Sea World Guide, Guide to Darkmoon Vale, Pathfinder Campaign Setting", isPremium: true),

                    // // MARK: - Inner Sea World Guide, Pathfinder #12: Crown of Fangs, Pathfinder Campaign Setting
        )
        try await db.insertFeat(
        .make("Harmonic Spell",
                          featType: "General",
                          prerequisites: "Bardic music ability.",
                          benefit: "Whenever you cast a spell while you are maintaining a bardic performance, you can maintain the bardic performance for that round without expending one of your rounds of performance for the day. In addition, you can switch from one bardic performance to another as a swift action when you cast a spell while maintaining a bardic performance.",
                          summary: "Whenever you cast a spell while you are maintaining a bardic performance, you can maintain the bardic performance for that round without expending one of your rounds of performance for the day.",
                          source: "Inner Sea World Guide, Pathfinder #12: Crown of Fangs, Pathfinder Campaign Setting", isPremium: true),

                    // // MARK: - Inner Sea World Guide, Pathfinder #6: Spires of Xin-Shalast, Pathfinder Campaign Setting
        )
        try await db.insertFeat(
        .make("Altitude Affinity",
                          featType: "General",
                          prerequisites: "Endurance.",
                          benefit: "You are automatically acclimated at high altitudes (Pathfinder RPG Core Rulebook 430). In addition, you gain a +2 competence bonus on all Survival checks made at altitudes of 5,000 feet or higher.",
                          summary: "You are automatically acclimated at high altitudes (Pathfinder RPG Core Rulebook 430). In addition, you gain a +2 competence bonus on all Survival checks made at altitudes of 5,000 feet or higher.",
                          source: "Inner Sea World Guide, Pathfinder #6: Spires of Xin-Shalast, Pathfinder Campaign Setting", isPremium: true),

                    // // MARK: - Inner Sea World Guide, Pathfinder Campaign Setting
        )
        try await db.insertFeat(
        .make("Andoren Falconry",
                          featType: "General",
                          prerequisites: "Cha 13, Animal Affinity, animal companion class feature.",
                          benefit: "You improve your affinity with birds of prey, such as eagles, falcons, hawks, and owls. You gain a +2 bonus on Animal Handling checks made to train or control birds of prey. In addition, if you have a bird of prey as an animal companion, your animal companion gains one of the following bonuses chosen at the time this animal companion is gained: a +1 dodge bonus to AC, a +1 morale bonus on all attack rolls, or a +2 morale bonus on all Will saves.",
                          summary: "You improve your affinity with birds of prey, such as eagles, falcons, hawks, and owls. You gain a +2 bonus on Animal Handling checks made to train or control birds of prey.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Arcane Vendetta",
                          featType: "General",
                          prerequisites: "Spellcraft 1 rank.",
                          benefit: "You deal +2 damage with weapon attacks made against any target you have witnessed casting an arcane spell (not using a spell-like ability) in the last 5 rounds. You must have successfully identified the spell with a Spellcraft check to know without a doubt that the spell is arcane.",
                          summary: "You deal +2 damage with weapon attacks made against any target you have witnessed casting an arcane spell (not using a spell-like ability) in the last 5 rounds.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Careful Speaker",
                          featType: "General",
                          prerequisites: "Wis 13.",
                          benefit: "You gain a +2 bonus on all Bluff checks made to fool someone or pass secret messages (but not to feint in combat), and a +2 bonus on all Will saves against attempts to scry upon you or read your mind.",
                          summary: "You gain a +2 bonus on all Bluff checks made to fool someone or pass secret messages (but not to feint in combat), and a +2 bonus on all Will saves against attempts to scry upon you or read your mind.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Demon Hunter (Combat)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 6 ranks.",
                          benefit: "You gain a +2 bonus on Knowledge (planes) checks to know the powers and abilities of demons. You gain a +2 morale bonus on all attack rolls and a +2 morale bonus on caster level checks to penetrate spell resistance made against creatures with the demon subtype you recognize as demons.",
                          summary: "You gain a +2 bonus on Knowledge (planes) checks to know the powers and abilities of demons.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Desperate Battler (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When no ally is within 10 feet of you and you are not receiving benefits from the aid another action, you gain a +1 morale bonus on melee attack and damage rolls.",
                          summary: "When no ally is within 10 feet of you and you are not receiving benefits from the aid another action, you gain a +1 morale bonus on melee attack and damage rolls.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eye of the Arclord",
                          featType: "General",
                          prerequisites: "Knowledge (arcana) 4 ranks, ability to cast arcane spells.",
                          benefit: "Once per day as a standard action, you can open an incandescent third eye upon your forehead. The eye can remain open for 1 minute, during which time you cast all divination spells at +1 caster level (as long as you begin casting the spell before the eye closes), gain darkvision 60 feet, and can use detect magic (as the spell of the same name). You gain a +8 bonus on Perception checks to notice invisible creatures while the eye is open as well.",
                          summary: "Once per day as a standard action, you can open an incandescent third eye upon your forehead.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fey Foundling",
                          featType: "General",
                          prerequisites: "You may only select this feat at 1st level.",
                          benefit: "Your strange connection to the First World and the fey infuses you with life, and whenever you receive magical healing, you heal an additional 2 points per die rolled. You gain a +2 bonus on all saving throws against death effects. Unfortunately, you also suffer +1 point of damage from cold iron weapons (although you can wield cold iron weapons without significant discomfort).",
                          summary: "Your strange connection to the First World and the fey infuses you with life, and whenever you receive magical healing, you heal an additional 2 points per die rolled.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flagbearer (Combat)",
                          featType: "General",
                          prerequisites: "Cha 15.",
                          benefit: "As long as you hold your clan, house, or party’s flag (see page 293), members of that allegiance within 30 feet who can see the flag (including yourself ) gain a +1 morale bonus on attack rolls, weapon damage rolls, and saving throws against fear and charm effects. You must hold the flag in one hand in order to grant this bonus. If the standard is taken by the enemy or destroyed, this bonus becomes a penalty, affecting all creatures that the bonus previously affected for 1 hour (or until you reclaim the lost flag).",
                          summary: "As long as you hold your clan, house, or party’s flag (see page 293), members of that allegiance within 30 feet who can see the flag (including yourself ) gain a +1 morale bonus on attack rolls,…",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fortune Teller",
                          featType: "General",
                          prerequisites: "Ability to cast divination spells.",
                          benefit: "Upon taking this feat, choose a focus item for your divination magic—a crystal ball, runes, a Harrow deck, or some such item. Whenever you cast a spell from the divination school, you may use this focus item instead of the spell’s material component, as long as the cost of the material component is no more than 1,000 gp. If you choose to perform the spell using your focus item and the spell’s normal material component (regardless of that component’s cost), you cast the spell at +1 caster level.",
                          summary: "Upon taking this feat, choose a focus item for your divination magic—a crystal ball, runes, a Harrow deck, or some such item.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Free Spirit",
                          featType: "General",
                          prerequisites: "Cha 13, any chaotic alignment.",
                          benefit: "You gain a +2 morale bonus on saving throws made against mind-affecting effects and on all Escape Artist or grapple checks made to escape a grapple or to escape from bonds.",
                          summary: "You gain a +2 morale bonus on saving throws made against mind-affecting effects and on all Escape Artist or grapple checks made to escape a grapple or to escape from bonds.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Godless Healing",
                          featType: "General",
                          prerequisites: "Cannot have a patron deity.",
                          benefit: "Once per day when you have half your total hit points or fewer, you may heal yourself of an amount of damage equal to 1d8 plus your total Hit Dice as a move action. This is a supernatural ability.",
                          special: "You can take this feat more than once. Each time you do, you may heal yourself one additional time per day.",
                          summary: "Once per day when you have half your total hit points or fewer, you may heal yourself of an amount of damage equal to 1d8 plus your total Hit Dice as a move action. This is a supernatural ability.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hamatulatsu (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Weapon Focus (unarmed strike).",
                          benefit: "Your unarmed attacks can deal either bludgeoning or piercing damage. You decide which type of damage you deal whenever you attack a foe, but you may only choose one type at a time. If you critically hit a foe with your unarmed strike while doing piercing damage, the additional pain caused by the strike causes the foe to become sickened for 1 round (or staggered for 1 round if the target is already sickened). Multiple critical hits in a round against a single foe do not increase the duration of the sickened or staggered condition.",
                          special: "Hamatulatsu may be selected as a substitute bonus feat at 6th level by a monk even if the monk does not otherwise meet the prerequisites. This fighting style is normally only taught to women of the Sisterhood of the Golden Erinyes.",
                          summary: "Your unarmed attacks can deal either bludgeoning or piercing damage. You decide which type of damage you deal whenever you attack a foe, but you may only choose one type at a time.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hermean Blood",
                          featType: "General",
                          prerequisites: "You may only gain this feat at 1st level.",
                          benefit: "Though you may not know it, the blood of greatness flows in your veins. Pick two skills that share the same associated ability score. Those skills are always considered class skills for you. It’s possible that Hermean agents may come looking for you, either to evaluate you for an invitation or to cover up an embarrassing dalliance, as determined by the GM’s whim.",
                          summary: "Though you may not know it, the blood of greatness flows in your veins. Pick two skills that share the same associated ability score. Those skills are always considered class skills for you.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Secret Signs",
                          featType: "General",
                          prerequisites: "Int 13.",
                          benefit: "You gain a +4 bonus on Bluff checks made to pass secret messages. In addition, you are adept at hiding the somatic components of spellcasting. If you cast a spell that has only somatic components, an observer must make a Perception check opposed by your Sleight of Hand check to notice your spellcasting. Spellcraft checks made to identify any spell you cast that has somatic components take a –2 penalty.",
                          summary: "You gain a +4 bonus on Bluff checks made to pass secret messages. In addition, you are adept at hiding the somatic components of spellcasting.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shade of the Uskwood",
                          featType: "General",
                          prerequisites: "Neutral evil, patron deity Zon-Kuthon.",
                          benefit: "Add the following spells to your druid spell list. 0—disrupt undead, ray of frost; 1st—ghost sound, touch of fatigue; 2nd—chill touch, spectral hand; 3rd—ghoul touch, invisibility; 4th—displacement, ray of exhaustion; 5th—animate dead, phantasmal killer; 6th—nightmare, waves of fatigue; 7th—circle of death, shadow walk; 8th—mass invisibility, waves of exhaustion; 9th—horrid wilting, weird.Remove all spells with the fire descriptor from all your spell lists (not just your druid spell list). You cannot cast any spells with the fire descriptor, nor activate them off scrolls, wands, or any other magic devices. In addition, you may not use wild shape to take the form of any creature with the fire subtype.",
                          special: "As part of this feat, you create a personal Umbrae-Token that ties your soul and your doings to the fell power of the Uskwood. This potent object is treated as a wooden unholy symbol that radiates faint necromancy magic. If your Umbrae-Token is ever destroyed, your connection to the shadowy heart of the Uskwood is severed and all benefits of this feat are lost until another is created. This process requires a journey to the Uskwood and an atonement spell cast by a fellow worshiper of Zon-Kuthon.",
                          summary: "Add the following spells to your druid spell list. 0—disrupt undead, ray of frost; 1st—ghost sound, touch of fatigue; 2nd—chill touch, spectral hand; 3rd—ghoul touch, invisibility; 4th—displacement,…",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stoic",
                          featType: "General",
                          prerequisites: "Iron Will.",
                          benefit: "You gain a +1 bonus on all saving throws against fear effects. If you successfully save against any fear effect, you are immune to further fear effects from that source for 24 hours.",
                          summary: "You gain a +1 bonus on all saving throws against fear effects. If you successfully save against any fear effect, you are immune to further fear effects from that source for 24 hours.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Survivor",
                          featType: "General",
                          prerequisites: "Con 13, Diehard, Endurance.",
                          benefit: "You gain a +5 bonus on all Constitution checks made to stabilize while dying. Once per day, if you are struck by a critical hit or sneak attack, you can spend an immediate action to negate the critical or the sneak attack damage, making the attack a normal hit.",
                          summary: "You gain a +5 bonus on all Constitution checks made to stabilize while dying.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Taldan Duelist (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Exotic Weapon Proficiency (falcata), Shield Proficiency (buckler), Weapon Focus (falcata).",
                          benefit: "When fighting with the falcata and buckler, your shield bonus to AC increases by +1 and you gain a +2 bonus on Acrobatics checks.",
                          summary: "When fighting with the falcata and buckler, your shield bonus to AC increases by +1 and you gain a +2 bonus on Acrobatics checks.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wand Dancer",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Mobility, Perform (dance) 5 ranks.",
                          benefit: "When using a spell trigger item, you can move both before and after triggering the item, as long as the total distance moved is not greater than your speed. Choose one creature potentially affected by your spell trigger item. Your movement does not provoke attacks of opportunity from that creature only. You must move at least 5 feet before and after using your spell trigger item to utilize this feat.",
                          summary: "When using a spell trigger item, you can move both before and after triggering the item, as long as the total distance moved is not greater than your speed.",
                          source: "Inner Sea World Guide, Pathfinder Campaign Setting", isPremium: true),

                    // // MARK: - Inner Sea World Guide, Qadira, Gateway to the East
        )
        try await db.insertFeat(
        .make("Dervish Dance (Combat)",
                          featType: "General",
                          prerequisites: "Dexterity 13, Weapon Finesse, Perform (dance) 2 ranks, proficient with scimitar.",
                          benefit: "When wielding a scimitar with one hand, you can use your Dexterity modifier instead of your Strength modifier on melee attack and damage rolls. You treat the scimitar as a one-handed piercing weapon for all feats and class abilities that require such a weapon (such as a duelist’s precise strike ability). The scimitar must be for a creature of your size. You cannot use this feat if you are carrying a weapon or shield in your off hand.",
                          summary: "When wielding a scimitar with one hand, you can use your Dexterity modifier instead of your Strength modifier on melee attack and damage rolls.",
                          source: "Inner Sea World Guide, Qadira, Gateway to the East", isPremium: true),

                    // // MARK: - Inner Sea World Guide, Rise of the Runelords Player's Guide, Pathfinder Campaign Setting
        )
        try await db.insertFeat(
        .make("Totem Spirit",
                          featType: "General",
                          prerequisites: "Member of a Shoanti tribe.",
                          benefit: "The benefit granted by this feat depends on which Shoanti tribe you belong to:Lyrune-Quah (Moon Clan): You gain a +1 bonus on Will saves and a +2 bonus on Perception checks.Shadde-Quah (Axe Clan): If you have the rage ability, you can rage for 3 additional rounds per day. You also gain a +2 bonus on Intimidate checks.Shriikirri-Quah (Hawk Clan): You gain a +2 bonus on Initiative checks and a +2 bonus on Ride checks.Shundar-Quah (Spire Clan): You gain a +1 bonus on Fortitude saves and a +2 bonus on Perception checks.Sklar-Quah (Sun Clan): You gain a +1 bonus on Reflex saves and a +2 bonus on Acrobatics checks.Skoan-Quah (Skull Clan): You gain a +2 bonus on weapon damage against undead and a +2 bonus on Heal checks.Tamiir-Quah (Wind Clan): Your base land speed increases by 5 feet. You also gain a +2 bonus on Acrobatics checks.",
                          summary: "The benefit granted by this feat depends on which Shoanti tribe you belong to:Lyrune-Quah (Moon Clan): You gain a +1 bonus on Will saves and a +2 bonus on Perception checks.Shadde-Quah (Axe Clan): If…",
                          source: "Inner Sea World Guide, Rise of the Runelords Player's Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Varisian Tattoo",
                          featType: "General",
                          prerequisites: "Spell Focus.",
                          benefit: "Select a school of magic (other than divination) in which you have Spell Focus—you cast spells from this school at +1 caster level. Additionally, you gain a single spell-like ability usable up to three times per day. The spell-like ability gained (and its Varisian name) are as follows:Abjuration (avidais): resistanceConjuration (idolis): acid splashEnchantment (carnasia): dazeEvocation (ragario): dancing lightsIllusion (vangloris): ghost soundNecromancy (voratalo): touch of fatigueTransmutation (avaria): mage hand",
                          summary: "Select a school of magic (other than divination) in which you have Spell Focus—you cast spells from this school at +1 caster level.",
                          source: "Inner Sea World Guide, Rise of the Runelords Player's Guide, Pathfinder Campaign Setting", isPremium: true),

                    // // MARK: - Iron Gods Player's Guide, Technology Guide
        )
        try await db.insertFeat(
        .make("Technologist",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You are considered to be trained in any skill used against a technology-based subject. If the skill in question requires training to use even against non-technological subjects, you must still have ranks in that skill in order to gain the benefit of Technologist.",
                          normal: "You treat all skill checks made against technology as if they were untrained skill checks. This may mean that you cannot attempt certain skill checks, even if you possess ranks in the skill in question.",
                          summary: "You are considered to be trained in any skill used against a technology-based subject.",
                          source: "Iron Gods Player's Guide, Technology Guide", isPremium: true),

                    // // MARK: - Knights of the Inner Sea
        )
        try await db.insertFeat(
        .make("Squire",
                          featType: "General",
                          prerequisites: "Character level 4th, proficient with all martial weapons.",
                          benefit: "This feat acts similarly to the Leadership feat, with several exceptions. You can only attract a 1st-level cohort (referred to hereafter as a squire) with this feat, and cannot recruit followers until you have the Leadership feat. You determine your Leadership score according to the rules presented in the Leadership feat, but your squire is always at least three or more levels lower than yourself. A squire can only take levels in a class that grants proficiency with all martial weapons as a class feature, such as paladin, gunslinger, cavalier, or fighter. She cannot multiclass, though she may take any archetype she qualifies for, including those from the following “Squire Archetypes” section. If a squire gains enough XP to bring her to two levels lower than your level, the squire does not gain the new level until you gain your next level—until then her new XP total is 1 less than the amount needed to attain the next level and she gains no additional XP until you advance. If you release your squire from service, you may gain a new one by scouting for potential candidates in a city or large town where members of your knightly order can typically be found, which requires at least 24 hours of uninterrupted scouting. This act can also replace a squire who has perished. Graduation: When you reach 7th level, this feat automatically upgrades to the Leadership feat (meaning that you effectively lose this feat and replace it with Leadership). You gain all the normal benefits of the Leadership feat, except that your squire must remain at least three levels lower than you and must continue to take levels in her first class. In order for your squire to be able to be two levels lower than you, your squire must be at least 4th level, and you must witness her as she single-handedly defeats a creature with Hit Dice equal to or greater than her own. Upon the creature’s defeat, your squire graduates to full knighthood and acts as a normal cohort; she may begin taking levels in other classes if she so chooses, and she may increase in level to up to two levels lower than yourself.",
                          summary: "This feat acts similarly to the Leadership feat, with several exceptions.",
                          source: "Knights of the Inner Sea", isPremium: true),

                    // // MARK: - Kobolds of Golarion
        )
        try await db.insertFeat(
        .make("Ancient Draconic",
                          featType: "General",
                          prerequisites: "Arcane caster level 5th, speaks Draconic.",
                          benefit: "You gain a +1 bonus on caster level checks to overcome spell resistance when casting arcane spells that have a verbal component. If you speak Draconic when casting an arcane language-dependent spell, all intelligent creatures with a language can understand your words.",
                          summary: "You gain a +1 bonus on caster level checks to overcome spell resistance when casting arcane spells that have a verbal component.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Learn Ranger Trap",
                          featType: "General",
                          prerequisites: "Learn Ranger Trap, Survival 8 ranks.",
                          benefit: "You learn one additional ranger trap and can now use both extraordinary and supernatural versions of any ranger traps you know.",
                          summary: "You learn one additional ranger trap and can now use both extraordinary and supernatural versions of any ranger traps you know.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kobold Confidence",
                          featType: "General",
                          prerequisites: "Charisma 13, kobold.",
                          benefit: "You use your Charisma, Intelligence, or Wisdom in place of Constitution to determine your bonus to Fortitude saves and your maximum negative hit points before death. Once this choice has been made, it can’t be changed.",
                          summary: "You use your Charisma, Intelligence, or Wisdom in place of Constitution to determine your bonus to Fortitude saves and your maximum negative hit points before death.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kobold Flood (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Kobold Groundling, Kobold Style, Small size or smaller.",
                          benefit: "You can make a grapple combat maneuver check to mount a prone Medium or Large foe. If you’re successful, you move into the target’s square and are considered to be on top of the target. For the target to stand, it must succeed at a combat maneuver check to break your grapple.",
                          summary: "You can make a grapple combat maneuver check to mount a prone Medium or Large foe. If you’re successful, you move into the target’s square and are considered to be on top of the target.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kobold Groundling (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Kobold Style, Small size or smaller.",
                          benefit: "Prone creatures are denied their Dexterity bonus to AC against your attacks.",
                          summary: "Prone creatures are denied their Dexterity bonus to AC against your attacks.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Kobold Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Small size or smaller.",
                          benefit: "You gain a +4 bonus on combat maneuver checks against enemies denied their Dexterity bonus to AC.",
                          summary: "You gain a +4 bonus on combat maneuver checks against enemies denied their Dexterity bonus to AC.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Merciless Magic",
                          featType: "General",
                          prerequisites: "Ability to cast spells, kobold.",
                          benefit: "The DC to resist your spells increases by 1 for targets that are already afflicted with any of the following conditions: blinded, dying, entangled, exhausted, frightened, helpless, nauseated, panicked, paralyzed, or stunned.",
                          summary: "The DC to resist your spells increases by 1 for targets that are already afflicted with any of the following conditions: blinded, dying, entangled, exhausted, frightened, helpless, nauseated,…",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Merciless Precision",
                          featType: "General",
                          prerequisites: "Sneak attack class feature, kobold.",
                          benefit: "Your sneak attack damage increases by 1d6 against targets that are already afflicted with any of the following conditions: blinded, dying, entangled, exhausted, rightened, helpless, nauseated, panicked, paralyzed, or stunned.",
                          summary: "Your sneak attack damage increases by 1d6 against targets that are already afflicted with any of the following conditions: blinded, dying, entangled, exhausted, rightened, helpless, nauseated,…",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mixed Scales",
                          featType: "General",
                          prerequisites: "Draconic Aspect ARG or dragon-scaled racial trait ARG, kobold.",
                          benefit: "Choose an additional color for your Draconic Aspect feat or dragon-scaled racial trait. You gain the benefits of both this color and the color you originally chose. (If you have both Draconic Aspect and dragon-scaled, this benefit applies to both.) If you gain abilities that rely on scale color, choose which color gains the benefits.",
                          summary: "Choose an additional color for your Draconic Aspect feat or dragon-scaled racial trait. You gain the benefits of both this color and the color you originally chose.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Redeemed Kobold",
                          featType: "General",
                          prerequisites: "Good alignment, kobold.",
                          benefit: "Your scales take on a metallic sheen appropriate for that of a good-aligned metallic dragon who shares any existing energy affinity you possess, or whom you have chosen to emulate. You gain a +2 circumstance bonus on Diplomacy checks when interacting with good creatures. In addition, your Charisma is considered 2 points higher for the purposes of channeling positive energy.",
                          summary: "Your scales take on a metallic sheen appropriate for that of a good-aligned metallic dragon who shares any existing energy affinity you possess, or whom you have chosen to emulate.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scaled Disciple",
                          featType: "General",
                          prerequisites: "Ability to spontaneously cast divine spells, kobold.",
                          benefit: "You gain a +1 bonus to your caster level when casting spells included in the dragon domain or subdomains. Your spontaneous divine spellcasting qualifies in place of arcane casting for the dragon disciple prestige class, and you may increase spellcasting in your spontaneous divine class as you progress in dragon disciple levels. Add the bonus spells gained from the blood of dragons ability to those you can cast as divine spells.",
                          summary: "You gain a +1 bonus to your caster level when casting spells included in the dragon domain or subdomains.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Small But Deadly",
                          featType: "General",
                          prerequisites: "Weapon Focus or natural weapon, Small size or smaller.",
                          benefit: "You ignore your Strength penalty to damage when making attacks with your racial natural weapons and weapons for which you have the Weapon Focus feat.",
                          summary: "You ignore your Strength penalty to damage when making attacks with your racial natural weapons and weapons for which you have the Weapon Focus feat.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tribe Mentality (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you’re simultaneously subject to the same enchantment (compulsion) or [emotion] effect as another ally with this feat, you both roll saves but can use either result.",
                          summary: "When you’re simultaneously subject to the same enchantment (compulsion) or [emotion] effect as another ally with this feat, you both roll saves but can use either result.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wall of Flesh (Teamwork)",
                          featType: "General",
                          prerequisites: "Small size or smaller.",
                          benefit: "When adjacent to an ally with this feat, you’re considered one size category larger for determining CMD and the way combat maneuvers and abilities affect you.",
                          summary: "When adjacent to an ally with this feat, you’re considered one size category larger for determining CMD and the way combat maneuvers and abilities affect you.",
                          source: "Kobolds of Golarion", isPremium: true),

                    // // MARK: - Kobolds of Golarion, Ultimate Magic
        )
        try await db.insertFeat(
        .make("Learn Ranger Trap",
                          featType: "General",
                          prerequisites: "Survival 5 ranks.",
                          benefit: "Select one ranger trap (see page 20). You may use this trap a number of times per day equal to your Wisdom bonus (minimum 1). The DC for your trap is equal to 10 + 1/2 your character’s level + your Wisdom bonus, and it lasts 1 day per 2 character levels. If you aren’t a ranger, you can only set extraordinary traps with this feat; like all extraordinary ranger traps, this decreases the trap’s DC by 2.",
                          special: "A ranger can use ranger traps a number of times per day equal to 1/2 his ranger level + his Wisdom bonus. See the description of ranger traps for durations.",
                          summary: "Select one ranger trap (see page 20). You may use this trap a number of times per day equal to your Wisdom bonus (minimum 1).",
                          source: "Kobolds of Golarion, Ultimate Magic", isPremium: true),

                    // // MARK: - Legacy of Fire Player's Guide
        )
        try await db.insertFeat(
        .make("All Gnolls Must Die (Achievement)",
                          featType: "General",
                          prerequisites: "Deliver the killing blow to 20 gnolls, hyenas, dire hyenas, werehyenas, jackalweres, or minions of Lamashtu.",
                          benefit: "As long as you carry some sort of trophy harvested from a gnoll (a necklace of ears, a set of teeth, a magic weapon taken from a chieftain, etc.), you gain a +2 morale bonus on all Will saves. You also gain a +2 competence bonus on attack rolls and weapon damage rolls against gnolls, hyenas, dire hyenas, werehyenas, jackalweres, and minions of Lamashtu.",
                          summary: "As long as you carry some sort of trophy harvested from a gnoll (a necklace of ears, a set of teeth, a magic weapon taken from a chieftain, etc.), you gain a +2 morale bonus on all Will saves.",
                          source: "Legacy of Fire Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flame-Tested Survivor (Achievement)",
                          featType: "General",
                          prerequisites: "Knocked unconscious or killed by fire damage at least 10 times.",
                          benefit: "Your history with fire has attracted the attention of a powerful but mysterious guardian spirit from the Elemental Plane of Water. This spirit grants you fire resistance 5, and you gain a +2 bonus on all saving throws made to resist fire effects.",
                          summary: "Your history with fire has attracted the attention of a powerful but mysterious guardian spirit from the Elemental Plane of Water.",
                          source: "Legacy of Fire Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gifted Mesmerist (Achievement)",
                          featType: "General",
                          prerequisites: "Successfully affect 25 different targets with charm or compulsion spells.",
                          benefit: "Choose any one charm or compulsion spell you can cast. You can use this spell once per day as a spell-like ability. Your caster level and DC for this spell-like ability is the same as if you were casting the spell. Each time you gain a level in a spellcasting class, you may replace your current charm or compulsion spell-like ability with a new one.",
                          summary: "Choose any one charm or compulsion spell you can cast. You can use this spell once per day as a spell-like ability.",
                          source: "Legacy of Fire Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Graverisen (Achievement)",
                          featType: "General",
                          prerequisites: "Die and be brought back at least twice.",
                          benefit: "You gain a single-use supernatural ability to save yourself from death. The next time you would be killed, you may use this ability, leaving you alive and otherwise unaffected by the attack that would have killed you, even against effects with no saving throw. This does not require an action, and works even if you are helpless or unconscious. If you die and are brought back to life, you gain another single use of this ability. You can only have one use of this ability unspent at any time; any others you might accrue beyond the first are lost.",
                          summary: "You gain a single-use supernatural ability to save yourself from death.",
                          source: "Legacy of Fire Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Healer's Touch (Achievement)",
                          featType: "General",
                          prerequisites: "Cure a cumulative total of 1, 000 points of damage for other creatures using healing spells. Dealing damage slows progress toward this goal achievement; for every 1 point of damage you deal to another creature, reduce your cumulative healing total by 2.",
                          benefit: "When you cast a healing spell to heal a target other than yourself, the spell is maximized as though using the Maximize Spell effect. This does not increase your casting time for the spell. When you cast a healing spell to damage a target, the spell is not maximized but its saving throw DC increases by +4.",
                          summary: "When you cast a healing spell to heal a target other than yourself, the spell is maximized as though using the Maximize Spell effect. This does not increase your casting time for the spell.",
                          source: "Legacy of Fire Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("History of Scars (Achievement)",
                          featType: "General",
                          prerequisites: "Take a cumulative total of 1, 000 points of damage. Magical healing offsets this running total; for every 5 points of magical healing you receive, reduce your cumulative damage total by 1.",
                          benefit: "Your thick scars impart a –2 penalty on all Charisma-based skill checks, but increase your natural armor bonus by +2.",
                          summary: "Your thick scars impart a –2 penalty on all Charisma-based skill checks, but increase your natural armor bonus by +2.",
                          source: "Legacy of Fire Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Relentless Butcher (Achievement)",
                          featType: "General",
                          prerequisites: "Confirm at least 50 critical hits.",
                          benefit: "When you confirm a critical hit, that opponent must make a Fortitude save (DC = 10 + your Strength or Dexterity modifier) or be stunned for 1 round.",
                          summary: "When you confirm a critical hit, that opponent must make a Fortitude save (DC = 10 + your Strength or Dexterity modifier) or be stunned for 1 round.",
                          source: "Legacy of Fire Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sandwalker",
                          featType: "General",
                          prerequisites: "Dex 13, Con 13.",
                          benefit: "When desert terrain would reduce your overland movement speed to 1/2 normal, you can move at 3/4 your normal speed. You gain a +2 bonus to Survival checks to find food and water, and to checks to avoid getting lost in a desert.",
                          summary: "When desert terrain would reduce your overland movement speed to 1/2 normal, you can move at 3/4 your normal speed.",
                          source: "Legacy of Fire Player's Guide", isPremium: true),

                    // // MARK: - Magic Tactics Toolbox
        )
        try await db.insertFeat(
        .make("Abeyance (Blood Hex)",
                          featType: "General",
                          prerequisites: "Int 13, Spellcraft 5 ranks, Use Magic Device 1 rank.",
                          benefit: "As a standard action, you can drain the innate magical ability of a creature you’ve dealt damage to with a metal weapon since the beginning of your last turn. That creature must succeed at a Will save or be unable to access any spell-like abilities it can use more than once per day, until it is healed of all hit point damage, or up to a maximum duration of 1 minute.",
                          special: "If a shaman or witch uses this blood hex, the target is unable to use any of its spell-like abilities for the hex’s duration.",
                          summary: "As a standard action, you can drain the innate magical ability of a creature you’ve dealt damage to with a metal weapon since the beginning of your last turn.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ability Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 3 ranks, base Fortitude saving throw bonus +4.",
                          benefit: "Once per day, you can focus your thoughts for 10 minutes on a suit of magic armor or a wondrous item that has a transmutation spell of 2nd level or higher listed in its construction requirements and that occupies a slot on your body. At the end of the meditation, you gain a +2 enhancement bonus to one ability score of your choice. This benefit lasts for 24 hours. You must wear the item in order to gain this benefit; if the item is removed before this feat’s benefit ends, the benefit is immediately lost and cannot be regained until 24 hours have passed since the feat’s last activation. You can gain only one benefit from this feat at a time.",
                          summary: "Once per day, you can focus your thoughts for 10 minutes on a suit of magic armor or a wondrous item that has a transmutation spell of 2nd level or higher listed in its construction requirements and…",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Acute Shot",
                          featType: "General",
                          prerequisites: "Far Shot, Precise Shot.",
                          benefit: "Whenever you gain a magic bonus on an attack roll with a ranged weapon, you can deduct any range penalties from your damage roll, instead of your attack roll. Additionally, when you gain a magic bonus on a ranged attack roll, you can deal sneak attack damage to a target that has concealment (but not total concealment) as long as the attack otherwise qualifies to deal sneak attack damage. The maximum number of sneak attack dice you can use in this way is equal to the value of your magic bonus on attack rolls.",
                          summary: "Whenever you gain a magic bonus on an attack roll with a ranged weapon, you can deduct any range penalties from your damage roll, instead of your attack roll.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Alchemical Strike (Combat)",
                          featType: "General",
                          prerequisites: "Throw Anything, base attack bonus +6.",
                          benefit: "You can throw a single alchemical item as a full-attack action, increasing the effectiveness of the alchemical agent thrown. When throwing a single alchemical item as a full-attack action, you increase the DC of any effects associated with that alchemical item by 2. When your base attack bonus reaches +11 and every 5 points of bonus thereafter, increase the saving throw DC of the alchemical item by an additional 2. This feat does not apply to an alchemist’s bombs.",
                          special: "An alchemist can take this feat in place of an alchemist discovery. He does not need to meet its prerequisites. The alchemist uses his class level, rather than the base attack bonus granted by the alchemist class, to calculate his total base attack bonus for the purposes of determining the bonus granted by this feat.",
                          summary: "You can throw a single alchemical item as a full-attack action, increasing the effectiveness of the alchemical agent thrown.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blunt Blade (Blood Hex)",
                          featType: "General",
                          prerequisites: "Int 13, base attack bonus +6, Use Magic Device 1 rank.",
                          benefit: "As a standard action, you can curse the accuracy of an enemy you have dealt damage to in the last minute. The target must succeed at a Fortitude save or it automatically fails to confirm all critical threats. This effect lasts for 1 round.",
                          special: "If a shaman or witch uses this blood hex, the target is unable to deal precision damage or sneak attack damage for the hex’s duration.",
                          summary: "As a standard action, you can curse the accuracy of an enemy you have dealt damage to in the last minute.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Brisk Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Dex 13+.",
                          benefit: "You can alter spells that grant a creature a movement type it doesn’t normally have to increase the speed for that movement type by 10 feet. A brisk spell uses a spell slot equal to the spell’s normal spell level.",
                          summary: "You can alter spells that grant a creature a movement type it doesn’t normally have to increase the speed for that movement type by 10 feet.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bull's Eye (Blood Hex)",
                          featType: "General",
                          prerequisites: "Dex 13, Int 13, Dodge, Mobility, Point-Blank Shot, Shot on the Run, base attack bonus +4, Use Magic Device 1 rank.",
                          benefit: "As a standard action, you can curse a creature you’ve dealt damage to with a ranged weapon attack since the beginning of your last turn. The target must succeed at a Reflex save, or you don’t take penalties on ranged weapon attacks against the creature for the first range increment and you ignore any bonus to the creature’s Armor Class from cover. The creature still benefits from total cover. This effect lasts for 1 minute.",
                          special: "A shaman or witch with this blood hex can use it against a target she has damaged with any ranged attack since her last turn, and applies its benefits to any ranged attack she makes against an affected creature.",
                          summary: "As a standard action, you can curse a creature you’ve dealt damage to with a ranged weapon attack since the beginning of your last turn.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Burning Amplification",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you cast a spell with the fire descriptor, you can take a –1 penalty on the spells’ attack rolls and reduce the spell’s saving throw DC by 1 to cause any target that is dealt fire damage to catch on fire (Pathfinder RPG Core Rulebook 444). The targets do not take burning damage for catching on fire until their next turn, and each target can attempt a Reflex saving throw to put out the fire before being damaged each round. Rather than the normal DC 15 Reflex saving throw to put the fire out, the target must succeed at a Reflex saving throw with a DC equal 10 + the spell’s level + the modifier of your spellcasting ability score). You must choose to use this feat before making an attack roll or before your targets attempt their saving throws. This feat has no effect on spells that neither allow a saving throw nor require an attack roll.",
                          summary: "Whenever you cast a spell with the fire descriptor, you can take a –1 penalty on the spells’ attack rolls and reduce the spell’s saving throw DC by 1 to cause any target that is dealt fire damage to…",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cataract (Blood Hex)",
                          featType: "General",
                          prerequisites: "Int 13, Perception 5 ranks, Use Magic Device 1 rank.",
                          benefit: "As a full-round action, you can curse a creature you’ve dealt damage to since the beginning of your last turn. The creature must succeed at a Fortitude save or its eyes become milky and its vision is obscured. For 1 round, any target the creature makes a ranged touch attack against gains concealment for the purposes of that attack.",
                          special: "A shaman or witch with this blood hex can use it against any creature she has dealt damage to in the past minute. A shaman or witch can use this blood hex as a standard action.",
                          summary: "As a full-round action, you can curse a creature you’ve dealt damage to since the beginning of your last turn.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channeling Variance",
                          featType: "General",
                          prerequisites: "Domain class feature, channel energy class feature, must worship and receive spells from a deity.",
                          benefit: "Choose one variant channeling ability (Pathfinder RPG Ultimate Magic 28). The chosen ability must match one of your deity’s domains, subdomains, or areas of concern. Three times per day when you channel energy, you can apply the modifications of the chosen variant channeling ability to your channeled energy, including reductions to the damage dealt or healing performed by your channeled energy. If you already have a variant channeling ability, this feat instead allows you to channel energy without the modifications of your chosen variant channeling ability (including reductions to the damage dealt or healing performed by your channeled energy) three times per day.",
                          special: "This feat can be selected twice. The second time you do, you can use Channeling Variance whenever you channel energy instead of just three times per day.",
                          summary: "Choose one variant channeling ability (Pathfinder RPG Ultimate Magic 28). The chosen ability must match one of your deity’s domains, subdomains, or areas of concern.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Chilling Amplification",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you cast a spell with the cold descriptor, you can take a –1 penalty on attack rolls made with the spell and reduce the spell saving throw’s DC by 1 to cause any target that is dealt cold damage by the spell to have its movement speed reduced by 5 feet and become unable to take 5-foot steps. This effect lasts for 1 round + 1 round per 3 spell levels of the spell. You must choose to use this feat before making an attack roll or before your targets attempt their saving throws. This feat has no effect on spells that neither allow a saving throw nor require an attack roll.",
                          summary: "Whenever you cast a spell with the cold descriptor, you can take a –1 penalty on attack rolls made with the spell and reduce the spell saving throw’s DC by 1 to cause any target that is dealt cold…",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Concealment Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Stealth 3 ranks, Use Magic Device 3 ranks, base Fortitude saving throw bonus +3.",
                          benefit: "You can cause an item that has an illusion spell of 1st level or higher listed in its construction requirements to cast vanish APG. If you have 7 ranks in both Stealth and Use Magic Device, you can instead cause an item that has an illusion spell of 2nd level or higher listed in its construction requirements to cast either invisibility or undetectable alignment. You can use this feat once per day, plus an additional time per day when your base Fortitude save bonus reaches +9 and +12.",
                          summary: "You can cause an item that has an illusion spell of 1st level or higher listed in its construction requirements to cast vanish APG.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Consumption (Blood Hex)",
                          featType: "General",
                          prerequisites: "Int 13, Use Magic Device 5 ranks.",
                          benefit: "As a full-round action, you can curse a creature you’ve dealt damage to since the beginning of your last round to use certain powers quickly. The creature must succeed at a Fortitude save or if it uses any of the following class abilities during the next minute, it must spend at least two daily uses or rounds of that ability: arcane poolUM, arcane reservoirACG, bardic performance, bloodrageACG, bombAPG, inspirationACG, ki pool, mental focusOA, mesmerist trickOA, phrenic poolOA, rage, or raging songACG.",
                          special: "A shaman or witch can use this blood hex as a standard action.",
                          summary: "As a full-round action, you can curse a creature you’ve dealt damage to since the beginning of your last round to use certain powers quickly.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disconcerting Stare (Combat, Stare)",
                          featType: "General",
                          prerequisites: "Mesmerist level 5th, painful stareOA class feature.",
                          benefit: "When you trigger your painful stare, the target must succeed at a Will save (DC = 10 + 1/2 your mesmerist level + your Charisma modifier) or take a –6 penalty on Disable Device and Perception checks and a –2 penalty on Reflex saves for the next minute. If the target has the trap finding or trap sense class ability and fails this save, the target also loses the benefit of that ability (or abilities) for 1 minute.",
                          summary: "When you trigger your painful stare, the target must succeed at a Will save (DC = 10 + 1/2 your mesmerist level + your Charisma modifier) or take a –6 penalty on Disable Device and Perception checks…",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eldritch Assault",
                          featType: "General",
                          prerequisites: "Blind-Fight, Improved Initiative.",
                          benefit: "Whenever you attack from total concealment provided by a magical source (such as the displacement or invisibility spells), the first attack roll you make each round that is a critical threat is automatically confirmed as a critical hit.",
                          summary: "Whenever you attack from total concealment provided by a magical source (such as the displacement or invisibility spells), the first attack roll you make each round that is a critical threat is…",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Encouraging Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Cha 13, Diplomacy 6 ranks.",
                          benefit: "Any morale bonus granted by an encouraging spell is increased by 1. An encouraging spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "Any morale bonus granted by an encouraging spell is increased by 1. An encouraging spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expanded Metakinesis",
                          featType: "General",
                          prerequisites: "Kinetic blastOA class feature, metakinesisOA class feature.",
                          benefit: "Select one of the following metamagic feats: Disrupting SpellAPG, Ectoplasmic SpellAPG, Furious SpellOA, Merciful SpellAPG, or Piercing SpellUM. By accepting 1 point of burn, you can alter your kinetic blast as if using the selected metamagic feat.",
                          special: "This feat can be chosen multiple times. Each time, you select a different metamagic feat.",
                          summary: "Select one of the following metamagic feats: Disrupting SpellAPG, Ectoplasmic SpellAPG, Furious SpellOA, Merciful SpellAPG, or Piercing SpellUM.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Blood Hex",
                          featType: "General",
                          prerequisites: "Int 15, two or more blood hex feats, Spellcraft 5 ranks, Use Magic Device 5 ranks.",
                          benefit: "You can use blood hexes two additional times per day.",
                          special: "You can take this feat more than once. Each time you do, you can use blood hexes two additional times per day. A character with this feat who takes levels in shaman or witch can immediately replace this feat with any blood hex feat for which she meets the prerequisites.",
                          summary: "You can use blood hexes two additional times per day.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Variance",
                          featType: "General",
                          prerequisites: "Channeling Variance or variant channeling ability, channel energy class feature.",
                          benefit: "You gain one additional variant channeling ability that matches one of your deity’s domains, subdomains, or areas of concern. Three times per day, you can apply the modifications of this variant channel energy, reducing the damage dealt or healing performed by your channeled energy as normal. You cannot apply more than one variant channeling ability to your channeled energy at once.",
                          special: "You can select this feat multiple times. Each time you do, you gain another variant channeling ability. If you have chosen Channeling Variance twice, you can use any variant channeling ability chosen with this feat whenever you channel energy.",
                          summary: "You gain one additional variant channeling ability that matches one of your deity’s domains, subdomains, or areas of concern.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Falter (Blood Hex)",
                          featType: "General",
                          prerequisites: "Int 13, Spellcraft 5 ranks, Use Magic Device 5 ranks.",
                          benefit: "As a standard action, you can curse an enemy you’ve dealt damage to since your last turn. That target must succeed at a Will save or be unable to take a 5-foot step, delay an action, or ready an action for 1 round.",
                          special: "A shaman or witch with this blood hex can use it against any creature she has dealt damage to in the past minute. A creature affected by this blood hex used by a shaman or witch also has its movement rate halved for the blood hex’s duration.",
                          summary: "As a standard action, you can curse an enemy you’ve dealt damage to since your last turn.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Force Shield Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 3 ranks, base Fortitude saving throw bonus +3.",
                          benefit: "You can cause an item that has an abjuration spell of 1st level or higher listed in its construction requirements to create a magical effect that functions like shield, except the shield bonus to AC gained is equal to 1/3 your base Fortitude save bonus (minimum +1). You can use this feat once per day, plus an additional time per day when your base Fortitude save bonus reaches +6, +9, and +12.",
                          summary: "You can cause an item that has an abjuration spell of 1st level or higher listed in its construction requirements to create a magical effect that functions like shield, except the shield bonus to AC…",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hinder (Blood Hex)",
                          featType: "General",
                          prerequisites: "Int 13, Use Magic Device 5 ranks.",
                          benefit: "As a standard action, you can curse an enemy you’ve damaged with a melee attack in the last minute to become hesitant. The target must succeed at a Reflex save or take a –10 penalty on any initiative check it makes in the next minute.",
                          special: "If a shaman or witch uses this blood hex, the target is unable to take a full-attack action for 1 round. This effect can be extended with the cackle hex.",
                          summary: "As a standard action, you can curse an enemy you’ve damaged with a melee attack in the last minute to become hesitant.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hinderance Dismissal",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can dismiss any pit spell (such as create pit APG, hungry pit APG, spiked pit APG, and similar spells with “pit” in their names) or wall spell (such as wall of fire, wall of ice, and similar spells with “wall” in their names) you cast. The spells must have a duration of at least 1 round. This ability follows the normal rules for dismissing spells, allowing you to dismiss conjured pits and walls as a standard action.",
                          normal: "Several pit and wall spells cannot be dismissed without the use of this feat.",
                          summary: "You can dismiss any pit spell (such as create pit APG, hungry pit APG, spiked pit APG, and similar spells with “pit” in their names) or wall spell (such as wall of fire, wall of ice, and similar…",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Implement Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "ImplementsOA class feature, mental focusOA class feature.",
                          benefit: "For the purposes of using item mastery feats, you treat your implements as magic items with all spells that you know from each implement’s associated implement school functioning as their effective construction requirements. When using an implement to activate an item mastery feat, you can spend a number of points of mental focus equal to half of the feat’s base Fortitude save bonus prerequisite to activate the feat without counting the use against the item mastery feat’s total number of daily uses.",
                          special: "An occultist who has this feat can select item mastery feats in place of focus powers, provided he meets the feats’ prerequisites.",
                          summary: "For the purposes of using item mastery feats, you treat your implements as magic items with all spells that you know from each implement’s associated implement school functioning as their effective…",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Manifold Stare (Combat, Stare)",
                          featType: "General",
                          prerequisites: "Mesmerist level 3rd, painful stareOA class feature.",
                          benefit: "You can trigger your painful stare one additional time per round.",
                          special: "This feat can be taken once by a 3rd-level mesmerist, and again when he reaches 9th and 15th levels. Its effects stack. A mesmerist can take this feat in place of a bold stare improvementOA.",
                          summary: "You can trigger your painful stare one additional time per round.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Practiced Ritualist",
                          featType: "General",
                          prerequisites: "Knowledge (arcana, history, planes, and religion) 1 rank.",
                          benefit: "You gain a +2 bonus on skill checks to perform occult rituals, and on Intelligence checks to learn the method of casting an occult ritual (Pathfinder RPG Occult Adventures 208). If you are a ritual’s primary caster, the DC for saving throws against the ritual’s effects is 2 higher. If the ritual has a minimum number of required secondary casters, that number is decreased by 1.",
                          summary: "You gain a +2 bonus on skill checks to perform occult rituals, and on Intelligence checks to learn the method of casting an occult ritual (Pathfinder RPG Occult Adventures 208).",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Racial Item Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 6 ranks, base Fortitude saving throw bonus +3.",
                          benefit: "You can focus on an item associated with your race to use a racial spell-like ability that you have without expending any uses per day from that spell-like ability. A racial spell-like ability is any spell-like ability that you have gained from a racial trait, from a feat or trait that lists your race as a prerequisite, or from a class option or archetype that is available only to members of your race. You must use an item with a spell in its construction requirement that belongs to the same school and is at least of the same level as the spell-like ability that you wish to use. You can use this feat once per day, plus an additional time per day when your base Fortitude save bonus reaches +9 and +12.",
                          summary: "You can focus on an item associated with your race to use a racial spell-like ability that you have without expending any uses per day from that spell-like ability.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Resistance Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 3 ranks, base Fortitude saving throw bonus +3.",
                          benefit: "Once per day, you can meditate for 10 minutes in order to use magic armor or a wondrous item that has an abjuration spell of 2nd level or higher listed in its construction requirements and that occupies a slot on your body to gain a defensive benefit. This benefit can be either a +1 resistance bonus on all saving throws or 5 points of energy resistance against one energy type (acid, cold, electricity, fire, or sonic). This benefit lasts for 24 hours. You must wear the item in order to gain this benefit; if the item is removed before this feat’s benefit ends, the benefit is immediately lost and cannot be regained until 24 hours have passed since the feat’s last activation. The resistance bonus granted by this feat increases by 1 or the energy resistance increases by 5 when your base Fortitude save bonus reaches +6, +9, and +12. You can gain only one benefit from this feat at a time.",
                          summary: "Once per day, you can meditate for 10 minutes in order to use magic armor or a wondrous item that has an abjuration spell of 2nd level or higher listed in its construction requirements and that…",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Restoration Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Heal 5 ranks, Use Magic Device 5 ranks, base Fortitude saving throw bonus +3.",
                          benefit: "You can cause an item that has a conjuration (healing) spell of 2nd level or higher listed in its construction requirements to cast lesser restoration. If you have 9 ranks in both Heal and Use Magic Device, you can instead cause an item that has a conjuration (healing) spell of 3rd level or higher listed in its construction requirements to cast either remove blindness/deafness or remove paralysis. You can use this feat once per day, plus an additional time per day when your base Fortitude save bonus reaches +9 and +12.",
                          summary: "You can cause an item that has a conjuration (healing) spell of 2nd level or higher listed in its construction requirements to cast lesser restoration.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scale and Skin",
                          featType: "General",
                          prerequisites: "Con 13.",
                          benefit: "Whenever a transmutation spell or spell-like ability affects you, your natural armor bonus increases by 1. If you have no natural armor bonus to Armor Class, treat your natural armor bonus as 0 for the purposes of this feat. The bonus to your natural armor bonus increases by 2 if the caster level of the effect is 10th or higher.",
                          summary: "Whenever a transmutation spell or spell-like ability affects you, your natural armor bonus increases by 1.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shocking Amplification",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you cast a spell with the electricity descriptor that targets one or more creatures, you can take a –1 penalty on attack rolls made with the spell and reduce the spell’s saving throw DC by 1 to cause the target closest to you that is dealt electricity damage by the spell to become fatigued for 1 round. This cannot cause a creature that is already fatigued to become exhausted. You must choose to use this feat before making an attack roll or before your target attempts its saving throw. This feat has no effect on spells that neither allow a saving throw nor require an attack roll.",
                          summary: "Whenever you cast a spell with the electricity descriptor that targets one or more creatures, you can take a –1 penalty on attack rolls made with the spell and reduce the spell’s saving throw DC by 1…",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Symbolic Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 4 ranks, base Fortitude saving throw bonus +2.",
                          benefit: "A number of times per day equal to your base Fortitude save bonus, you can cause a holy symbol of a deity you worship and whose alignment is the same as yours to unleash a harmful magical attack called a symbolic bolt. This attack can be delivered via touch or a ray, as a standard action. A melee symbolic bolt requires a melee touch attack that doesn’t provoke attacks of opportunity, and a ranged symbolic bolt is a ranged attack with a range of 30 feet. A symbolic bolt deals damage equal to 1d6 + 1/2 your total number of ranks in the Use Magic Device skill. You choose the type of damage dealt by your symbolic bolt each time you use this feat from those offered by the cleric domains granted by the deity whose holy symbol you use. The types of damage (and the cleric domains that grant them) are acid (Earth, Magic, Rune), cold (Darkness, Magic, Rune, Void, Water, Weather), electricity (Air, Magic, Rune, Weather), fire (Destruction, Fire, Magic, Rune), negative energy (Death, Destruction, Void), positive energy (Glory, Healing, Repose, Sun), sonic (Magic, Rune, Weather), and untyped (any). If a symbolic bolt is used to deal untyped damage, the bolt’s damage is reduced to an amount equal to 1d3 + 1/2 your total number of ranks in Use Magic Device. When you create a symbolic bolt, it originates from the hand holding the holy symbol and appears only briefly, so you have a hand free anytime you’re not attacking with a symbolic bolt. The feat Weapon Focus (ray) doesn’t apply to symbolic bolts, but you can take the feat Weapon Focus (symbolic bolt) and apply it to both melee and ranged symbolic bolts. Spells that target a single weapon (such as magic weapon) can’t affect symbolic bolts, nor can a symbolic bolt have magic weapon special abilities. Abilities and feats that affect all weapon attacks function as normal with symbolic bolts.",
                          summary: "A number of times per day equal to your base Fortitude save bonus, you can cause a holy symbol of a deity you worship and whose alignment is the same as yours to unleash a harmful magical attack…",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Uncertainty (Blood Hex)",
                          featType: "General",
                          prerequisites: "Int 13; Bluff, Diplomacy, and Intimidate 5 ranks.",
                          benefit: "As a full-round action, you can diminish the confidence of a creature you’ve dealt damage to within the last minute. That creature must succeed at a Will save or take a –6 penalty on skill checks for one of the following skills of your choice: Bluff, Diplomacy, or Intimidate. This ability lasts until the subject is healed of all hit point damage, up to a maximum of 1 hour.",
                          special: "A shaman or witch with this blood hex can use it as a standard action. Additionally, if a shaman or witch uses this blood hex, the target takes the penalty on Bluff, Diplomacy, and Intimidate checks.",
                          summary: "As a full-round action, you can diminish the confidence of a creature you’ve dealt damage to within the last minute.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vast Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Caster level 3rd.",
                          benefit: "You can alter a spell that targets a number of creatures no more than 30 feet apart, such as haste. The maximum distance apart of those you target with the spell increases to 60 feet. A vast spell uses up a spell slot 1 level higher than the spell’s actual level.",
                          summary: "You can alter a spell that targets a number of creatures no more than 30 feet apart, such as haste. The maximum distance apart of those you target with the spell increases to 60 feet.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Weapon Evoker Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 2 ranks, base Fortitude saving throw bonus +3.",
                          benefit: "As a swift action while wielding a magic weapon with a weapon special ability that deals extra acid, cold, fire, electricity, or sonic damage on a hit, you deal an additional 1d4 points of damage of the same type with each hit you make with that weapon for 1 round.",
                          summary: "As a swift action while wielding a magic weapon with a weapon special ability that deals extra acid, cold, fire, electricity, or sonic damage on a hit, you deal an additional 1d4 points of damage of…",
                          source: "Magic Tactics Toolbox", isPremium: true),

                    // // MARK: - Martial Arts Handbook
        )
        try await db.insertFeat(
        .make("Arming Grab (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Catch Off-Guard, Combat Expertise, Improved Disarm.",
                          benefit: "You take no penalty on your attack roll when attempting to disarm an opponent while you are unarmed. If you succeed at a disarm attempt without using a weapon and choose to pick up the disarmed weapon, you can attack with that weapon as though you were proficient with it until the end of your next turn. If you are already proficient with that type of weapon, you gain a +2 morale bonus to your attack rolls with that weapon until the end of your next turn.",
                          normal: "Attempting to disarm a foe while unarmed imposes a –4 penalty on the attack.",
                          summary: "You take no penalty on your attack roll when attempting to disarm an opponent while you are unarmed.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Block Chakras",
                          featType: "General",
                          prerequisites: "Psychic Sensitivity or levels in an occult class, brawler’s flurry or flurry of blows class feature, ki pool.",
                          benefit: "As a standard action, you can spend 1 ki point to make a single unarmed strike that attempts to block one of the target’s chakras. If you hit the target and deal damage, you can select either the root, sacral, or navel chakra, as long as you can open that chakra yourself. The target suffers a specific effect based on the chosen chakra (see below), though it can reduce these effects with a successful Fortitude save (DC = 10 + half your character level + the ability modifier you use to calculate your ki pool). Root: The target’s DR is reduced by 10 for 1 minute. If the target has multiple forms of DR, you choose which DR is reduced. On a successful save, the target’s DR is instead reduced by 5 for 1 round. Sacral: The target can’t use any of its speeds except its land speed (or swim speed for an aquatic creature) for 1 round, and it moves at half speed for 1 minute. If it was flying, the target can attempt a Fly check to fall safely. On a successful save, the target instead moves at half speed for 1 round. Navel: The target takes a –2 penalty on attack rolls and damage rolls, and it reduces the DCs of its spells and abilities by 2 for 1 minute. On a successful save, the penalty and reduction is halved and lasts for 1 round.",
                          summary: "As a standard action, you can spend 1 ki point to make a single unarmed strike that attempts to block one of the target’s chakras.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Block Upper Chakras",
                          featType: "General",
                          prerequisites: "Block Chakras, Psychic Sensitivity or levels in an occult class, brawler’s flurry or flurry of blows class feature, ki pool, character level 8th.",
                          benefit: "When you use Block Chakras, you can also select from the heart, throat, brow, and crown chakras, as long as you can open the chosen chakra yourself, with the following effects. Heart: The target can’t recover hit points from any source for 1 minute. This prevents hit point recovery from fast healing and regeneration but doesn’t deactivate regeneration altogether, so it does not allow a creature with regeneration to be killed through hit point damage. On a successful save, the target recovers only half as many hit points for 1 round. Throat: The target can’t speak or cast spells with a thought component for 1 round, and for 1 minute, actions that require speaking or thought components have a 20% chance to fail. On a successful save, actions that require speaking or thought components have a 50% chance to fail for 1 round. Brow: The target is blinded for 1 minute. On a successful save, the target loses all special forms of vision (such as lowlight vision, see in darkness, and true seeing) for 1 round; this doesn’t affect nonvisual senses like blindsight and blindsense. Crown: The target must roll twice and take the lower result on all d20 rolls for 1 round and on its first attack roll or caster level check each round for 1 minute. On a successful save, the target must roll twice and take the lower result on its next d20 roll.",
                          summary: "When you use Block Chakras, you can also select from the heart, throat, brow, and crown chakras, as long as you can open the chosen chakra yourself, with the following effects.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Change of Heart",
                          featType: "General",
                          prerequisites: "Base attack bonus +6 or monk level 6th.",
                          benefit: "When your melee attack would reduce an opponent to 0 or fewer hit points or render the opponent unconscious, you can elect to forgo this damage and instead attempt a Diplomacy check to influence the target’s attitude. The DC of this check is equal to 20 + the creature’s Hit Dice + the creature’s Charisma modifier. You gain a bonus equal to half the damage you would have dealt and can use your base attack bonus instead of your ranks in Diplomacy. Unlike with a normal Diplomacy check, you can increase the target’s attitude toward you by more than two steps. You can use the benefits of this feat only against enemies who attacked you and whom you did not attack or otherwise provoke first.",
                          summary: "When your melee attack would reduce an opponent to 0 or fewer hit points or render the opponent unconscious, you can elect to forgo this damage and instead attempt a Diplomacy check to influence the…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Combat Rhythm (Combat, Combination)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6 or monk level 6th.",
                          benefit: "When you deal damage with a melee attack to an opponent you have already damaged this round, you can reduce the total of any voluntary penalties to your melee attack rolls imposed by actions or feats (such as the Power Attack feat) by 1 (to a minimum penalty of 0). This reduction in penalties lasts until the beginning of your next turn and stacks with itself.",
                          summary: "When you deal damage with a melee attack to an opponent you have already damaged this round, you can reduce the total of any voluntary penalties to your melee attack rolls imposed by actions or feats…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cracking the Shell (Combat, Combination)",
                          featType: "General",
                          prerequisites: "Weapon Focus with piercing weapon.",
                          benefit: "When you deal damage with a melee attack with a piercing weapon to an opponent you have already damaged this round, you can also reduce the value of that target’s spell resistance or energy resistances by 1 until the start of your next turn. This reduction stacks with itself.",
                          summary: "When you deal damage with a melee attack with a piercing weapon to an opponent you have already damaged this round, you can also reduce the value of that target’s spell resistance or energy…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crippling Thrust (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus with piercing weapon, base attack bonus +6.",
                          benefit: "As a standard action, make a single attack with your chosen weapon. If the attack hits, the target’s movement speed is halved until the start of your next turn. When your base attack bonus reaches +11, the target’s movement is so hampered that even a 5-foot step provokes an attack of opportunity. When your base attack bonus reaches +16, the target must also succeed at a Reflex save with a DC equal to 10 + your base attack bonus or become entangled. An entangled creature’s movement can be halved only once. You can use this feat’s benefits only once per minute.",
                          summary: "As a standard action, make a single attack with your chosen weapon. If the attack hits, the target’s movement speed is halved until the start of your next turn.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crushing Impact (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Bull Rush, Improved Unarmed Strike, Power Attack.",
                          benefit: "Whenever you successfully bull rush an enemy and its movement is stopped by a solid object or barrier, you deal your unarmed strike damage to the foe, as long as it’s within your threatened area. If you performed your bull rush as part of a charge, you gain a +2 bonus on your damage roll.",
                          summary: "Whenever you successfully bull rush an enemy and its movement is stopped by a solid object or barrier, you deal your unarmed strike damage to the foe, as long as it’s within your threatened area.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Domino Crash (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Reposition, Whipcrack, base attack bonus +6 or monk level 3rd.",
                          benefit: "When you successfully reposition an opponent, if you attempt to reposition it into a square already occupied by another creature, you can attempt a combat maneuver check as an immediate action to reposition that creature. You take a –4 penalty on this check. If you are successful, the second creature is pushed 5 feet in the direction of your original target’s movement. You can move the secondary target an additional 5 feet for every 5 by which you exceed the secondary target’s CMD. The secondary target does not provoke attacks of opportunity because of this movement unless you have the Greater Reposition feat. If you fail your combat maneuver check, the movement of your original target ends in front of the secondary target.",
                          normal: "You can’t reposition a creature into a square that is occupied by a solid object or obstacle.",
                          summary: "When you successfully reposition an opponent, if you attempt to reposition it into a square already occupied by another creature, you can attempt a combat maneuver check as an immediate action to…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragonfly Flight (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Wis 15, Dragonfly Style, Dragonfly Wings, Improved Unarmed Strike, Acrobatics 10 ranks, Climb 10 ranks.",
                          benefit: "While using Dragonfly Style, you can attempt an Acrobatics check to high jump as a move action, and then immediately glide as the spell for 1 round. If you have not used your standard action after using Dragonfly Flight to make a high jump and start gliding, you can charge while gliding. This charge follows the rules for charging when you are only able to take a standard action.",
                          summary: "While using Dragonfly Style, you can attempt an Acrobatics check to high jump as a move action, and then immediately glide as the spell for 1 round.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragonfly Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Wis 13, Improved Unarmed Strike, Acrobatics 2 ranks, Climb 2 ranks.",
                          benefit: "You add your Wisdom modifier to Acrobatics checks in addition to your Dexterity modifier. While using this style, when you are adjacent to a vertical surface or object capable of supporting your weight, such as a wall or a tree, you gain a +1 bonus on melee attack rolls against opponents your size or smaller, as if you were on higher ground.",
                          summary: "You add your Wisdom modifier to Acrobatics checks in addition to your Dexterity modifier.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragonfly Wings (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Wis 15, Dragonfly Style, Improved Unarmed Strike, Acrobatics 5 ranks, Climb 5 ranks.",
                          benefit: "While using Dragonfly Style, the bonus on your melee attacks increases to +2 and applies to opponents up to two size categories larger than you. In addition, you can substitute a creature your size or larger in place of a vertical surface. You can freely use a willing creature in such a manner, but using a hostile creature requires a successful Acrobatics check with a DC equal to the creature’s CMD. If you fail this check by 5 or more, you provoke an attack of opportunity from the hostile creature.",
                          summary: "While using Dragonfly Style, the bonus on your melee attacks increases to +2 and applies to opponents up to two size categories larger than you.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dramatic Slam (Combat)",
                          featType: "General",
                          prerequisites: "Dazzling Display, Improved Grapple, Improved Unarmed Strike, Savage Slam, Weapon Focus, base attack bonus +9 or monk level 6th.",
                          benefit: "While you are using Savage Slam, if you succeed at your grapple combat maneuver check to knock the opponent prone, you can spend a swift action to attempt an Intimidate check to demoralize foes within 30 feet who could see your attack.",
                          summary: "While you are using Savage Slam, if you succeed at your grapple combat maneuver check to knock the opponent prone, you can spend a swift action to attempt an Intimidate check to demoralize foes…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elemental Ki",
                          featType: "General",
                          prerequisites: "Brawler’s flurry or flurry of blows class feature, burn class feature, kinetic fist wild talent, kineticist level 4th.",
                          benefit: "Your burn functions like a ki pool. As long as you have at least 1 point of burn, your unarmed strikes count as magic. You can take 1 point of burn as a swift action to do any two of the following: make an additional attack at your highest bonus during a flurry of blows, increase your speed by 20 feet for 1 round, or gain a +4 dodge bonus to AC for 1 round. You can also accept burn instead of spending ki (or a combination of the two) to activate an ability that costs ki points, with each point of burn you accept counting as 2 ki points. You count as having a ki pool for effects that requires a ki pool.",
                          summary: "Your burn functions like a ki pool. As long as you have at least 1 point of burn, your unarmed strikes count as magic.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Enduring Might",
                          featType: "General",
                          prerequisites: "Gather Might, gather power class feature, kineticist level 8th.",
                          benefit: "When you use Gather Might, the ability score bonuses last until the beginning of your next turn.",
                          summary: "When you use Gather Might, the ability score bonuses last until the beginning of your next turn.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eroding Strikes (Combat, Combination)",
                          featType: "General",
                          prerequisites: "Weapon Focus with bludgeoning weapon.",
                          benefit: "When you deal damage with a melee attack with a bludgeoning weapon to an opponent you have already damaged this round, you can also reduce the value of that target’s damage reduction by 1 until the beginning of your next turn. This reduction stacks with itself.",
                          summary: "When you deal damage with a melee attack with a bludgeoning weapon to an opponent you have already damaged this round, you can also reduce the value of that target’s damage reduction by 1 until the…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Finishing Cascade (Combat, Combination)",
                          featType: "General",
                          prerequisites: "Base attack bonus +11 or monk level 11th; at least one combination feat.",
                          benefit: "The first time in a round you use a combination feat to apply a reduction or penalty to yourself or an enemy, you can double the feat’s numerical modifier. For example, you can double the reduction granted by Combat Rhythm to –2. This does not double any other effects of combination feats, such as damage.",
                          summary: "The first time in a round you use a combination feat to apply a reduction or penalty to yourself or an enemy, you can double the feat’s numerical modifier.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Follow-Up Strike (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Disarm, Improved Unarmed Strike, base attack bonus +6 or monk level 6th.",
                          benefit: "Whenever you succeed at a combat maneuver check to disarm an opponent, you can spend a swift action to make an unarmed strike attack at your highest base attack bonus against the target you disarmed.",
                          summary: "Whenever you succeed at a combat maneuver check to disarm an opponent, you can spend a swift action to make an unarmed strike attack at your highest base attack bonus against the target you disarmed.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gather Might",
                          featType: "General",
                          prerequisites: "Gather power class feature, kineticist level 8th.",
                          benefit: "When you gather power, instead of reducing the burn cost of a blast wild talent, you can send elemental energy flowing through your body to gain a +2 alchemical bonus to Strength, Dexterity, and Constitution until the end of your turn for each point of burn reduction your gather power would grant (to a maximum of +10 when spending a full round plus a move action to gather power with the supercharge class feature).",
                          summary: "When you gather power, instead of reducing the burn cost of a blast wild talent, you can send elemental energy flowing through your body to gain a +2 alchemical bonus to Strength, Dexterity, and…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grab and Go (Combat)",
                          featType: "General",
                          prerequisites: "Catch Off-Guard or Throw Anything, base attack bonus +1.",
                          benefit: "As a free action, you can pick up an unattended item as part of a movement. Picking up the item does not provoke an attack of opportunity. If you have Throw Anything, you can pick up a number of closely gathered items that could be held in one hand (such as dishes from a stack of plates) equal to your Dexterity modifier (minimum 1). You must have a hand free to use this feat.",
                          summary: "As a free action, you can pick up an unattended item as part of a movement. Picking up the item does not provoke an attack of opportunity.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improvisational Focus (Combat)",
                          featType: "General",
                          prerequisites: "Catch Off-Guard or Throw Anything, base attack bonus +1.",
                          benefit: "You gain a +1 bonus on attack rolls you make using an improvised weapon. You are considered proficient with the improvised weapon and are considered to have Weapon Focus with improvised weapons for the purpose of meeting the prerequisites of feats that specifically select a weapon, such as Weapon Specialization.",
                          special: "Thrown splash weapons are not considered improvised weapons for the purposes of this feat.",
                          summary: "You gain a +1 bonus on attack rolls you make using an improvised weapon.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improvised Defenses (Combat)",
                          featType: "General",
                          prerequisites: "Catch Off-Guard or Throw Anything, base attack bonus +1.",
                          benefit: "You gain a +1 shield bonus to AC when you are wielding an improvised weapon and have your other hand free.",
                          summary: "You gain a +1 shield bonus to AC when you are wielding an improvised weapon and have your other hand free.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Linnorm Hunter Coordination (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Cha 13, Dex 13, Dodge, Linnorm Hunter Retreat, Linnorm Hunter Style, base attack bonus +6, must have or be an animal companion.",
                          benefit: "When you and an ally with this feat are using Linnorm Hunter Style and threatening the same target, you can make a single melee attack at your highest base attack bonus against that target as a full-round action. If your attack is successful, you deal extra damage with this feat equal to the damage of one of your ally’s natural attacks. This extra damage is not multiplied on a critical hit.",
                          special: "Animal companions with an Intelligence score of 1 or 2 can take this feat.",
                          summary: "When you and an ally with this feat are using Linnorm Hunter Style and threatening the same target, you can make a single melee attack at your highest base attack bonus against that target as a…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Linnorm Hunter Retreat (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Cha 13, Dex 13, Dodge, Linnorm Hunter Style, base attack bonus +4, must have or be an animal companion.",
                          benefit: "When an ally with this feat uses Linnorm Hunter Style and hits a target with a melee attack, you can move 5 feet as an immediate action without provoking an attack of opportunity from that target.",
                          special: "Animal companions with an Intelligence score of 1 or 2 can take this feat.",
                          summary: "When an ally with this feat uses Linnorm Hunter Style and hits a target with a melee attack, you can move 5 feet as an immediate action without provoking an attack of opportunity from that target.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Linnorm Hunter Style (Combat, Style, Teamwork)",
                          featType: "General",
                          prerequisites: "Cha 13, must have or be an animal companion.",
                          benefit: "Once per round while using this style, when an ally with this feat hits a target that you both threaten using a melee attack, you gain a +2 bonus on attacks of opportunity made against that target for 1 round. Enemies that provoke attacks of opportunity from your ally also provoke attacks of opportunity from you so long as you threaten them (even if the situation or an ability would normally deny you the attack of opportunity).",
                          special: "Animal companions with an Intelligence score of 1 or 2 can take this feat.",
                          summary: "Once per round while using this style, when an ally with this feat hits a target that you both threaten using a melee attack, you gain a +2 bonus on attacks of opportunity made against that target…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Makeshift Maneuvers (Combat)",
                          featType: "General",
                          prerequisites: "Catch Off-Guard or Throw Anything, base attack bonus +1.",
                          benefit: "When you wield an improvised weapon, it gains the disarm and trip weapon properties.",
                          summary: "When you wield an improvised weapon, it gains the disarm and trip weapon properties.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Merciful Takedown (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you perform a coup de grace and deal only nonlethal damage, instead of attempting a Fortitude save to avoid death, the target must instead attempt a Fortitude save to avoid falling unconscious for 1 hour. The DC of this save is the same as that of a lethal coup de grace.",
                          summary: "When you perform a coup de grace and deal only nonlethal damage, instead of attempting a Fortitude save to avoid death, the target must instead attempt a Fortitude save to avoid falling unconscious…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Meteor Swing (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus with bludgeoning weapon, base attack bonus +6.",
                          benefit: "As a standard action, make a single attack with your chosen weapon. If the attack hits, the target must succeed at a Reflex save with a DC equal to 10 + your base attack bonus or lose its ability to make attacks of opportunity until the beginning of your next turn. When your base attack bonus reaches +11, you can instead cause the target to lose its Dexterity bonus to AC. When your base attack bonus reaches +16, you can instead cause the target to become flat footed. You can use this feat’s benefits only once per minute.",
                          summary: "As a standard action, make a single attack with your chosen weapon.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Numbing Blow (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Str 13, Combat Expertise, Improved Disarm, Power Attack.",
                          benefit: "Whenever you succeed at a combat maneuver check to disarm an opponent, the opponent must succeed at a Fortitude save (DC = 10 + your base attack bonus) or be hampered by the pain of the blow. For 1 round, if the target of your disarm combat maneuver failed its save, it can’t use the limb or limbs that had been wielding the disarmed weapon to wield a weapon or shield, provide somatic components for spells, or manipulate objects. This is a pain effect.",
                          summary: "Whenever you succeed at a combat maneuver check to disarm an opponent, the opponent must succeed at a Fortitude save (DC = 10 + your base attack bonus) or be hampered by the pain of the blow.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Octopus Focus (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Octopus Style, Acrobatics 3 ranks, Perception 3 ranks.",
                          benefit: "When using this style, you gain a cumulative +1 bonus on melee attacks for each enemy that threatens you, up to a maximum equal to your Dexterity modifier. In addition, when you attempt to grapple without two free hands, you take only a –2 penalty on your combat maneuver check instead of the usual –4.",
                          summary: "When using this style, you gain a cumulative +1 bonus on melee attacks for each enemy that threatens you, up to a maximum equal to your Dexterity modifier.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Octopus Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Improved Unarmed Strike, Acrobatics 1 rank, Perception 1 rank.",
                          benefit: "As a move action when using this style, you can select a number of creatures you are aware of equal to your Dexterity modifier. You can’t be flanked by the selected creatures until the start of your next turn.",
                          summary: "As a move action when using this style, you can select a number of creatures you are aware of equal to your Dexterity modifier.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Octopus Thrash (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Improved Trip, Octopus Focus, Octopus Style, Acrobatics 7 ranks, Perception 7 ranks.",
                          benefit: "While using Octopus Style, when you threaten two enemies who are adjacent to each other, you can attempt a trip combat maneuver check against both targets at once in place of a melee attack. You attempt a single combat maneuver check at a –5 penalty and apply the result to both targets.",
                          summary: "While using Octopus Style, when you threaten two enemies who are adjacent to each other, you can attempt a trip combat maneuver check against both targets at once in place of a melee attack.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("One-Inch Punch (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, base attack bonus +6, brawler’s flurry class feature or flurry of blows class feature.",
                          benefit: "When making a full attack against a corporeal foe, you can forgo multiple attacks to make one unarmed strike at your highest base attack bonus. For each attack you forgo, you can add half your Strength modifier (minimum +0) to your damage roll. If you hit with this attack, you can attempt a bull rush combat maneuver check as a free action, substituting your attack roll result for the combat maneuver check result and adding a bonus equal to half your Strength modifier for each attack you forgo. This bull rush does not provoke an attack of opportunity, and you do not move as a result of the bull rush.",
                          summary: "When making a full attack against a corporeal foe, you can forgo multiple attacks to make one unarmed strike at your highest base attack bonus.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Overhead Flip (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Grapple, Improved Unarmed Strike, Savage Slam, base attack bonus +9 or monk level 6th.",
                          benefit: "While you are using Savage Slam, if you succeed at your grapple combat maneuver check to knock your opponent prone, the opponent must succeed at a Fortitude save (DC = 10 + your base attack bonus) or be staggered for 1 round. Oozes, incorporeal creatures, and creatures that are immune to critical hits are immune to this effect.",
                          summary: "While you are using Savage Slam, if you succeed at your grapple combat maneuver check to knock your opponent prone, the opponent must succeed at a Fortitude save (DC = 10 + your base attack bonus) or…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Painful Collision (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Bull Rush, Power Attack.",
                          benefit: "When you bull rush an enemy into another creature, both creatures take 1d6 points of bludgeoning damage, plus an additional 1d6 points of bludgeoning damage for every 5 feet your original target has moved as a result of your bull rush. For instance, if you successfully bull rush a goblin 10 feet and it then collides with another goblin, both creatures would take 3d6 points of bludgeoning damage.",
                          summary: "When you bull rush an enemy into another creature, both creatures take 1d6 points of bludgeoning damage, plus an additional 1d6 points of bludgeoning damage for every 5 feet your original target has…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pinpoint Jab (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, base attack bonus +6, ki pool or martial flexibility class feature.",
                          benefit: "As a full-round action, you can expend 1 ki point or one daily use of martial flexibility to use a limited version of the targeted strike deed, targeting either hands or legs with an unarmed attack. A target who succeeds at a Fortitude save (DC = 10 + your base attack bonus) can negate the effect. When your base attack bonus reaches +11, you can instead target head or torso, which the target can negate with a Fortitude save. When your BAB reaches +16, you can target two locations; the target must save against each effect separately.",
                          special: "A monk can substitute his class level for his base attack bonus for this feat’s effects.",
                          summary: "As a full-round action, you can expend 1 ki point or one daily use of martial flexibility to use a limited version of the targeted strike deed, targeting either hands or legs with an unarmed attack.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Practical Kata (Combat, Combination)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, ki pool class feature.",
                          benefit: "When you hit with a melee attack against an opponent you have already damaged this round, you can forgo dealing damage to instead regain 1 ki point. This feat can restore only 1 ki point every minute, to a maximum per day of 1 point for every 4 class levels you have.",
                          summary: "When you hit with a melee attack against an opponent you have already damaged this round, you can forgo dealing damage to instead regain 1 ki point.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reverse Somersault Throw (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Drag, Power Attack, base attack bonus +6 or monk level 3rd.",
                          benefit: "When you succeed at a drag combat maneuver check, at the end of your movement, you can fall prone to launch your target over your head. If you do, you move the target of your drag combat maneuver into the space adjacent to you that is opposite its position at the end of your movement, and the target falls prone in that square or squares. You can’t use this ability to move a creature into a square that is occupied by a solid object or obstacle. If there would not be enough room for the creature in its new position, the ability fails and the creature is not moved.",
                          summary: "When you succeed at a drag combat maneuver check, at the end of your movement, you can fall prone to launch your target over your head.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Savage Leap (Combat)",
                          featType: "General",
                          prerequisites: "Improved Grapple, Improved Unarmed Strike, Savage Slam, base attack bonus +12 or monk level 10th.",
                          benefit: "When you use Savage Slam, you can move yourself and your target up to half your speed before releasing the grapple. You provoke attacks of opportunity from this movement, but your target does not. If your target takes damage from Savage Slam, the target is shaken for 1 round. You become flat-footed until the start of your next turn if you move before using Savage Slam in this way.",
                          summary: "When you use Savage Slam, you can move yourself and your target up to half your speed before releasing the grapple. You provoke attacks of opportunity from this movement, but your target does not.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Savage Slam (Combat)",
                          featType: "General",
                          prerequisites: "Improved Grapple, Improved Unarmed Strike, base attack bonus +3 or monk level 1st.",
                          benefit: "When you begin your turn grappling an opponent, instead of attempting a combat maneuver check to maintain the grapple, you can try to viciously slam your opponent down. As a standard action, you can attempt a grapple combat maneuver check against the opponent. If you succeed, you release your grapple and the opponent falls prone in an unoccupied square of your choice adjacent to you. If you attempt to throw your foe into a hazardous location, such as a wall of fire or a pit, the target receives a +4 bonus to its CMD against your attempt. As long as the opponent lands on solid ground or a solid object, it takes damage equal to your unarmed strike’s damage.",
                          summary: "When you begin your turn grappling an opponent, instead of attempting a combat maneuver check to maintain the grapple, you can try to viciously slam your opponent down.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sculpting the River (Combat, Combination)",
                          featType: "General",
                          prerequisites: "Dodge, Improved Unarmed Strike, base attack bonus +6 or monk level 6th.",
                          benefit: "When you deal damage with an unarmed attack to an opponent you have already damaged this round, you can impose a –1 penalty on that target’s attacks against creatures other than you. The penalties stack and remain until the target misses an attack or the start of your next turn, whichever comes first.",
                          summary: "When you deal damage with an unarmed attack to an opponent you have already damaged this round, you can impose a –1 penalty on that target’s attacks against creatures other than you.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shapeshifter Savage (Combat)",
                          featType: "General",
                          prerequisites: "Shapeshifter Style, Shapeshifter Twist, base attack bonus +8, change shape ability, shapechanger subtype.",
                          benefit: "While you are using Shapeshifter Style, if you use your change shape or wild shape ability as a standard action, you can also make a single melee attack with one of your natural weapons at your highest base attack bonus against one foe within your reach.",
                          special: "A character with the wild shape class feature counts as having the change shape ability and shapechanger subtype for the purpose of meeting this feat’s prerequisites.",
                          summary: "While you are using Shapeshifter Style, if you use your change shape or wild shape ability as a standard action, you can also make a single melee attack with one of your natural weapons at your…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shapeshifter Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Base attack bonus +3, change shape ability, shapechanger subtype.",
                          benefit: "You reshape your body, gaining one of the following benefits. You choose the benefit when you enter the style, and while in the style you can change the benefit as a swift action. Brutal Attack: Choose one of your natural attacks. You gain a +1 bonus on damage rolls with that attack when using this style, plus an additional +1 for every feat you have that lists Shapeshifter Style as a prerequisite (maximum +3). Steady Grip: You gain a climb speed of 10 feet. Tensed Sinews: You gain a +1 bonus on Reflex saving throws and a +5 enhancement bonus to your base speed. Toughened Hide: You gain a +1 enhancement bonus to your existing natural armor bonus.",
                          special: "A character with the wild shape class feature counts as having the change shape ability and shapechanger subtype for the purpose of meeting this feat’s prerequisites.",
                          summary: "You reshape your body, gaining one of the following benefits. You choose the benefit when you enter the style, and while in the style you can change the benefit as a swift action.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shapeshifter Twist (Combat)",
                          featType: "General",
                          prerequisites: "Shapeshifter Style, base attack bonus +5, change shape ability, shapechanger subtype.",
                          benefit: "While you are using Shapeshifter Style, you gain a +2 bonus to your CMD versus bull rush, drag, grapple, overrun, reposition, and trip combat maneuvers. If you begin your turn with the grappled condition, you can attempt a combat maneuver check or an Escape Artist check as a move action to attempt to break the grapple.",
                          special: "A character with the wild shape class feature counts as having the change shape ability and shapechanger subtype for the purpose of meeting this feat’s prerequisites.",
                          summary: "While you are using Shapeshifter Style, you gain a +2 bonus to your CMD versus bull rush, drag, grapple, overrun, reposition, and trip combat maneuvers.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shielded Staff Ambush (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Shielded Staff Style, Two-Weapon Fighting, base attack bonus +4.",
                          benefit: "While in Shielded Staff Style, if you hit a target with a shielded staff, you can attempt either a bull rush, disarm, sunder, or trip combat maneuver check as an immediate action. You lose your shield bonus until the start of your next turn if you attempt this combat maneuver.",
                          summary: "While in Shielded Staff Style, if you hit a target with a shielded staff, you can attempt either a bull rush, disarm, sunder, or trip combat maneuver check as an immediate action.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shielded Staff Master (Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, Improved Two-Weapon Fighting, Shielded Staff Style, Two-Weapon Fighting, base attack bonus +8.",
                          benefit: "While using Shielded Staff Style, you add the attached buckler’s or shield’s enhancement bonus (if any) to the shield bonus you gain from this style. In addition, you do not take the –1 penalty to attacks made with a shielded staff. If both your shield and weapon have an enhancement bonus, use the higher of the two bonuses to determine your shielded staff’s enhancement bonus to attack and damage rolls.",
                          summary: "While using Shielded Staff Style, you add the attached buckler’s or shield’s enhancement bonus (if any) to the shield bonus you gain from this style.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shielded Staff Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Dex 15, Two-Weapon Fighting, Weapon Focus (quarterstaff, any weapon from the polearms fighter weapon group, or any weapon from the spears fighter weapon group), proficiency with bucklers and light shields.",
                          benefit: "When you enter this style, you attach your buckler or light shield to your quarterstaff, polearm, or spear, combining them into a weapon known as a shielded staff. While in this style, you can wield the shielded staff normally, but attacks you make with it take a –1 penalty. As long as you wield the shielded staff with two hands, you gain a +2 shield bonus to your AC (regardless of the shield or buckler’s enhancement bonus). You can’t make shield bash attacks with the attached buckler or shield, and detaching the buckler or shield from the weapon is a move action that provokes attacks of opportunity. The weapon and attached shield count as separate objects for the purposes of abilities or effects that target objects, except for disarm attempts, which treat the shielded staff as a single object. Anyone not in this style who attempts to wield the shielded staff treats it as an improvised weapon that deals bludgeoning damage.",
                          summary: "When you enter this style, you attach your buckler or light shield to your quarterstaff, polearm, or spear, combining them into a weapon known as a shielded staff.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shikigami Manipulation (Combat)",
                          featType: "General",
                          prerequisites: "Catch Off-Guard or Throw Anything, Shikigami Mimicry, Shikigami Style, Use Magic Device 5 ranks.",
                          benefit: "While using Shikigami Style, you can treat any magical item you’re using as an improvised weapon as if it granted an enhancement bonus on attack and damage rolls equal to the item’s caster level divided by 4 (minimum +1), to a maximum bonus of +5.",
                          special: "A character with this feat and Equipment Trick who uses magical equipment to perform a trick can add a bonus equal to the item’s caster level divided by 4 (minimum +1) on skill or combat maneuver checks attempted as part of the trick.",
                          summary: "While using Shikigami Style, you can treat any magical item you’re using as an improvised weapon as if it granted an enhancement bonus on attack and damage rolls equal to the item’s caster level…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shikigami Mimicry (Combat)",
                          featType: "General",
                          prerequisites: "Catch Off- Guard or Throw Anything, Shikigami Style.",
                          benefit: "While in Shikigami Style, you can take a –2 penalty on attack rolls to treat an improvised weapon as if it had one of the following weapon special qualities until the start of your next turn: blocking, brace, disarm, distracting, nonlethal, performance, or trip. If the weapon has the fragile special quality or broken condition, you can treat it as if it had the jagged special quality (Pathfinder Player Companion: Adventurer’s Armory 2 22).",
                          summary: "While in Shikigami Style, you can take a –2 penalty on attack rolls to treat an improvised weapon as if it had one of the following weapon special qualities until the start of your next turn:…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shikigami Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Catch Off-Guard or Throw Anything.",
                          benefit: "While in this style, you deal damage with improvised weapons as if they were one size category larger. For every style feat you have that lists Shikigami Style as a prerequisite, treat the improvised weapon as an additional size category larger, to a maximum of three sizes larger than its actual size.",
                          summary: "While in this style, you deal damage with improvised weapons as if they were one size category larger.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Smashing Impact (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Crushing Impact, Improved Bull Rush, Improved Unarmed Strike, Power Attack.",
                          benefit: "Whenever you successfully bull rush an enemy and its movement is stopped by a solid object or barrier, you can deal your unarmed strike damage to both the foe and the object or barrier, as long as the enemy is within your threatened area. If you performed your bull rush as part of a charge, you gain a +2 bonus on your damage roll. If the damage is enough to destroy the object or barrier, you can continue to push your target the remaining distance allowed by your bull rush combat maneuver.",
                          normal: "You can’t bull rush a creature into a solid object or barrier.",
                          summary: "Whenever you successfully bull rush an enemy and its movement is stopped by a solid object or barrier, you can deal your unarmed strike damage to both the foe and the object or barrier, as long as…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stick-Fighting Counter (Combat)",
                          featType: "General",
                          prerequisites: "Stick-Fighting Style, base attack bonus +4.",
                          benefit: "While you are fighting defensively, as a free action you can select an opponent you have attacked on that turn and prepare yourself to counter one of its attacks. Once per round, when that opponent attempts a melee attack against you and the attack misses, the attacker provokes an attack of opportunity from you, provided that it is within your threatened area. You must use a club, quarterstaff, dan bong, sap, or tonfa to perform the attack of opportunity.",
                          summary: "While you are fighting defensively, as a free action you can select an opponent you have attacked on that turn and prepare yourself to counter one of its attacks.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stick-Fighting Maneuver (Combat)",
                          featType: "General",
                          prerequisites: "Stick-Fighting Counter, Stick-Fighting Style, base attack bonus +6.",
                          benefit: "When making a full attack using only clubs, a quarterstaff, dan bongs, saps, or tonfas, you can perform a combat maneuver as an extra attack using your full base attack bonus.",
                          summary: "When making a full attack using only clubs, a quarterstaff, dan bongs, saps, or tonfas, you can perform a combat maneuver as an extra attack using your full base attack bonus.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stick-Fighting Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "When fighting with a club, quarterstaff, dan bong, sap, or tonfa with which you are proficient, you gain a +1 enhancement bonus on attack rolls as though it were a masterwork weapon. If the weapon actually is a masterwork weapon, it instead counts as having the blocking, disarm, distracting, performance, and trip special weapon qualities, even if the weapon normally doesn’t have them.",
                          summary: "When fighting with a club, quarterstaff, dan bong, sap, or tonfa with which you are proficient, you gain a +1 enhancement bonus on attack rolls as though it were a masterwork weapon.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Storm of Blades (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus with slashing weapon, base attack bonus +6.",
                          benefit: "As a standard action, you can make a single attack with your chosen weapon while setting up a vortex of cuts that lasts until the beginning of your next turn. Any creature that begins its turn threatened by this weapon takes damage equal to your Strength or Dexterity bonus, whichever is greater. When your base attack bonus reaches +11, you also add your base weapon damage. When your base attack bonus reaches +16, you gain the distraction universal monster rule for this damage, but a creature that fails its save is only sickened. You can use this feat’s benefits only once per minute.",
                          summary: "As a standard action, you can make a single attack with your chosen weapon while setting up a vortex of cuts that lasts until the beginning of your next turn.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stupefying Strike (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Wis 13, Improved Unarmed Strike, base attack bonus +8.",
                          benefit: "When using this feat, in addition to dealing damage normally, you force a foe damaged by your unarmed attack to attempt a Fortitude save (DC = 10 + half your character level + your Wisdom modifier). If it fails, it loses its skill ranks and activated feats, such as Power Attack or Stunning Fist, for 1d4 rounds. You must declare you are using this feat before you make your attack roll; if you miss, the target is unaffected and your attempt is wasted. You can try to use Stupefying Strike once per day for every 4 character levels you have, but no more than once per round. Constructs, incorporeal creatures, mindless creatures, plants, undead, and creatures immune to critical hits can’t be affected by this ability.",
                          summary: "When using this feat, in addition to dealing damage normally, you force a foe damaged by your unarmed attack to attempt a Fortitude save (DC = 10 + half your character level + your Wisdom modifier).",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sweeping Disarm (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Disarm, base attack bonus +1.",
                          benefit: "Whenever you succeed at a combat maneuver check to disarm an opponent, you can attempt a second disarm at a –5 penalty against an opponent adjacent to the original target. You need not be threatening the second target. You can attempt only one additional disarm combat maneuver check per round with this feat.",
                          summary: "Whenever you succeed at a combat maneuver check to disarm an opponent, you can attempt a second disarm at a –5 penalty against an opponent adjacent to the original target.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tangled Limbs (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Trip, Weapon Focus with the chosen weapon.",
                          benefit: "Choose one weapon with the reach special quality. When you attempt a trip combat maneuver check with the chosen weapon, your target doesn’t receive a bonus to its CMD against your trip attempt for having more than two legs.",
                          normal: "A creature with more than two legs receives a +2 bonus to its CMD against trip attempts for each additional leg it has.",
                          special: "In addition to the chosen weapon, a character with the weapon training class feature can use Tangled Limbs with any melee weapon from any fighter weapon group that he has selected with weapon training and that has the reach special quality.",
                          summary: "Choose one weapon with the reach special quality. When you attempt a trip combat maneuver check with the chosen weapon, your target doesn’t receive a bonus to its CMD against your trip attempt for…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Thousand Cuts (Combat, Combination)",
                          featType: "General",
                          prerequisites: "Weapon Focus with slashing weapon.",
                          benefit: "When you deal damage with a melee attack with a slashing weapon to an opponent you have already damaged this round, you can also deal 1 point of bleed damage that lasts for 2 rounds. This bleed damage stacks with itself, but only if dealt in the same round.",
                          summary: "When you deal damage with a melee attack with a slashing weapon to an opponent you have already damaged this round, you can also deal 1 point of bleed damage that lasts for 2 rounds.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Titan's Tangle (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Trip, Tangled Limbs, Weapon Focus with the chosen weapon.",
                          benefit: "Choose one weapon with the reach special quality. When you attempt a trip combat maneuver check with the chosen weapon, you can try to trip creatures that are up to two size categories larger than you. If you have the Greater Weapon Focus feat with the chosen weapon, you can attempt to trip creatures up to three size categories larger than you are.",
                          normal: "You can trip only an opponent who is no more than one size category larger than you.",
                          special: "In addition to the chosen weapon, a character with the weapon training class feature can use Titan’s Tangle with any melee weapon from any fighter weapon group that he has selected with weapon training and that has the reach special quality.",
                          summary: "Choose one weapon with the reach special quality. When you attempt a trip combat maneuver check with the chosen weapon, you can try to trip creatures that are up to two size categories larger than…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Toppling Pileup (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Trip.",
                          benefit: "As a standard action, you can attempt a single trip combat maneuver check at your full base attack bonus against a foe within reach. If you succeed, the target is knocked prone as normal and you can attempt an additional trip combat maneuver check (using your full base attack bonus) against a foe that is adjacent to the first target and also within reach. You can attempt only one additional combat maneuver per round with this feat.",
                          summary: "As a standard action, you can attempt a single trip combat maneuver check at your full base attack bonus against a foe within reach.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tumbling Upset (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Trip, Acrobatics 7 ranks.",
                          benefit: "When you succeed at an Acrobatics check to move through an enemy’s space, you can spend a swift action to attempt a trip combat maneuver check against the opponent. Even if you fail this check by 10 or more, you do not fall prone.",
                          normal: "If you fail a trip combat maneuver check by 10 or more, you are knocked prone.",
                          summary: "When you succeed at an Acrobatics check to move through an enemy’s space, you can spend a swift action to attempt a trip combat maneuver check against the opponent.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unbalancing Blow (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Wis 13, Improved Unarmed Strike, base attack bonus +4.",
                          benefit: "When using this feat, in addition to dealing damage normally, you force a foe damaged by your unarmed attack to attempt a Reflex saving throw (DC = 10 + half your character level + your Wisdom modifier). A creature that fails this saving throw is flat-footed, and if it is larger than Medium size, it loses any special size modifier to its CMD against effects or combat maneuvers that would move it until its next turn. It is also knocked out of any stance associated with a style feat. You must declare that you are using this feat before you make your attack roll; if your attack roll fails, the target is unaffected and your attempt is wasted. You can attempt to use Unbalancing Blow once per day for every 4 character levels you have, but no more than once per round. Creatures immune to tripping are immune to this effect.",
                          summary: "When using this feat, in addition to dealing damage normally, you force a foe damaged by your unarmed attack to attempt a Reflex saving throw (DC = 10 + half your character level + your Wisdom…",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Whipcrack (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Reposition, base attack bonus +3 or monk level 1st.",
                          benefit: "When you successfully reposition an opponent, its movement need not remain within your reach, though once the opponent leaves your reach, its remaining movement must be in a straight line. This movement doesn’t provoke attacks of opportunity unless you have the Greater Reposition feat.",
                          normal: "The target of a reposition combat maneuver must remain within your reach at all times during its movement, except for the final 5 feet of movement, which can be to a space adjacent to your reach.",
                          summary: "When you successfully reposition an opponent, its movement need not remain within your reach, though once the opponent leaves your reach, its remaining movement must be in a straight line.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Whirling Hold (Combat)",
                          featType: "General",
                          prerequisites: "Improved Grapple, Improved Unarmed Strike.",
                          benefit: "When you succeed at a combat maneuver check to maintain a grapple, instead of choosing to damage, move, pin, or tie up your opponent, you can lift and rapidly spin your opponent. At the end of the spin, you can place the opponent in any square adjacent to you. The opponent is sickened for a number of rounds equal to your Strength or Dexterity modifier, whichever is higher.",
                          summary: "When you succeed at a combat maneuver check to maintain a grapple, instead of choosing to damage, move, pin, or tie up your opponent, you can lift and rapidly spin your opponent.",
                          source: "Martial Arts Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wrist Grab (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Int 13, Combat Expertise, Combat Reflexes, Improved Disarm, Improved Unarmed Strike, base attack bonus +6.",
                          benefit: "When an opponent’s attack misses you by 5 or more, you can attempt a disarm combat maneuver check against that foe as an immediate action.",
                          summary: "When an opponent’s attack misses you by 5 or more, you can attempt a disarm combat maneuver check against that foe as an immediate action.",
                          source: "Martial Arts Handbook", isPremium: true),

                    // // MARK: - Martial Arts Handbook, Weapon Master's Handbook
        )
        try await db.insertFeat(
        .make("Weapon Trick (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "You can use any weapon tricks relating to the chosen weapon option if you meet the trick’s prerequisites and are proficient with any weapon or shield that you use as part of the trick.",
                          special: "You can gain Weapon Trick multiple times. Each time you take the feat, it applies to a new weapon trick option.",
                          summary: "You can use any weapon tricks relating to the chosen weapon option if you meet the trick’s prerequisites and are proficient with any weapon or shield that you use as part of the trick.",
                          source: "Martial Arts Handbook, Weapon Master's Handbook", isPremium: true),

                    // // MARK: - Melee Tactics Toolbox
        )
        try await db.insertFeat(
        .make("Armored Athlete (Combat)",
                          featType: "General",
                          prerequisites: "Light armor proficiency, medium armor proficiency, 3 ranks in any Dexterity- or Strength-based skill.",
                          benefit: "Choose one Dexterity- or Strength-based skill in which you possess at least 3 ranks. When you attempt a check for the chosen skill, your armor check penalty on that check for wearing light or medium armor is reduced by 3 (to a minimum of 0). If you have 10 or more ranks in the skill, the penalty is instead reduced by 6 (to a minimum of 0). If you have armor training 2 and are proficient with heavy armor, this benefit also applies to armor check penalties for wearing heavy armor.",
                          special: "You can gain this feat multiple times. Each time you take the feat, it applies to a new skill.",
                          summary: "Choose one Dexterity- or Strength-based skill in which you possess at least 3 ranks.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Artful Dodge (Combat)",
                          featType: "General",
                          prerequisites: "Int 13.",
                          benefit: "If you are the only character threatening an opponent, you gain a +1 dodge bonus to AC against that opponent.",
                          special: "The Artful Dodge feat acts as the Dodge feat for the purpose of satisfying prerequisites that require Dodge. You can use Intelligence, rather than Dexterity, for feats with a minimum Dexterity prerequisite.",
                          summary: "If you are the only character threatening an opponent, you gain a +1 dodge bonus to AC against that opponent.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await seedFeatsG()
    }
}
