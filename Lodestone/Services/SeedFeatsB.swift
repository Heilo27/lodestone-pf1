import Foundation

extension SeedDataBuilder {
    func seedFeatsB() async throws {
        try await db.insertFeat(
        .make("Reactive Healing",
                          featType: "General",
                          prerequisites: "Quick Channel or Quicken Spell; channel energy or lay on hands class feature.",
                          benefit: "When the damage from an attack or an effect would reduce you to 0 or fewer hit points, you can expend one use of channel energy (of a form that would heal you) or lay on hands as an immediate action to heal yourself. The healing affects only you, even if it would normally affect others.",
                          summary: "When the damage from an attack or an effect would reduce you to 0 or fewer hit points, you can expend one use of channel energy (of a form that would heal you) or lay on hands as an immediate action…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reckless Rage",
                          featType: "General",
                          prerequisites: "Power Attack; rage or raging song class feature.",
                          benefit: "When you use Power Attack while raging or while using raging song, you take an additional –1 penalty on melee attack rolls and combat maneuver checks, and you gain an additional +2 bonus on melee damage rolls. Modify this damage bonus appropriately based on the type of weapon you are using, as normal for Power Attack.",
                          summary: "When you use Power Attack while raging or while using raging song, you take an additional –1 penalty on melee attack rolls and combat maneuver checks, and you gain an additional +2 bonus on melee…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Recovered Rage",
                          featType: "General",
                          prerequisites: "Rage or raging song class feature.",
                          benefit: "Whenever you reduce a foe to 0 or fewer hit points while you are raging or using raging song, you regain 1 round of rage or raging song (your choice if you have both abilities), as long as the number of Hit Dice that foe possesses are equal to or greater than 1/2 your character level. You cannot use this feat to regain more rounds of rage or raging song each day than your daily maximum number of rounds, nor can you ever exceed your maximum number of rounds.",
                          summary: "Whenever you reduce a foe to 0 or fewer hit points while you are raging or using raging song, you regain 1 round of rage or raging song (your choice if you have both abilities), as long as the number…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Resilient Armor",
                          featType: "General",
                          prerequisites: "Divine bond (armor or shield), or sacred armor class feature.",
                          benefit: "While your armor or shield is under the effect of your divine bond or your sacred armor ability, you gain an amount of damage reduction equal to your armor’s enhancement bonus (including the bonus from your divine bond or sacred armor) against the first attack to strike you in each round. An adamantine weapon overcomes this damage reduction, but any attack against you made with such a weapon does not count against this effect’s duration.",
                          summary: "While your armor or shield is under the effect of your divine bond or your sacred armor ability, you gain an amount of damage reduction equal to your armor’s enhancement bonus (including the bonus…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Riving Strike (Combat)",
                          featType: "General",
                          prerequisites: "Arcane Strike, ability to cast arcane spells.",
                          benefit: "If you have a weapon that is augmented by your Arcane Strike feat, when you damage a creature with an attack made with that weapon, that creature takes a –2 penalty on saving throws against spells and spell-like abilities. This effect lasts for 1 round.",
                          summary: "If you have a weapon that is augmented by your Arcane Strike feat, when you damage a creature with an attack made with that weapon, that creature takes a –2 penalty on saving throws against spells…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Seething Hatred (Combat)",
                          featType: "General",
                          prerequisites: "Studied target class feature.",
                          benefit: "Select a creature type from the Ranger Favored Enemies table (Core Rulebook 64). When you designate a creature of this type as your studied target and hit it with a melee or ranged weapon attack, your favored target bonus on damage rolls against it is doubled.",
                          summary: "Select a creature type from the Ranger Favored Enemies table (Core Rulebook 64).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Seize Advantage (Combat)",
                          featType: "General",
                          prerequisites: "Opportune parry and riposte deed.",
                          benefit: "When your foe is using Power Attack and you successfully use the opportune parry and riposte deed to parry its attack and then respond with a riposte, you add your foe’s current bonus on damage rolls from Power Attack to your own damage roll, but you do not take the penalty to hit from your foe’s Power Attack.",
                          summary: "When your foe is using Power Attack and you successfully use the opportune parry and riposte deed to parry its attack and then respond with a riposte, you add your foe’s current bonus on damage rolls…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Share Healing (Teamwork)",
                          featType: "General",
                          prerequisites: "Ability to acquire an animal companion, eidolon, familiar, or special mount.",
                          benefit: "When you and your companion creature have this feat, your companion creature is adjacent to you or sharing your square, and you receive the benefit of a healing spell (whether from yourself or another source), you can divide the hit points healed evenly between yourself and your companion creature.",
                          summary: "When you and your companion creature have this feat, your companion creature is adjacent to you or sharing your square, and you receive the benefit of a healing spell (whether from yourself or…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Silent Kill (Combat)",
                          featType: "General",
                          prerequisites: "Stealth 12 ranks; assassinate advanced slayer talent or ninja master trick.",
                          benefit: "When you kill a creature during a surprise round, you can attempt a Stealth check, opposed by the Perception checks of potential observers, to prevent them from noticing your action and subsequently identifying you as the assailant.",
                          summary: "When you kill a creature during a surprise round, you can attempt a Stealth check, opposed by the Perception checks of potential observers, to prevent them from noticing your action and subsequently…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Skald's Vigor",
                          featType: "General",
                          prerequisites: "Raging song class feature.",
                          benefit: "While maintaining a raging song, you gain fast healing equal to the Strength bonus your song provides, starting in the round after you begin the song. If you stop maintaining your song, the fast healing ends, even if the effects of your song persist.",
                          summary: "While maintaining a raging song, you gain fast healing equal to the Strength bonus your song provides, starting in the round after you begin the song.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Skilled Rager",
                          featType: "General",
                          prerequisites: "Rage class feature.",
                          benefit: "Choose one Charisma-, Dexterity-, or Intelligence-based skill. While you are raging, you can use this skill.",
                          special: "You can take this feat multiple times. Each time you do, it applies to a different skill.",
                          summary: "Choose one Charisma-, Dexterity-, or Intelligence-based skill. While you are raging, you can use this skill.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Slashing Grace (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Weapon Finesse, Weapon Focus with chosen weapon.",
                          benefit: "Choose one kind of light or one-handed slashing weapon (such as the longsword). When wielding your chosen weapon one-handed, you can treat it as a one-handed piercing melee weapon for all feats and class abilities that require such a weapon (such as a swashbuckler’s or a duelist’s precise strike) and you can add your Dexterity modifier instead of your Strength modifier to that weapon’s damage. The weapon must be one appropriate for your size. You do not gain this benefit while fighting with two weapons or using flurry of blows, or any time another hand is otherwise occupied.",
                          summary: "Choose one kind of light or one-handed slashing weapon (such as the longsword).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Slayer's Feint (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Acrobatic or slayer level 1st, Combat Expertise, Acrobatics 1 rank.",
                          benefit: "You can use Acrobatics instead of Bluff to feint in combat.",
                          summary: "You can use Acrobatics instead of Bluff to feint in combat.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Slow Faller",
                          featType: "General",
                          prerequisites: "Acrobatics 5 ranks or slow fall class feature.",
                          benefit: "When you are within arm’s reach of a wall, you can slow your descent, as long as you are not in heavy armor. You take damage as if the fall were 10 feet shorter than it actually is. This ability stacks with the slow fall class feature.",
                          special: "You can take this feat multiple times. Each time you do, you take damage as if the fall were an additional 10 feet shorter.",
                          summary: "When you are within arm’s reach of a wall, you can slow your descent, as long as you are not in heavy armor. You take damage as if the fall were 10 feet shorter than it actually is.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit Talker",
                          featType: "General",
                          prerequisites: "Hex class feature; shaman level 6th or witch level 6th.",
                          benefit: "Once per day, you can spend 10 minutes communing with a shaman spirit of your choice. When you do, you gain the temporary use of one hex from its list of hexes. This hex is added to your list of available hexes for the next hour, after which you immediately lose all benefits of that hex.",
                          summary: "Once per day, you can spend 10 minutes communing with a shaman spirit of your choice. When you do, you gain the temporary use of one hex from its list of hexes.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit's Gift",
                          featType: "General",
                          prerequisites: "Animal companion class feature or familiar class feature.",
                          benefit: "At the start of the day, you can choose to commune with a single shaman spirit. (Although a shaman would need an hour of preparation, this takes you no time.) Once during the next 24 hours, you can spend a standard action to grant your animal companion or familiar that shaman spirit’s spirit animal ability for 1 minute per level in the class that grants your animal companion or familiar.",
                          summary: "At the start of the day, you can choose to commune with a single shaman spirit.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spiritual Guardian",
                          featType: "General",
                          prerequisites: "Ability to cast spiritual weapon or spiritual ally, spirit magic class feature.",
                          benefit: "Whenever you cast spiritual weapon, spiritual ally, or a similar spell that grants you a spiritual guardian, that guardian uses your shaman level instead of your base attack bonus to determine its base attack bonus, potentially granting it multiple attacks. Additionally, it gains a +2 bonus on caster level checks to overcome spell resistance as well as on damage rolls.",
                          summary: "Whenever you cast spiritual weapon, spiritual ally, or a similar spell that grants you a spiritual guardian, that guardian uses your shaman level instead of your base attack bonus to determine its…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spontaneous Nature's Ally",
                          featType: "General",
                          prerequisites: "Knowledge (nature) 5 ranks, ability to spontaneously cast cure or inflict spells, Animal or Plant domain.",
                          benefit: "You can “lose” a prepared spell in order to cast any summon nature’s ally spell of the same level or lower, instead of casting a cure spell or an inflict spell as you normally would. For the purpose of this feat only, the summon nature's ally spells of the appropriate spell levels count as being on your spell list at the same spell level as for a druid.",
                          summary: "You can “lose” a prepared spell in order to cast any summon nature’s ally spell of the same level or lower, instead of casting a cure spell or an inflict spell as you normally would.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Staggering Fist (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Wis 13, Improved Unarmed Strike, base attack bonus +2.",
                          benefit: "When you damage a foe with your unarmed attack, you can also cause it to be staggered for 1 round (until just before your next turn). The target can avoid this with a successful Fortitude saving throw (DC = 10 + 1/2 your character level + your Wisdom modifier). You must declare that you are using this feat before you make your attack roll; thus, a failed attack roll ruins the attempt. You can attempt to use this feat once per day for every 4 character levels you have, but no more than once per round. Constructs, incorporeal creatures, plants, undead, and creatures that are immune to critical hits cannot be affected by this ability.",
                          summary: "When you damage a foe with your unarmed attack, you can also cause it to be staggered for 1 round (until just before your next turn).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stalker's Focus",
                          featType: "General",
                          prerequisites: "Knowledge (nature) 3 ranks, Survival 3 ranks, no levels in a class that has the animal focus class feature.",
                          benefit: "Choose a single type of animal to emulate from the hunter’s animal focus class feature. Once per day, you or your animal companion (if you have one) can gain the benefit of that animal focus for 1 minute. Treat your character level as your hunter level for the purpose of determining the benefits granted by your chosen animal focus.",
                          special: "If you gain levels in a class that has the animal focus class feature, when you gain that feature you gain 1 additional minute of use each day of your animal focus class feature.",
                          summary: "Choose a single type of animal to emulate from the hunter’s animal focus class feature.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Steadfast Personality",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Add your Charisma modifier instead of your Wisdom bonus on Will saves against mind-affecting effects. If you have a Wisdom penalty, you must apply both your Wisdom penalty and your Charisma modifier.",
                          summary: "Add your Charisma modifier instead of your Wisdom bonus on Will saves against mind-affecting effects. If you have a Wisdom penalty, you must apply both your Wisdom penalty and your Charisma modifier.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stouthearted",
                          featType: "General",
                          prerequisites: "Raging song class feature.",
                          benefit: "While you are maintaining a raging song, if you fail a saving throw against a fear effect, you can expend a round of performing to reroll your saving throw as an immediate action. You must keep this second result, even if it lower.",
                          summary: "While you are maintaining a raging song, if you fail a saving throw against a fear effect, you can expend a round of performing to reroll your saving throw as an immediate action.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Studied Combatant",
                          featType: "General",
                          prerequisites: "Int 13, Amateur Investigator, base attack bonus +6, 1 rank in at least one Knowledge skill, no levels in a class that has the inspiration class feature.",
                          benefit: "You can expend one use of inspiration as a move action to study a single enemy that you can see. When you do so, you gain a +2 insight bonus on melee attack rolls and a +2 bonus on damage rolls for a number of rounds equal to your Intelligence modifier. The bonus on damage rolls is precision damage, and is not multiplied on a critical hit. Once affected by this feat, a target cannot be affect by your use of it again for 24 hours.",
                          summary: "You can expend one use of inspiration as a move action to study a single enemy that you can see.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Surprise Maneuver",
                          featType: "General",
                          prerequisites: "Combat Expertise; sneak attack +3d6 or studied strike +3d6.",
                          benefit: "If you have sneak attack, when you attempt a combat maneuver check against a creature that you are flanking or that is denied its Dexterity bonus to AC against your attack, you gain a bonus on the combat maneuver check that’s equal to the number of sneak attack dice you roll. If you have the studied combat class feature, you can use studied strike on a combat maneuver check. When you do so, you gain a bonus on the combat maneuver check equal to your number of studied strike dice.",
                          summary: "If you have sneak attack, when you attempt a combat maneuver check against a creature that you are flanking or that is denied its Dexterity bonus to AC against your attack, you gain a bonus on the…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Talented Magician",
                          featType: "General",
                          prerequisites: "Major magic rogue talent, minor magic rogue talent.",
                          benefit: "You gain an additional daily use of each of your minor magic and major magic rogue talents.",
                          special: "You can take this feat multiple times. Each time you do, you gain an additional daily use of each talent.",
                          summary: "You gain an additional daily use of each of your minor magic and major magic rogue talents.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Twinned Feint (Combat)",
                          featType: "General",
                          prerequisites: "Cha 13.",
                          benefit: "As a standard action, you can attempt to feint against a foe within your reach. If you succeed at the feint, you can make an additional feint attempt against a foe that is adjacent to the first one and also within reach. You can attempt only one additional feint per action with this feat. When you use this feat, you take a –2 penalty to your AC until your next turn.",
                          special: "If you have the Improved Feint feat, you can use this feat as a move action instead.",
                          summary: "As a standard action, you can attempt to feint against a foe within your reach.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Twist Away",
                          featType: "General",
                          prerequisites: "Evasion.",
                          benefit: "While you are wearing light armor or no armor, if you are forced to attempt a Fortitude saving throw, you can use an immediate action to instead attempt a Reflex saving throw (at the same DC). If you succeed at this saving throw and the attack has a reduced effect on a successful save, you avoid the effect entirely. Whether the saving throw is successful or not, you are staggered until the end of your next turn. If you are prevented from becoming staggered, you can't use Twist Away, nor can you ignore the staggered condition from Twist Away or remove it early.",
                          summary: "While you are wearing light armor or no armor, if you are forced to attempt a Fortitude saving throw, you can use an immediate action to instead attempt a Reflex saving throw (at the same DC).",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unfettered Familiar",
                          featType: "General",
                          prerequisites: "Caster level 5th, familiar class feature.",
                          benefit: "Once per day, you can cast a touch spell without being in contact with your familiar and designate your familiar as the “toucher.” You do not require line of sight to your familiar to use this ability, but you must be within 30 feet of your familiar when you cast the spell, and if you can’t see or hear your familiar, you must at least be able to speak with it.",
                          normal: "Your familiar must be in contact with you when a spell is cast in order for it to deliver the spell.",
                          special: "You can take this feat multiple times. Each time you do, you gain another use of this feat, and the distance you can be from your familiar increases by 10 feet.",
                          summary: "Once per day, you can cast a touch spell without being in contact with your familiar and designate your familiar as the “toucher.” You do not require line of sight to your familiar to use this…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("War Blessing",
                          featType: "General",
                          prerequisites: "Mystery or domain class feature.",
                          benefit: "Choose two warpriest blessings when you take this feat. Each of these blessings must be tied to a domain granted by your deity or to one of the two domains that represent your spiritual inclination and abilities. Twice per day, you can call upon the minor blessing from one or the other of your chosen blessings. This ability otherwise acts like the warpriest blessings class feature. Your effective warpriest level is the highest level that you have in the class that has the mystery or domain class feature.",
                          summary: "Choose two warpriest blessings when you take this feat. Each of these blessings must be tied to a domain granted by your deity or to one of the two domains that represent your spiritual inclination…",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Weapon of the Chosen (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Focus with deity’s favored weapon, must worship and receive spells from a deity.",
                          benefit: "As a swift action, you can call upon your deity to guide an attack you make with your deity’s favored weapon. On your next attack in that round with that weapon, your weapon counts as magical for the purpose of overcoming damage reduction or striking an incorporeal creature. If your attack misses because of concealment, you can reroll your miss chance one time to see whether you actually hit.",
                          summary: "As a swift action, you can call upon your deity to guide an attack you make with your deity’s favored weapon.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Winter's Strike (Combat)",
                          featType: "General",
                          prerequisites: "Nature Magic or the ability to cast druid or ranger spells; Vital Strike, Knowledge (nature) 5 ranks.",
                          benefit: "A number of times per day equal to your Wisdom modifier (minimum 1), when you use Vital Strike (or Improved Vital Strike or Greater Vital Strike), your strike saps the strength of your opponent. The creature hit must succeed at a Fortitude save (DC = 10 + 1/2 your character level + your Wisdom modifier) or become fatigued for a number of rounds equal to your Wisdom modifier (minimum 1). You can choose to use this ability as a free action after you hit the target with the attack. This is a supernatural ability.",
                          summary: "A number of times per day equal to your Wisdom modifier (minimum 1), when you use Vital Strike (or Improved Vital Strike or Greater Vital Strike), your strike saps the strength of your opponent.",
                          source: "Advanced Class Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wounded Paw Gambit (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Broken Wing Gambit, Bluff 5 ranks.",
                          benefit: "Whenever you use Broken Wing Gambit and an opponent attacks you as a result, each ally who has this feat and is within 30 feet of that opponent can attempt a ranged attack against it as an immediate action. The ally’s ranged weapon must be in hand, loaded, and ready to be fired or thrown in order to make this attack possible. An ally who has this feat and Broken Wing Gambit can instead use Broken Wing Gambit to attempt an attack of opportunity against the foe, but cannot attempt both that attack of opportunity and this ranged attack.",
                          summary: "Whenever you use Broken Wing Gambit and an opponent attacks you as a result, each ally who has this feat and is within 30 feet of that opponent can attempt a ranged attack against it as an immediate…",
                          source: "Advanced Class Guide", isPremium: true),

                    // // MARK: - Advanced Class Guide, Advanced Player's Guide
        )
        try await db.insertFeat(
        .make("Extra Hex",
                          featType: "General",
                          prerequisites: "Hex class feature.",
                          benefit: "You gain one additional hex. You must meet the prerequisites for this hex. If you are a shaman, it must be a hex granted by your spirit rather than one from a wandering spirit.",
                          special: "You can take this feat multiple times. Each time you do, you gain another hex.",
                          summary: "You gain one additional hex. You must meet the prerequisites for this hex. If you are a shaman, it must be a hex granted by your spirit rather than one from a wandering spirit.",
                          source: "Advanced Class Guide, Advanced Player's Guide", isPremium: true),

                    // // MARK: - Advanced Class Guide, PRPG Core Rulebook
        )
        try await db.insertFeat(
        .make("Extra Channel",
                          featType: "General",
                          prerequisites: "Channel energy class feature.",
                          benefit: "You can channel energy two additional times per day.",
                          special: "If a paladin with the ability to channel positive energy takes this feat, she can use lay on hands four additional times per day, but only to channel positive energy. If a warpriest with the ability to channel energy takes this feat, he gains four additional uses of fervor per day, but can use them only to channel energy.",
                          summary: "You can channel energy two additional times per day.",
                          source: "Advanced Class Guide, PRPG Core Rulebook", isPremium: true),

                    // // MARK: - Advanced Player's Guide
        )
        try await db.insertFeat(
        .make("Allied Spellcaster (Teamwork)",
                          featType: "General",
                          prerequisites: "Caster level 1st.",
                          benefit: "Whenever you are adjacent to an ally who also has this feat, you receive a +2 competence bonus on level checks made to overcome spell resistance. If your ally has the same spell prepared (or known with a slot available if they are spontaneous spellcasters), this bonus increases to +4 and you receive a +1 bonus to the caster level for all level-dependent variables, such as duration, range, and effect.",
                          summary: "Whenever you are adjacent to an ally who also has this feat, you receive a +2 competence bonus on level checks made to overcome spell resistance.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Arcane Blast",
                          featType: "General",
                          prerequisites: "Arcane spellcaster, caster level 10th.",
                          benefit: "As a standard action, you can sacrifice a prepared spell or unused spell slot of 1st level or higher and transform it into a ray, targeting any foe within 30 feet as a ranged touch attack. This attack deals 2d6 points of damage plus an additional 1d6 points of damage for every level of the spell or spell slot you sacrificed. 0-level spells may not be sacrificed in this manner. This is a supernatural ability.",
                          summary: "As a standard action, you can sacrifice a prepared spell or unused spell slot of 1st level or higher and transform it into a ray, targeting any foe within 30 feet as a ranged touch attack.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Arcane Shield",
                          featType: "General",
                          prerequisites: "Arcane spellcaster, caster level 10th.",
                          benefit: "As a immediate action, you can sacrifice a prepared spell or unused spell slot of 1st level or higher and gain a deflection bonus to AC equal to the level of the spell or spell slot you sacrificed for 1 round. 0-level spells may not be sacrificed in this manner.",
                          summary: "As a immediate action, you can sacrifice a prepared spell or unused spell slot of 1st level or higher and gain a deflection bonus to AC equal to the level of the spell or spell slot you sacrificed…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Arcane Talent",
                          featType: "General",
                          prerequisites: "Cha 10; elf, half-elf, or gnome.",
                          benefit: "Choose a 0-level spell from the sorcerer/wizard spell list. You can cast this spell three times per day as a spell-like ability. The caster level is equal to your character level. The save DC is 10 + your Charisma modifier.",
                          summary: "Choose a 0-level spell from the sorcerer/wizard spell list. You can cast this spell three times per day as a spell-like ability. The caster level is equal to your character level.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aspect of the Beast",
                          featType: "General",
                          prerequisites: "wild shape class feature, see Special.",
                          benefit: "Your bestial nature manifests itself in one of the following ways. You choose the manifestation when you choose the feat, and then you cannot change it. Night Senses (Ex): If your base race has normal vision, you gain low-light vision. If your base race has low-light vision, you gain darkvision out to a range of 30 feet. If your base race has darkvision, the range of your darkvision increases by 30 feet. Claws of the Beast (Ex): You grow a pair of claws. These claws are primary attacks that deal 1d4 points of damage (1d3 if you are Small). Predator's Leap (Ex): You can make a running jump without needing to run 10 feet before you jump.Wild Instinct (Ex): You gain a +2 bonus on initiative checks and a +2 bonus on Survival skill checks.",
                          special: "A character that has contracted lycanthropy can take this feat without having to meet the prerequisites. A ranger who selects the natural weapon combat style can take this feat without having to meet the prerequisites (even if he does not select Aspect of the Beast as a bonus feat).",
                          summary: "Your bestial nature manifests itself in one of the following ways. You choose the manifestation when you choose the feat, and then you cannot change it.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bashing Finish (Combat)",
                          featType: "General",
                          prerequisites: "Improved Shield Bash, Shield Master, Two-Weapon Fighting, base attack bonus +11.",
                          benefit: "Whenever you score a critical hit with a melee weapon, you can make a shield bash attack against the same target using the same bonus as a free action.",
                          summary: "Whenever you score a critical hit with a melee weapon, you can make a shield bash attack against the same target using the same bonus as a free action.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blood of Heroes (Hero Point)",
                          featType: "General",
                          prerequisites: "Hero’s Fortune.",
                          benefit: "Whenever you gain a level, you gain 2 hero points instead of 1.",
                          normal: "Whenever you gain a level, you gain 1 hero point.",
                          summary: "Whenever you gain a level, you gain 2 hero points instead of 1.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bloody Assault (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +6.",
                          benefit: "You can choose to take a –5 penalty on all melee attack rolls and combat maneuver checks to inflict 1d4 points of bleed damage with your weapon melee attacks, in addition to the normal damage dealt by the weapon. A creature continues to take bleed damage every round at the start of its turn. Bleed damage can be stopped by a DC 15 Heal check or through any magical healing. Bleed damage from this feat does not stack with itself. You must choose to use this feat before making the attack roll, and its effects last until your next turn (although the bleeding lasts until healed, as normal).",
                          summary: "You can choose to take a –5 penalty on all melee attack rolls and combat maneuver checks to inflict 1d4 points of bleed damage with your weapon melee attacks, in addition to the normal damage dealt…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bodyguard (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes.",
                          benefit: "When an adjacent ally is attacked, you may use an attack of opportunity to attempt the aid another action to improve your ally’s AC. You may not use the aid another action to improve your ally’s attack roll with this attack.",
                          normal: "Aid another is a standard action.",
                          summary: "When an adjacent ally is attacked, you may use an attack of opportunity to attempt the aid another action to improve your ally’s AC.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bouncing Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever a bouncing spell targeting a single creature has no effect on its intended target (whether due to spell resistance or a successful saving throw) you may, as a swift action, redirect it to target another eligible creature within range. The redirected spell behaves in all ways as if its new target were the original target for the spell. Spells that affect a target in any way (including a lesser effect from a successful saving throw) may not be redirected in this manner. A bouncing spell uses up a spell slot one level higher than the spell’s actual level.",
                          summary: "Whenever a bouncing spell targeting a single creature has no effect on its intended target (whether due to spell resistance or a successful saving throw) you may, as a swift action, redirect it to…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Breadth of Experience",
                          featType: "General",
                          prerequisites: "Dwarf, elf, or gnome; 100+ years old.",
                          benefit: "You get a +2 bonus on all Knowledge and Profession skill checks, and can make checks with those skills untrained.",
                          summary: "You get a +2 bonus on all Knowledge and Profession skill checks, and can make checks with those skills untrained.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bull Rush Strike (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Bull Rush, Power Attack, base attack bonus +9.",
                          benefit: "Whenever you score a critical hit with a melee attack, you can push your opponent back, in addition to the normal damage dealt by the attack. If your confirmation roll exceeds your opponent’s CMD, you may push your opponent back as if from the bull rush combat maneuver. You do not need to move with the target if successful. This does not provoke an attack of opportunity.",
                          normal: "You must perform a bull rush combat maneuver to bull rush an opponent.",
                          special: "You can only apply the effects of one of the following feats to a given critical hit",
                          summary: "Whenever you score a critical hit with a melee attack, you can push your opponent back, in addition to the normal damage dealt by the attack.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Charge Through (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Overrun, Power Attack, base attack bonus +1.",
                          benefit: "When making a charge, you can attempt to overrun one creature in the path of the charge as a free action. If you successfully overrun that creature, you can complete the charge. If the overrun is unsuccessful, the charge ends in the space directly in front of that creature.",
                          normal: "You must have a clear path toward the target of your charge.",
                          summary: "When making a charge, you can attempt to overrun one creature in the path of the charge as a free action. If you successfully overrun that creature, you can complete the charge.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Childlike",
                          featType: "General",
                          prerequisites: "Cha 13, halfling.",
                          benefit: "You can take 10 on Bluff checks to convince others you are telling the truth, so long as your story makes you appear innocent. You gain a +2 bonus on Disguise skill checks to pose as a human child, and ignore the check penalties for disguising yourself as a different race and age category while doing so.",
                          summary: "You can take 10 on Bluff checks to convince others you are telling the truth, so long as your story makes you appear innocent.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cloud Step",
                          featType: "General",
                          prerequisites: "Spider Step, monk level 12th.",
                          benefit: "As a move action, you can air walk (as the spell) up to half your slow fall distance, maximum 50 feet. You must reach a solid, level surface by the end of your turn or you will fall.",
                          summary: "As a move action, you can air walk (as the spell) up to half your slow fall distance, maximum 50 feet. You must reach a solid, level surface by the end of your turn or you will fall.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cockatrice Strike (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Gorgon’s Fist, Medusa’s Wrath, base attack bonus +14.",
                          benefit: "As a full-round action, you can make a single unarmed strike against a dazed, flat-footed, paralyzed, staggered, stunned, or unconscious foe. If that attack is a critical hit, the target is petrified unless it succeeds on a Fortitude saving throw with a DC of 10 + 1/2 your character level + your Wisdom modifier. This is a supernatural polymorph effect.",
                          summary: "As a full-round action, you can make a single unarmed strike against a dazed, flat-footed, paralyzed, staggered, stunned, or unconscious foe.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Combat Patrol (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes, Mobility, base attack bonus +5.",
                          benefit: "As a full-round action, you may set up a combat patrol, increasing your threatened area by 5 feet for every 5 points of your base attack bonus. Until the beginning of your next turn, you may make attacks of opportunity against any opponent in this threatened area that provokes attacks of opportunity. You may move as part of these attacks, provided your total movement before your next turn does not exceed your speed. Any movement you make provokes attacks of opportunity as normal.",
                          summary: "As a full-round action, you may set up a combat patrol, increasing your threatened area by 5 feet for every 5 points of your base attack bonus.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cooperative Crafting",
                          featType: "General",
                          prerequisites: "1 rank in any Craft skill, any item creation feat.",
                          benefit: "You can assist another character in crafting mundane and magical items. You must both possess the relevant Craft skill or item creation feat, but either one of you can fulfill any other prerequisites for crafting the item. You provide a +2 circumstance bonus on any Craft or Spellcraft checks related to making an item, and your assistance doubles the gp value of items that can be crafted each day.",
                          summary: "You can assist another character in crafting mundane and magical items.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Coordinated Defense (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you are adjacent to an ally who also has this feat, you receive a +2 competence bonus to your Combat Maneuver Defense. This bonus increases to +4 if the creature attempting the maneuver is larger than both you and your ally.",
                          summary: "Whenever you are adjacent to an ally who also has this feat, you receive a +2 competence bonus to your Combat Maneuver Defense.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Coordinated Maneuvers (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you are adjacent to an ally who also has this feat, you receive a +2 competence bonus on all combat maneuver checks. This bonus increases to +4 when attempting to break free from a grapple.",
                          summary: "Whenever you are adjacent to an ally who also has this feat, you receive a +2 competence bonus on all combat maneuver checks. This bonus increases to +4 when attempting to break free from a grapple.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Covering Defense (Combat)",
                          featType: "General",
                          prerequisites: "Shield Focus, base attack bonus +6.",
                          benefit: "When you use the total defense action while using a light, heavy, or tower shield, you can provide a cover bonus to AC against all attacks to an adjacent ally your size or smaller. This cover bonus is equal to your shield’s shield bonus and lasts until the beginning of your next turn. Your shield does not provide a cover bonus to Reflex saves.",
                          summary: "When you use the total defense action while using a light, heavy, or tower shield, you can provide a cover bonus to AC against all attacks to an adjacent ally your size or smaller.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crippling Critical (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, base attack bonus +13.",
                          benefit: "Whenever you score a critical hit against an opponent, its speed is halved for 1 minute. A successful Fortitude save reduces this duration to 1d4 rounds. The DC of this save is equal to 10 + your base attack bonus. Against creatures with multiple types of movement, you must choose which movement type to affect. A flying creature hit by this attack must make a DC 10 Fly check to remain airborne, and has its maneuverability reduced by one step.",
                          special: "You can only apply the effects of one critical feat to a given critical hit unless you possess Critical Mastery.",
                          summary: "Whenever you score a critical hit against an opponent, its speed is halved for 1 minute. A successful Fortitude save reduces this duration to 1d4 rounds.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dastardly Finish (Combat)",
                          featType: "General",
                          prerequisites: "Sneak attack +5d6.",
                          benefit: "You can deliver a coup de grace to cowering or stunned targets.",
                          normal: "You can only coup de grace helpless targets.",
                          summary: "You can deliver a coup de grace to cowering or stunned targets.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dazing Assault (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +11.",
                          benefit: "You can choose to take a –5 penalty on all melee attack rolls and combat maneuver checks to daze opponents you hit with your melee attacks for 1 round, in addition to the normal damage dealt by the attack. A successful Fortitude save negates the effect. The DC of this save is 10 + your base attack bonus. You must choose to use this feat before making the attack roll, and its effects last until your next turn.",
                          summary: "You can choose to take a –5 penalty on all melee attack rolls and combat maneuver checks to daze opponents you hit with your melee attacks for 1 round, in addition to the normal damage dealt by the…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dazing Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can modify a spell to daze a creature damaged by the spell. When a creature takes damage from this spell, they become dazed for a number of rounds equal to the original level of the spell. If the spell allows a saving throw, a successful save negates the daze effect. If the spell does not allow a save, the target can make a Will save to negate the daze effect. If the spell effect also causes the creature to become dazed, the duration of this metamagic effect is added to the duration of the spell. A dazing spell uses up a spell slot three levels higher than the spell’s actual level. Spells that do not inflict damage do not benefit from this feat.",
                          summary: "You can modify a spell to daze a creature damaged by the spell. When a creature takes damage from this spell, they become dazed for a number of rounds equal to the original level of the spell.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deep Drinker",
                          featType: "General",
                          prerequisites: "Con 13, monk level 11, drunken ki class feature.",
                          benefit: "When you gain temporary ki from drunken ki, you gain 2 temporary ki rather than just 1.",
                          summary: "When you gain temporary ki from drunken ki, you gain 2 temporary ki rather than just 1.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deepsight",
                          featType: "General",
                          prerequisites: "Darkvision 60 feet.",
                          benefit: "Your darkvision has a range of 120 feet.",
                          normal: "Darkvision normally extends 60 or 90 feet.",
                          summary: "Your darkvision has a range of 120 feet.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disarming Strike (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Disarm, base attack bonus +9.",
                          benefit: "Whenever you score a critical hit with a melee attack, you can disarm your opponent, in addition to the normal damage dealt by the attack. If your confirmation roll exceeds your opponent’s CMD, you may disarm your opponent as if from the disarm combat maneuver. This does not provoke an attack of opportunity.",
                          normal: "You must perform a disarm combat maneuver to disarm an opponent.",
                          special: "You can only apply the effects of one of the following feats to a given critical hit",
                          summary: "Whenever you score a critical hit with a melee attack, you can disarm your opponent, in addition to the normal damage dealt by the attack.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disrupting Shot (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Point-Blank Shot, fighter level 6th.",
                          benefit: "If you ready an action to shoot an opponent casting a spell within 30 feet and successfully hit that opponent with a ranged attack, the concentration DC to successfully cast the spell is increased by +4.",
                          summary: "If you ready an action to shoot an opponent casting a spell within 30 feet and successfully hit that opponent with a ranged attack, the concentration DC to successfully cast the spell is increased by…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disruptive Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Targets affected by a disruptive spell must make concentration checks when using spells or spell-like abilities (DC equals the save DC of the disruptive spell plus the level of the spell being cast) for 1 round. Targets that avoid the spell’s effects avoid this feat’s effect as well. A disruptive spell uses up a spell slot one level higher than the spell’s actual level.",
                          summary: "Targets affected by a disruptive spell must make concentration checks when using spells or spell-like abilities (DC equals the save DC of the disruptive spell plus the level of the spell being cast)…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Diviner's Delving",
                          featType: "General",
                          prerequisites: "Spell Focus (divination).",
                          benefit: "You gain a +2 bonus on caster level checks with divinations to overcome spell resistance or effects that impede divination (for example, nondetection). When using a divination spell that requires concentration, you gain information from the spell 1 round sooner than normal (so you gain information from the first 2 rounds with 1 round of concentration, and information from the third round in the second round of concentration).",
                          summary: "You gain a +2 bonus on caster level checks with divinations to overcome spell resistance or effects that impede divination (for example, nondetection).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dreadful Carnage (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Power Attack, Furious Focus, base attack bonus +11.",
                          benefit: "Whenever you reduce an enemy to 0 or fewer hit points, you can make an Intimidate check to demoralize all enemies within 30 feet as a free action. Enemies that cannot see both you and the enemy you reduced to 0 or fewer hit points are unaffected.",
                          summary: "Whenever you reduce an enemy to 0 or fewer hit points, you can make an Intimidate check to demoralize all enemies within 30 feet as a free action.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Duck and Cover (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you are adjacent to an ally who also has this feat, and both of you are required to make a Reflex saving throw against a spell or effect, you may take the result of your die roll or that of your ally (your modifiers still apply to the roll, regardless of which result you take). If you take your ally’s result, you are knocked prone (or staggered on your next turn, if you are already prone or cannot be knocked prone). In addition, you receive a +2 cover bonus to your AC against ranged attacks as long as your ally is wielding a shield.",
                          summary: "Whenever you are adjacent to an ally who also has this feat, and both of you are required to make a Reflex saving throw against a spell or effect, you may take the result of your die roll or that of…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eagle Eyes",
                          featType: "General",
                          prerequisites: "Wis 13, keen senses racial trait.",
                          benefit: "You ignore up to –5 in penalties due to distance on visual Perception checks, allowing you to see accurately at much greater distances than most.",
                          summary: "You ignore up to –5 in penalties due to distance on visual Perception checks, allowing you to see accurately at much greater distances than most.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eclectic",
                          featType: "General",
                          prerequisites: "Human.",
                          benefit: "Choose an additional favored class and gain either +1 hit point or +1 skill point whenever you take a level in that class. If you choose a class in which you already have levels, the benefits of this feat are retroactive.",
                          summary: "Choose an additional favored class and gain either +1 hit point or +1 skill point whenever you take a level in that class.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ectoplasmic Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "An ectoplasmic spell has full effect against incorporeal or ethereal creatures. An ectoplasmic spell uses up a spell slot one level higher than the spell’s actual level.",
                          summary: "An ectoplasmic spell has full effect against incorporeal or ethereal creatures. An ectoplasmic spell uses up a spell slot one level higher than the spell’s actual level.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eldritch Claws (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, natural weapons, base attack bonus +6.",
                          benefit: "You natural weapons are considered both magic and silver for purpose of overcoming damage reduction.",
                          summary: "You natural weapons are considered both magic and silver for purpose of overcoming damage reduction.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elemental Fist (Combat)",
                          featType: "General",
                          prerequisites: "Con 13, Wis 13, Improved Unarmed Strike, base attack bonus +8.",
                          benefit: "When you use Elemental Strike pick one of the following energy types: acid, cold, electricity, or fire. On a successful hit, the attack deals damage normally plus 1d6 points of damage of the chosen type. You must declare that you are using this feat before you make your attack roll (thus a failed attack roll ruins the attempt). You may attempt an elemental fist attack once per day for every four levels you have attained (see Special), and no more than once per round.",
                          special: "A monk of the four winds receives Elemental Fist as a bonus feat at 1st level, even if he does not meet the prerequisites. A monk may attempt an Elemental Fist attack a number of times per day equal to his monk level, plus one more time per day for every four levels he has in classes other than monk.",
                          summary: "When you use Elemental Strike pick one of the following energy types: acid, cold, electricity, or fire.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elemental Focus",
                          featType: "General",
                          prerequisites: "Elemental Focus APG .",
                          benefit: "Choose one energy type (acid, cold, electricity, or fire). Add +1 to the Difficulty Class for all saving throws against spells that deal damage of the energy type you select.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take this feat, it applies to a new energy type.",
                          summary: "Choose one energy type (acid, cold, electricity, or fire). Add +1 to the Difficulty Class for all saving throws against spells that deal damage of the energy type you select.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elemental Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Choose one energy type: acid, cold, electricity, or fire. You may replace a spell's normal damage with that energy type or split the spell's damage, so that half is of that energy type and half is of its normal type. An elemental spell uses up a spell slot one level higher than the spell's actual level.",
                          special: "You can gain this feat multiple times. Each time you must choose a different energy type.",
                          summary: "Choose one energy type: acid, cold, electricity, or fire. You may replace a spell's normal damage with that energy type or split the spell's damage, so that half is of that energy type and half is of…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elven Accuracy (Combat)",
                          featType: "General",
                          prerequisites: "Elf.",
                          benefit: "If you miss due to concealment when making a ranged attack with a longbow or shortbow (including composite bows), you can reroll your miss chance roll one time to see if you actually hit.",
                          summary: "If you miss due to concealment when making a ranged attack with a longbow or shortbow (including composite bows), you can reroll your miss chance roll one time to see if you actually hit.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expanded Arcana",
                          featType: "General",
                          prerequisites: "Caster level 1st, see Special.",
                          benefit: "Add one spell from your class’s spell list to your list of spells known. This is in addition to the number of spells normally gained at each new level in your class. You may instead add two spells from your class’s spell list to your list of spells known, but both of these spells must be at least one level lower than the highest level spell you can cast in that class. Once made, these choices cannot be changed.",
                          special: "You can only take this feat if you possess levels in a class whose spellcasting relies on a limited list of spells known, such as the bard, oracle, and sorcerer. You can gain Expanded Arcana multiple times.",
                          summary: "Add one spell from your class’s spell list to your list of spells known. This is in addition to the number of spells normally gained at each new level in your class.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Bombs",
                          featType: "General",
                          prerequisites: "Bomb class feature.",
                          benefit: "You can throw two additional bombs per day.",
                          special: "You can gain Extra Bombs multiple times. Its effects stack.",
                          summary: "You can throw two additional bombs per day.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Discovery",
                          featType: "General",
                          prerequisites: "Discovery class feature.",
                          benefit: "You gain one additional discovery. You must meet all of the prerequisites for this discovery.",
                          special: "You can gain Extra Discovery multiple times.",
                          summary: "You gain one additional discovery. You must meet all of the prerequisites for this discovery.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Rage Power",
                          featType: "General",
                          prerequisites: "Rage power class feature.",
                          benefit: "You gain one additional rage power. You must meet all of the prerequisites for this rage power.",
                          special: "You can gain Extra Rage Power multiple times.",
                          summary: "You gain one additional rage power. You must meet all of the prerequisites for this rage power.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Revelation",
                          featType: "General",
                          prerequisites: "Revelation class feature.",
                          benefit: "You gain one additional revelation. You must meet all of the prerequisites for this revelation.",
                          special: "You can gain Extra Revelation multiple times.",
                          summary: "You gain one additional revelation. You must meet all of the prerequisites for this revelation.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Rogue Talent",
                          featType: "General",
                          prerequisites: "Rogue talent class feature.",
                          benefit: "You gain one additional rogue talent. You must meet all of the prerequisites for this rogue talent.",
                          special: "You can gain Extra Rogue Talent multiple times.",
                          summary: "You gain one additional rogue talent. You must meet all of the prerequisites for this rogue talent.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fast Drinker",
                          featType: "General",
                          prerequisites: "Con 18, drunken ki class feature.",
                          benefit: "Drinking strong alcohol to gain temporary ki, takes a swift action rather than a standard action.",
                          summary: "Drinking strong alcohol to gain temporary ki, takes a swift action rather than a standard action.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fast Healer",
                          featType: "General",
                          prerequisites: "Con 13, Diehard, Endurance.",
                          benefit: "When you regain hit points by resting or through magical healing, you recover additional hit points equal to half your Constitution modifier (minimum +1).",
                          summary: "When you regain hit points by resting or through magical healing, you recover additional hit points equal to half your Constitution modifier (minimum +1).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Favored Defense",
                          featType: "General",
                          prerequisites: "Favored enemy class feature.",
                          benefit: "Choose one of your favored enemy types. You add half your favored enemy bonus to your CMD and as a dodge bonus to AC when attacked by a favored enemy.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take this feat, it applies to a new favored enemy type.",
                          summary: "Choose one of your favored enemy types. You add half your favored enemy bonus to your CMD and as a dodge bonus to AC when attacked by a favored enemy.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fight On",
                          featType: "General",
                          prerequisites: "Con 13; dwarf, half-orc, or orc.",
                          benefit: "Once per day, you can gain a number of temporary hit points equal to your Constitution modifier. You can activate this feat as an immediate action when reduced to 0 or fewer hit points. You can use this feat to prevent yourself from dying. These temporary hit points last for 1 minute. If your hit points drop below 0 due to the loss of these temporary hit points, you fall unconscious and are dying as normal. If you also have the ferocity racial trait, you can use that once you have lost the temporary hit points from this feat.",
                          summary: "Once per day, you can gain a number of temporary hit points equal to your Constitution modifier. You can activate this feat as an immediate action when reduced to 0 or fewer hit points.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When casting a spell that affects or targets more than one creature, you can choose one target or creature within the spell effect. That creature’s saving throw DC to resist the spell is increased by +2. You must choose which target to focus the spell on before casting the spell. A focused spell uses up a spell slot one level higher than the spell's actual level.",
                          summary: "When casting a spell that affects or targets more than one creature, you can choose one target or creature within the spell effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Following Step (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Step Up.",
                          benefit: "When using the Step Up feat to follow an adjacent foe, you may move up to 10 feet. You may still take a 5-foot step during your next turn, and any movement you make using this feat does not subtract any distance from your movement during your next turn.",
                          normal: "You can only take a 5-foot step to follow an opponent using Step Up.",
                          summary: "When using the Step Up feat to follow an adjacent foe, you may move up to 10 feet.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Furious Focus (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +1.",
                          benefit: "When you are wielding a two-handed weapon or a one-handed weapon with two hands, and using the Power Attack feat, you do not suffer Power Attack’s penalty on melee attack rolls on the first attack you make each turn. You still suffer the penalty on any additional attacks, including attacks of opportunity.",
                          summary: "When you are wielding a two-handed weapon or a one-handed weapon with two hands, and using the Power Attack feat, you do not suffer Power Attack’s penalty on melee attack rolls on the first attack…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gang Up (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise.",
                          benefit: "You are considered to be flanking an opponent if at least two of your allies are threatening that opponent, regardless of your actual positioning.",
                          normal: "You must be positioned opposite an ally to flank an opponent.",
                          summary: "You are considered to be flanking an opponent if at least two of your allies are threatening that opponent, regardless of your actual positioning.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gnome Trickster",
                          featType: "General",
                          prerequisites: "Cha 13, gnome, gnome magic racial trait.",
                          benefit: "In addition to your normal gnome spell-like abilities, you also gain the following spell-like abilities: 1/day—mage hand and prestidigitation.",
                          summary: "In addition to your normal gnome spell-like abilities, you also gain the following spell-like abilities: 1/day—mage hand and prestidigitation.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Go Unnoticed",
                          featType: "General",
                          prerequisites: "Dex 13, Small size or smaller.",
                          benefit: "During the first round of combat, flat-footed opponents are considered not to have noticed you yet for the purposes of Stealth skill checks, allowing you to make a Stealth check that round to hide from them.",
                          summary: "During the first round of combat, flat-footed opponents are considered not to have noticed you yet for the purposes of Stealth skill checks, allowing you to make a Stealth check that round to hide…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Blind-Fight (Combat)",
                          featType: "General",
                          prerequisites: "Perception 15 ranks, Improved Blind-Fight.",
                          benefit: "Your melee attacks ignore the miss chance for less than total concealment, and you treat opponents with total concealment as if they had normal concealment (20% miss chance instead of 50%). You may still reroll a miss chance percentile roll as normal. If you successfully pinpoint an invisible or hidden attacker, that attacker gets no advantages related to hitting you with ranged attacks, regardless of the range. That is, you don’t lose your Dexterity bonus to Armor Class, and the attacker doesn’t get the usual +2 bonus for being invisible.",
                          special: "The Greater Blind-Fight feat is of no use against a character who is the subject of a blink spell.",
                          summary: "Your melee attacks ignore the miss chance for less than total concealment, and you treat opponents with total concealment as if they had normal concealment (20% miss chance instead of 50%).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Dirty Trick (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Dirty Trick, base attack bonus +6.",
                          benefit: "You receive a +2 bonus on checks made to attempt a dirty trick. This bonus stacks with the bonus granted by Improved Dirty Trick. Whenever you successfully perform a dirty trick, the penalty lasts for 1d4 rounds, plus 1 round for every 5 by which your attack exceeds the target’s CMD. In addition, removing the condition requires the target to spend a standard action.",
                          normal: "The condition imposed by a dirty trick lasts for 1 round plus 1 round for every 5 by which your attack exceeds the target’s CMD. Removing the condition requires the target to spend a move action.",
                          summary: "You receive a +2 bonus on checks made to attempt a dirty trick. This bonus stacks with the bonus granted by Improved Dirty Trick.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Drag (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Drag, Power Attack, base attack bonus +6.",
                          benefit: "You receive a +2 bonus on checks made to drag a foe. This bonus stacks with the bonus granted by Improved Drag. Whenever you drag a foe, his movement provokes attacks of opportunity from all of your allies (but not you).",
                          normal: "Creatures moved by drag do not provoke attacks of opportunity.",
                          summary: "You receive a +2 bonus on checks made to drag a foe. This bonus stacks with the bonus granted by Improved Drag.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Elemental Focus",
                          featType: "General",
                          prerequisites: "Elemental Focus.",
                          benefit: "Add +1 to the Difficulty Class for all saving throws against spells that deal damage of the energy type you select. This bonus stacks with the bonus from Elemental Focus.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take this feat, it applies to a new energy type to which you have already applied the Elemental Focus feat.",
                          summary: "Add +1 to the Difficulty Class for all saving throws against spells that deal damage of the energy type you select. This bonus stacks with the bonus from Elemental Focus.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Reposition (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Reposition, base attack bonus +6.",
                          benefit: "You receive a +2 bonus on checks made to reposition a foe. This bonus stacks with the bonus granted by Improved Reposition. Whenever you reposition a foe, his movement provokes attacks of opportunity from all of your allies (but not you).",
                          normal: "Creatures moved by reposition do not provoke attacks of opportunity.",
                          summary: "You receive a +2 bonus on checks made to reposition a foe. This bonus stacks with the bonus granted by Improved Reposition.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Shield Specialization (Combat)",
                          featType: "General",
                          prerequisites: "Proficiency with selected shield, Greater Shield Focus, Shield Focus, Shield Specialization with selected shield, fighter level 12th.",
                          benefit: "Choose one type of shield (buckler, light, heavy, or tower shield) for which you possess the Shield Specialization feat. With the selected shield, you gain a +2 bonus to your Armor Class against critical hit confirmation rolls (this bonus stacks with that from Shield Specialization). In addition, once per day you may negate a critical hit, and damage is instead rolled normally.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new type of shield.",
                          summary: "Choose one type of shield (buckler, light, heavy, or tower shield) for which you possess the Shield Specialization feat.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Steal (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Steal, base attack bonus +6.",
                          benefit: "You receive a +2 bonus on checks made to steal an item from a foe. This bonus stacks with the bonus granted by Improved Steal. If you successfully steal an item from a foe during combat, it does not notice the theft until after combat is over or if it attempts to use the missing item.",
                          normal: "Creatures automatically notice items taken from them through the steal combat maneuver.",
                          summary: "You receive a +2 bonus on checks made to steal an item from a foe. This bonus stacks with the bonus granted by Improved Steal.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Groundling",
                          featType: "General",
                          prerequisites: "Cha 13, gnome, gnome magic racial trait.",
                          benefit: "You can use speak with animals as a spell-like ability at will, but only to communicate with burrowing animals like gophers, moles, and the like. You can still use your gnome speak with animals ability once per day to speak with any animal, as usual.",
                          summary: "You can use speak with animals as a spell-like ability at will, but only to communicate with burrowing animals like gophers, moles, and the like.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hero's Fortune (Hero Point)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a hero point. The maximum number of hero points you can have at any one time is increased to 5.",
                          normal: "You can have no more than 3 hero points at one time.",
                          special: "NPCs who take this feat receive 1 hero point and can have up to 3 (not 5).",
                          summary: "You gain a hero point. The maximum number of hero points you can have at any one time is increased to 5.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Heroic Defiance",
                          featType: "General",
                          prerequisites: "Diehard, Endurance, base Fortitude save +8.",
                          benefit: "Once per day as an immediate action you can delay the onset of one harmful condition or affliction (such as panicked, paralyzed, stunned, and so on), including permanent and instantaneous conditions. Activating this feat delays the onset of the condition until the end of your next turn, after which time the condition takes its normal effect. This feat has no effect on hit point damage or ability damage.",
                          summary: "Once per day as an immediate action you can delay the onset of one harmful condition or affliction (such as panicked, paralyzed, stunned, and so on), including permanent and instantaneous conditions.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Heroic Recovery",
                          featType: "General",
                          prerequisites: "Diehard, Endurance, base Fortitude save +4.",
                          benefit: "Once per day as a standard action you may attempt a new saving throw against a harmful condition or affliction requiring a Fortitude save that is affecting you. If this save against the affliction fails, there is no additional effect, but a successful save counts toward curing an affliction such as poison or disease. You cannot use this feat to recover from instantaneous effects, effects that do not allow a saving throw, or effects that do not require a Fortitude save.",
                          summary: "Once per day as a standard action you may attempt a new saving throw against a harmful condition or affliction requiring a Fortitude save that is affecting you.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Blind-Fight (Combat)",
                          featType: "General",
                          prerequisites: "Perception 10 ranks, Blind-Fight.",
                          benefit: "Your melee attacks ignore the miss chance for less than total concealment. You may still reroll your miss chance percentile roll for total concealment. If you successfully pinpoint an invisible or hidden attacker within 30 feet, that attacker gets no advantages related to hitting you with ranged attacks. That is, you don’t lose your Dexterity bonus to Armor Class, and the attacker doesn’t get the usual +2 bonus for being invisible.",
                          special: "The Improved Blind-Fight feat is of no use against a character who is the subject of a blink spell.",
                          summary: "Your melee attacks ignore the miss chance for less than total concealment. You may still reroll your miss chance percentile roll for total concealment.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Dirty Trick (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise.",
                          benefit: "You do not provoke an attack of opportunity when performing a dirty trick combat maneuver. In addition, you receive a +2 bonus on checks made to attempt a dirty trick. You also receive a +2 bonus to your Combat Maneuver Defense when an opponent tries a dirty trick on you.",
                          normal: "You provoke an attack of opportunity when performing a dirty trick combat maneuver.",
                          summary: "You do not provoke an attack of opportunity when performing a dirty trick combat maneuver. In addition, you receive a +2 bonus on checks made to attempt a dirty trick.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Drag (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +1.",
                          benefit: "You do not provoke an attack of opportunity when performing a drag combat maneuver. In addition, you receive a +2 bonus on checks made to drag a foe. You also receive a +2 bonus to your Combat Maneuver Defense when an opponent tries to drag you.",
                          normal: "You provoke an attack of opportunity when performing a drag combat maneuver.",
                          summary: "You do not provoke an attack of opportunity when performing a drag combat maneuver. In addition, you receive a +2 bonus on checks made to drag a foe.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Ki Throw (Combat)",
                          featType: "General",
                          prerequisites: "Improved Bull Rush, Ki Throw.",
                          benefit: "When using the Ki Throw feat, you may throw your target into any square you threaten that is occupied by another creature. Make a bull rush combat maneuver check with a –4 penalty against the secondary target. If this check succeeds, the thrown creature lands prone in the secondary target’s square, while the secondary target is pushed back and knocked prone in an adjacent square. If the check fails, the thrown creature lands prone in the nearest square you threaten adjacent to the secondary target. If you throw a Large or larger creature into an area containing multiple secondary targets, you take an additional penalty of –4 on your combat maneuver check for each target after the first.",
                          special: "A monk may take this as a bonus feat at 14th level.",
                          summary: "When using the Ki Throw feat, you may throw your target into any square you threaten that is occupied by another creature.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Reposition (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise.",
                          benefit: "You do not provoke an attack of opportunity when performing a reposition combat maneuver. In addition, you receive a +2 bonus on checks made to reposition a foe. You also receive a +2 bonus to your Combat Maneuver Defense when an opponent tries to reposition you.",
                          normal: "You provoke an attack of opportunity when performing a reposition combat maneuver.",
                          summary: "You do not provoke an attack of opportunity when performing a reposition combat maneuver. In addition, you receive a +2 bonus on checks made to reposition a foe.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Second Chance (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Second Chance, base attack bonus +11.",
                          benefit: "When you reroll a missed attack using the Second Chance feat, you can still make the rest of your attacks that turn, albeit at a –5 penalty to each attack.",
                          normal: "When using the Second Chance feat, you must normally forgo the rest of your attacks that turn.",
                          summary: "When you reroll a missed attack using the Second Chance feat, you can still make the rest of your attacks that turn, albeit at a –5 penalty to each attack.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Share Spells",
                          featType: "General",
                          prerequisites: "Spellcraft 10 ranks, ability to acquire an animal companion, eidolon, familiar, or special mount.",
                          benefit: "Any non-instantaneous spell (but not any spell-like ability) you cast on yourself can also affect a creature bonded to you (such as an animal companion, eidolon, familiar, or special mount). The creature must be within 5 feet of you at the time of casting to receive the benefit. The spell’s duration is halved between you and your bonded creature (for example, a spell with a duration of 1 hour has a duration of 30 minutes for both you and your bonded creature). If the spell or effect has a duration other than instantaneous, it stops affecting the creature if it moves farther than 5 feet away from you. It does not affect the creature again if it returns before the duration expires. You may share spells in this fashion even if the spells normally do not affect creatures of that type. This feat only applies to animal companions, eidolons, familiars, or special mounts gained through a class feature.",
                          summary: "Any non-instantaneous spell (but not any spell-like ability) you cast on yourself can also affect a creature bonded to you (such as an animal companion, eidolon, familiar, or special mount).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Sidestep (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Dodge, Mobility, Sidestep.",
                          benefit: "After sidestepping an opponent’s missed attack using the Sidestep feat, you may still take a 5-foot step during your next turn, or you may move up to your full speed if you take an action to move during your next turn.",
                          normal: "If you use the Sidestep feat, you cannot take a 5-foot step during your next turn.",
                          summary: "After sidestepping an opponent’s missed attack using the Sidestep feat, you may still take a 5-foot step during your next turn, or you may move up to your full speed if you take an action to move…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Steal (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise.",
                          benefit: "You do not provoke an attack of opportunity when performing a steal combat maneuver. In addition, you receive a +2 bonus on checks made to steal an item from a foe. You also receive a +2 bonus to your Combat Maneuver Defense when an opponent tries to steal an item from you.",
                          normal: "You provoke an attack of opportunity when performing a steal combat maneuver.",
                          summary: "You do not provoke an attack of opportunity when performing a steal combat maneuver. In addition, you receive a +2 bonus on checks made to steal an item from a foe.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Stonecunning",
                          featType: "General",
                          prerequisites: "Wis 13, dwarf, stonecunning racial trait.",
                          benefit: "You receive a +4 bonus on Perception checks to notice unusual stonework. This bonus replaces the stonecunning ability’s normal bonus on Perception checks.",
                          summary: "You receive a +4 bonus on Perception checks to notice unusual stonework. This bonus replaces the stonecunning ability’s normal bonus on Perception checks.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("In Harm's Way (Combat)",
                          featType: "General",
                          prerequisites: "Bodyguard.",
                          benefit: "While using the aid another action to improve an adjacent ally’s AC, you can intercept a successful attack against that ally as an immediate action, taking full damage from that attack and any associated effects (bleed, poison, etc.). A creature cannot benefit from this feat more than once per attack.",
                          summary: "While using the aid another action to improve an adjacent ally’s AC, you can intercept a successful attack against that ally as an immediate action, taking full damage from that attack and any…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intensified Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "An intensified spell increases the maximum number of damage dice by 5 levels. You must actually have sufficient caster levels to surpass the maximum in order to benefit from this feat. No other variables of the spell are affected, and spells that inflict damage that is not modified by caster level are not affected by this feat. An intensified spell uses up a spell slot one level higher than the spell's actual level.",
                          summary: "An intensified spell increases the maximum number of damage dice by 5 levels. You must actually have sufficient caster levels to surpass the maximum in order to benefit from this feat.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ironguts",
                          featType: "General",
                          prerequisites: "Con 13; dwarf, half-orc, or orc.",
                          benefit: "You gain a +2 racial bonus on saving throws against any effect causing the nauseated or sickened conditions and against all ingested poisons (but not other poisons). In addition, you receive a +2 bonus on Survival skill checks to find food for yourself (and only yourself).",
                          summary: "You gain a +2 racial bonus on saving throws against any effect causing the nauseated or sickened conditions and against all ingested poisons (but not other poisons).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ironhide",
                          featType: "General",
                          prerequisites: "Con 13; dwarf, half-orc, or orc.",
                          benefit: "You gain a +1 natural armor bonus due to your unusually tough hide.",
                          summary: "You gain a +1 natural armor bonus due to your unusually tough hide.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Keen Scent",
                          featType: "General",
                          prerequisites: "Wis 13, half-orc or orc.",
                          benefit: "You gain the scent special ability.",
                          summary: "You gain the scent special ability.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ki Throw (Combat)",
                          featType: "General",
                          prerequisites: "Improved Trip, Improved Unarmed Strike.",
                          benefit: "On a successful unarmed trip attack against a target your size or smaller, you may throw the target prone in any square you threaten rather than its own square. This movement does not provoke attacks of opportunity, and you cannot throw the creature into a space occupied by other creatures.",
                          special: "A monk may gain Ki Throw as a bonus feat at 10th level. A monk with this feat can affect creatures larger than his own size by spending 1 ki point per size category difference.",
                          summary: "On a successful unarmed trip attack against a target your size or smaller, you may throw the target prone in any square you threaten rather than its own square.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Leaf Singer",
                          featType: "General",
                          prerequisites: "Cha 13, bardic performance class feature, elf or half-elf.",
                          benefit: "When you use bardic performance with audible components in a forest, the range or area of your chosen performance is doubled. In addition, the DC for saving throws against your bardic performance is increased by +2 for creatures of the fey type, regardless of where the performance occurs.",
                          summary: "When you use bardic performance with audible components in a forest, the range or area of your chosen performance is doubled.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Light Step",
                          featType: "General",
                          prerequisites: "Acrobatic Steps, Nimble Moves, elf.",
                          benefit: "You can ignore the effects of difficult terrain in natural environments, as if it were normal terrain.",
                          summary: "You can ignore the effects of difficult terrain in natural environments, as if it were normal terrain.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lingering Performance",
                          featType: "General",
                          prerequisites: "Bardic performance class feature.",
                          benefit: "The bonuses and penalties from your bardic performance continue for 2 rounds after you cease performing. Any other requirement, such as range or specific conditions, must still be met for the effect to continue. If you begin a new bardic performance during this time, the effects of the previous performance immediately cease.",
                          summary: "The bonuses and penalties from your bardic performance continue for 2 rounds after you cease performing.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lingering Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You may cause an instantaneous spell that affects an area to persist until the beginning of your next turn. Those already in the area suffer no additional harm, but other creatures or objects entering the area are subject to its effects. A lingering spell with a visual manifestation obscures vision, providing concealment (20% miss chance) beyond 5 feet and total concealment (50% miss chance) beyond 20 feet.A lingering spell uses up a spell slot one level higher than the spell's actual level.",
                          summary: "You may cause an instantaneous spell that affects an area to persist until the beginning of your next turn.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lookout (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you are adjacent to an ally who also has this feat, you may act in the surprise round as long as your ally would normally be able to act in the surprise round. If you would normally be denied the ability to act in the surprise round, your initiative is equal to your initiative roll or the roll of your ally –1, whichever is lower. If both you and your ally would be able to act in the surprise round without the aid of this feat, you may take both a standard and a move action (or a full-round action) during the surprise round.",
                          summary: "Whenever you are adjacent to an ally who also has this feat, you may act in the surprise round as long as your ally would normally be able to act in the surprise round.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Low Profile (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Small size or smaller.",
                          benefit: "You gain a +1 dodge bonus to AC against ranged attacks. In addition, you do not provide soft cover to creatures when ranged attacks pass through your square.",
                          summary: "You gain a +1 dodge bonus to AC against ranged attacks. In addition, you do not provide soft cover to creatures when ranged attacks pass through your square.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Luck of Heroes (Hero Point)",
                          featType: "General",
                          prerequisites: "Hero’s Fortune.",
                          benefit: "Whenever you spend a hero point to reroll a die roll or to grant yourself a bonus before a die roll is made, there is a chance that the hero point is not spent. Whenever you spend a hero point, roll a d20. If the result is greater than 15, the hero point is not spent. You cannot use this feat when you cheat death.",
                          summary: "Whenever you spend a hero point to reroll a die roll or to grant yourself a bonus before a die roll is made, there is a chance that the hero point is not spent.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Major Spell Expertise",
                          featType: "General",
                          prerequisites: "Minor Spell Expertise, ability to cast 9th-level spells.",
                          benefit: "Choose one spell that you know of 5th level or lower. You may cast that spell twice per day as a spell-like ability. The caster level for this spell-like ability is equal to your caster level in the class from whose spell list the spell is taken. The spell-like ability’s save DC is Charisma-based. If the spell has an expensive focus or material component, it may not be chosen for this feat. You cannot apply metamagic feats to this spell.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new spell.",
                          summary: "Choose one spell that you know of 5th level or lower. You may cast that spell twice per day as a spell-like ability.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Master Alchemist",
                          featType: "General",
                          prerequisites: "Craft (alchemy) 5 ranks.",
                          benefit: "You receive a +2 bonus on Craft (alchemy) checks, and you may create mundane alchemical items much more quickly than normal. When making poisons, you can create a number of doses equal to your Intelligence modifier (minimum 1) at one time. These additional doses do not increase the time required, but they do increase the raw material cost. In addition, whenever you make alchemical items or poisons using Craft (alchemy), use the item’s gp value as its sp value when determining your progress (do not multiply the item’s gp cost by 10 to determine its sp cost).",
                          summary: "You receive a +2 bonus on Craft (alchemy) checks, and you may create mundane alchemical items much more quickly than normal.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Merciful Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can alter spells that inflict damage to inflict nonlethal damage instead. Spells that inflict damage of a particular type (such as fire) inflict nonlethal damage of that same type. A merciful spell does not use up a higher-level spell slot than the spell’s actual level.",
                          summary: "You can alter spells that inflict damage to inflict nonlethal damage instead. Spells that inflict damage of a particular type (such as fire) inflict nonlethal damage of that same type.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Minor Spell Expertise",
                          featType: "General",
                          prerequisites: "Ability to cast 4th-level spells.",
                          benefit: "Choose one 1st-level spell that you know. You may cast that spell twice per day as a spell-like ability. The caster level for this spell-like ability is equal to your caster level in the class from whose spell list the spell is taken. The spell-like ability’s save DC is Charisma-based. If the spell has an expensive focus or material component, it may not be chosen for this feat. You cannot apply metamagic feats to this spell.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new spell.",
                          summary: "Choose one 1st-level spell that you know. You may cast that spell twice per day as a spell-like ability.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Missile Shield (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Shield Focus.",
                          benefit: "You must be using a light, heavy, or tower shield to use this feat. Once per round when you would normally be hit with an attack from a ranged weapon (not including spell effects, natural attacks, or massive ranged weapons), you may deflect it so that you take no damage, as if you had the Deflect Arrows feat. You must be aware of the attack and not flat-footed.",
                          summary: "You must be using a light, heavy, or tower shield to use this feat.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mounted Shield (Combat)",
                          featType: "General",
                          prerequisites: "Mounted Combat, Shield Focus.",
                          benefit: "You may add your base shield bonus (including the bonus from Shield Focus but not including enhancement bonuses) to your mount’s AC. In addition, you may add this bonus when making a Ride check to negate a hit against your mount using the Mounted Combat feat.",
                          summary: "You may add your base shield bonus (including the bonus from Shield Focus but not including enhancement bonuses) to your mount’s AC.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mounted Skirmisher (Combat)",
                          featType: "General",
                          prerequisites: "Ride rank 14, Mounted Combat, Trick Riding.",
                          benefit: "If your mount moves its speed or less, you can still take a full-attack action.",
                          normal: "If your mount moves more than 5 feet, you can only take an attack action.",
                          summary: "If your mount moves its speed or less, you can still take a full-attack action.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Outflank (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Base attack bonus +4.",
                          benefit: "Whenever you and an ally who also has this feat are flanking the same creature, your flanking bonus on attack rolls increases to +4. In addition, whenever you score a critical hit against the flanked creature, it provokes an attack of opportunity from your ally.",
                          summary: "Whenever you and an ally who also has this feat are flanking the same creature, your flanking bonus on attack rolls increases to +4.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Paired Opportunists (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you are adjacent to an ally who also has this feat, you receive a +4 circumstance bonus on attacks of opportunity against creatures that you both threaten. Enemies that provoke attacks of opportunity from your ally also provoke attacks of opportunity from you so long as you threaten them (even if the situation or an ability would normally deny you the attack of opportunity). This does not allow you to take more than one attack of opportunity against a creature for a given action.",
                          summary: "Whenever you are adjacent to an ally who also has this feat, you receive a +4 circumstance bonus on attacks of opportunity against creatures that you both threaten.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Parry Spell",
                          featType: "General",
                          prerequisites: "Spellcraft 15 ranks, Improved Counterspell .",
                          benefit: "Whenever you successfully counter a spell, it returns back to its caster. This works exactly like the spell turning spell.",
                          summary: "Whenever you successfully counter a spell, it returns back to its caster. This works exactly like the spell turning spell.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pass For Human",
                          featType: "General",
                          prerequisites: "Half-elf, half-orc, or halfling (see Special).",
                          benefit: "You receive a +10 bonus on Disguise checks to disguise yourself as a human, and do not receive the penalty for disguising yourself as a member of another race when you do so. In areas largely populated or settled by humans, you can take 10 on your Disguise check, meaning most people tend to assume you are human unless given a reason to think otherwise.",
                          special: "A halfling may take this feat, but must have the Childlike feat as a prerequisite. The benefits of the two feats stack.",
                          summary: "You receive a +10 bonus on Disguise checks to disguise yourself as a human, and do not receive the penalty for disguising yourself as a member of another race when you do so.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Perfect Strike (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Wis 13, Improved Unarmed Strike, base attack bonus +8.",
                          benefit: "You must declare that you are using this feat before you make your attack roll (thus a failed attack roll ruins the attempt). You must use one of the following weapons to make the attack: kama, nunchaku, quarterstaff, sai, and siangham. You can roll your attack roll twice and take the higher result. If one of these rolls is a critical threat, the other roll is used as your confirmation roll (your choice if they are both critical threats). You may attempt a perfect attack once per day for every four levels you have attained (but see Special), and no more than once per round.",
                          special: "A weapon master monk or zen archer monk receives Perfect Strike as a bonus feat at 1st level, even if he does not meet the prerequisites. A monk may attempt an perfect strike attack a number of times per day equal to his monk level, plus one more time per day for every four levels he has in classes other than monk.",
                          summary: "You must declare that you are using this feat before you make your attack roll (thus a failed attack roll ruins the attempt).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Persistent Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever a creature targeted by a persistent spell or within its area succeeds on its saving throw against the spell, it must make another saving throw against the effect. If a creature fails this second saving throw, it suffers the full effects of the spell, as if it had failed its first saving throw. A persistent spell uses up a spell slot two levels higher than the spell’s actual level. Spells that do not require a saving throw to resist or lessen the spell’s effect do not benefit from this feat.",
                          summary: "Whenever a creature targeted by a persistent spell or within its area succeeds on its saving throw against the spell, it must make another saving throw against the effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Point-Blank Master (Combat)",
                          featType: "General",
                          prerequisites: "Weapon Specialization with selected ranged weapon.",
                          benefit: "Choose one type of ranged weapon. You do not provoke attacks of opportunity when firing the selected weapon while threatened.",
                          normal: "Using a ranged weapon while you are threatened provokes attacks of opportunity.",
                          special: "Starting at 6th level, a ranger with the archery combat style may select Point Blank Master as a combat style feat, but he must have Weapon Focus instead of Weapon Specialization in the selected weapon.",
                          summary: "Choose one type of ranged weapon. You do not provoke attacks of opportunity when firing the selected weapon while threatened.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Practiced Tactician",
                          featType: "General",
                          prerequisites: "Tactician class feature.",
                          benefit: "You can use your tactician ability to grant allies a teamwork feat one additional time per day.",
                          special: "You can gain Practiced Tactician multiple times. Its effects stack.",
                          summary: "You can use your tactician ability to grant allies a teamwork feat one additional time per day.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Precise Strike (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Dex 13, base attack bonus +1.",
                          benefit: "Whenever you and an ally who also has this feat are flanking the same the creature, you deal an additional 1d6 points of precision damage with each successful melee attack. This bonus damage stacks with other sources of precision damage, such as sneak attack. This bonus damage is not multiplied on a critical hit.",
                          summary: "Whenever you and an ally who also has this feat are flanking the same the creature, you deal an additional 1d6 points of precision damage with each successful melee attack.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Preferred Spell",
                          featType: "General",
                          prerequisites: "Spellcraft 5 ranks, Heighten Spell.",
                          benefit: "Choose one spell which you have the ability to cast. You can cast that spell spontaneously by sacrificing a prepared spell or spell slot of equal or higher level. You can apply any metamagic feats you possess to this spell when you cast it. This increases the minimum level of the prepared spell or spell slot you must sacrifice in order to cast it but does not affect the casting time.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a different spell.",
                          summary: "Choose one spell which you have the ability to cast. You can cast that spell spontaneously by sacrificing a prepared spell or spell slot of equal or higher level.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Punishing Kick (Combat)",
                          featType: "General",
                          prerequisites: "Con 13, Wis 13, Improved Unarmed Strike, base attack bonus +8.",
                          benefit: "You must declare that you are using this feat before you make your attack roll (thus a failed attack roll ruins the attempt). On a successful hit, the attack deals damage normally and you can choose to push your target 5 feet or attempt to knock them prone. If you decide to push the target, it is moved 5 feet directly away from you. This movement does not provoke attacks of opportunity, and the target must end this move in a safe space it can stand in. If you decide to attempt to knock the target prone, the target receives a Fortitude saving throw with a DC of 10 + 1/2 your character level + your Wisdom modifier to avoid the effect. You may attempt a punishing kick attack once per day for every four levels you have attained (but see Special), and no more than once per round.",
                          special: "A hungry ghost monk receives Punishing Kick as a bonus feat at 1st level, even if he does not meet the prerequisites. A monk may attempt a punishing kick attack a number of times per day equal to his monk level, plus one more time per day for every four levels he has in classes other than monk.",
                          summary: "You must declare that you are using this feat before you make your attack roll (thus a failed attack roll ruins the attempt).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pushing Assault (Combat)",
                          featType: "General",
                          prerequisites: "Str 15, Power Attack, base attack bonus +1.",
                          benefit: "When you hit a creature your size or smaller with a two-handed weapon attack modified by the Power Attack feat, you can choose to push the target 5 feet directly away from you instead of dealing the extra damage from Power Attack. If you score a critical hit, you can instead push the target 10 feet directly away from you. This movement does not provoke attacks of opportunities, and the target must end this move in a safe space it can stand in. You choose which effect to apply after the attack roll has been made, but before the damage is rolled.",
                          summary: "When you hit a creature your size or smaller with a two-handed weapon attack modified by the Power Attack feat, you can choose to push the target 5 feet directly away from you instead of dealing the…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Racial Heritage",
                          featType: "General",
                          prerequisites: "Human.",
                          benefit: "Choose another humanoid race. You count as both human and that race for any effects related to race. For example, if you choose dwarf, you are considered both a human and a dwarf for the purpose of taking traits, feats, how spells and magic items affect you, and so on.",
                          summary: "Choose another humanoid race. You count as both human and that race for any effects related to race.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Raging Vitality",
                          featType: "General",
                          prerequisites: "Con 15, rage class feature.",
                          benefit: "Whenever you are raging, the morale bonus to your Constitution increases by +2. Your rage does not end if you become unconscious. While unconscious you must still expend rounds of rage per day each round.",
                          summary: "Whenever you are raging, the morale bonus to your Constitution increases by +2. Your rage does not end if you become unconscious.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ray Shield (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Missile Shield, Spellbreaker.",
                          benefit: "You must be using a light, heavy, or tower shield to use this feat. Once per round when you would normally be hit with a ranged touch attack (including rays and similar magical effects), you may deflect it so that you take no damage from it. Your shield suffers the full effects of the spell or effect, if applicable.",
                          summary: "You must be using a light, heavy, or tower shield to use this feat.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Razortusk",
                          featType: "General",
                          prerequisites: "Half-orc.",
                          benefit: "You can make a bite attack for 1d4 points of damage, plus your Strength modifier. You’re considered proficient in this attack and can apply feats or effects appropriate to natural attacks to it. If used as part of a full attack action, the bite is considered a secondary attack and is made at your full base attack bonus –5, and adds half your Strength modifier to damage.",
                          summary: "You can make a bite attack for 1d4 points of damage, plus your Strength modifier. You’re considered proficient in this attack and can apply feats or effects appropriate to natural attacks to it.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reach Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can alter a spell with a range of touch, close, or medium to increase its range to a higher range category, using the following order: touch, close, medium, and long. A reach spell uses up a spell slot one level higher than the spell's actual level for each increase in range category. For example, a spell with a range of touch increased to long range uses up a spell slot three levels higher. Spells modified by this feat that require melee touch attacks instead require ranged touch attacks.Spells that do not have a range of touch, close, or medium do not benefit from this feat.",
                          summary: "You can alter a spell with a range of touch, close, or medium to increase its range to a higher range category, using the following order: touch, close, medium, and long.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rending Claws (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, two claw natural weapon attacks, base attack bonus +6.",
                          benefit: "If you hit a creature with two claw attacks in the same turn, the second claw attack deals an additional 1d6 points of damage. This damage is precision damage and is not multiplied on a critical hit. You can use this feat once per round.",
                          summary: "If you hit a creature with two claw attacks in the same turn, the second claw attack deals an additional 1d6 points of damage. This damage is precision damage and is not multiplied on a critical hit.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Repositioning Strike (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Reposition, base attack bonus +9.",
                          benefit: "Whenever you score a critical hit with a melee attack, you can move your opponent, in addition to the normal damage dealt by the attack. If your confirmation roll exceeds your opponent’s CMD, you may move your opponent as if from the reposition combat maneuver. This does not provoke an attack of opportunity.",
                          normal: "You must perform a reposition combat maneuver to reposition an opponent.",
                          special: "You can only apply the effects of one of the following feats to a given critical hit: Bull Rush Strike, Disarming Strike, Repositioning Strike, Sundering Strike, or Tripping Strike. You may choose to use this feat after you make your confirmation roll.",
                          summary: "Whenever you score a critical hit with a melee attack, you can move your opponent, in addition to the normal damage dealt by the attack.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Saving Shield (Combat)",
                          featType: "General",
                          prerequisites: "Shield Proficiency.",
                          benefit: "Whenever an adjacent ally is the target of an attack, you can, as an immediate action, grant that adjacent ally a +2 shield bonus to AC. You must be wielding a light shield, heavy shield, or tower shield to use this feat.",
                          summary: "Whenever an adjacent ally is the target of an attack, you can, as an immediate action, grant that adjacent ally a +2 shield bonus to AC.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Second Chance (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, base attack bonus +6.",
                          benefit: "When making a full attack, if you miss on your first attack, you can forgo making any other attacks for the rest of your turn to reroll that attack at your highest base attack bonus.",
                          summary: "When making a full attack, if you miss on your first attack, you can forgo making any other attacks for the rest of your turn to reroll that attack at your highest base attack bonus.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Selective Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Spellcraft 10 ranks.",
                          benefit: "When casting a selective spell with an area effect and a duration of instantaneous, you can choose a number of targets in the area equal to the ability score modifier used to determine bonus spells of the same type (Charisma for bards, oracles, paladins, sorcerers, and summoners; Intelligence for witches and wizards; Wisdom for clerics, druids, inquisitors, and rangers). These targets are excluded from the effects of your spell. A selective spell uses up a spell slot one level higher than the spell’s actual level. Spells that do not have an area of effect or a duration of instantaneous do not benefit from this feat.",
                          summary: "When casting a selective spell with an area effect and a duration of instantaneous, you can choose a number of targets in the area equal to the ability score modifier used to determine bonus spells…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shadow Strike (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "You can deal precision damage, such as sneak attack damage, against targets with concealment (but not total concealment).",
                          summary: "You can deal precision damage, such as sneak attack damage, against targets with concealment (but not total concealment).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shared Insight",
                          featType: "General",
                          prerequisites: "Wis 13, half-elf.",
                          benefit: "As a move action, you can grant all friendly creatures within 30 feet who can see or hear you a +2 bonus on Perception checks for a number of rounds equal to your Wisdom modifier (minimum 1 round).",
                          summary: "As a move action, you can grant all friendly creatures within 30 feet who can see or hear you a +2 bonus on Perception checks for a number of rounds equal to your Wisdom modifier (minimum 1 round).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sharp Senses",
                          featType: "General",
                          prerequisites: "Keen senses racial trait.",
                          benefit: "You receive a +4 racial bonus on Perception skill checks. This replaces the normal bonus from the keen senses racial trait.",
                          normal: "The keen senses trait normally grants a +2 racial bonus on Perception skill checks.",
                          summary: "You receive a +4 racial bonus on Perception skill checks. This replaces the normal bonus from the keen senses racial trait.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shield Specialization (Combat)",
                          featType: "General",
                          prerequisites: "Proficiency with selected shield, Shield Focus, fighter level 4th.",
                          benefit: "Choose one type of shield (buckler, light, heavy, or tower shield). With the selected shield, you gain a +2 bonus to your Armor Class against critical hit confirmation rolls. In addition, you may add your base shield bonus (including the bonus from Shield Focus but not including enhancement bonuses) to your CMD.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new type of shield.",
                          summary: "Choose one type of shield (buckler, light, heavy, or tower shield). With the selected shield, you gain a +2 bonus to your Armor Class against critical hit confirmation rolls.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shield Wall (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Shield Proficiency.",
                          benefit: "Whenever you are wielding a shield and are adjacent to an ally wielding a shield who also has this feat, the AC bonus from your shield increases, depending on the shield wielded by your ally. If your ally is wielding a buckler or a light shield, your shield bonus increases by +1. If your ally is wielding a heavy shield or a tower shield, your shield bonus increases by +2. You keep these bonuses even if your ally loses his shield bonus due to making a shield bash attack. If an adjacent ally with this feat uses a tower shield to grant total cover, you also benefit if an attack targeting you passes through the edge of the shield (Core Rulebook 153).",
                          summary: "Whenever you are wielding a shield and are adjacent to an ally wielding a shield who also has this feat, the AC bonus from your shield increases, depending on the shield wielded by your ally.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shield of Swings (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +1.",
                          benefit: "When you take a full-attack action while wielding a two-handed weapon, you can choose to reduce the damage by 1/2 to gain a +4 shield bonus to AC and CMD until the beginning of your next turn. The reduction in damage applies until the beginning of your next turn.",
                          summary: "When you take a full-attack action while wielding a two-handed weapon, you can choose to reduce the damage by 1/2 to gain a +4 shield bonus to AC and CMD until the beginning of your next turn.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shielded Caster (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you are adjacent to an ally who also has this feat, you receive a +4 competence bonus on concentration checks. If your ally is wielding a buckler or a light shield, this bonus increases by +1. If your ally is wielding a heavy shield or a tower shield, this bonus increases by +2. Finally, if an enemy threatening you and your ally has the Disruptive feat, or another ability that increases the DC of concentration checks, the amount of the increase is halved.",
                          summary: "Whenever you are adjacent to an ally who also has this feat, you receive a +4 competence bonus on concentration checks.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sickening Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can modify a spell to sicken a creature damaged by the spell. When a creature takes damage from this spell, they become sickened for a number of rounds equal to the original level of the spell. If the spell allows a saving throw, a successful save negates the sickening effect. If the spell does not allow a save, the target can make a Fortitude save to negate the sickening effect. If the spell effect also causes the creature to become sickened, the duration of this metamagic effect is added on to the duration of the spell. A sickening spell uses up a spell slot two levels higher than the spell’s actual level. Spells that do not inflict damage do not benefit from this feat.",
                          summary: "You can modify a spell to sicken a creature damaged by the spell. When a creature takes damage from this spell, they become sickened for a number of rounds equal to the original level of the spell.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sidestep (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Mobility.",
                          benefit: "Whenever an opponent misses you with a melee attack, you may move 5 feet as an immediate action so long as you remain within that opponent’s threatened area. This movement does not provoke attacks of opportunity. If you take this step, you cannot take a 5-foot step during your next turn. If you take an action to move during your next turn, subtract 5 feet from your total movement.",
                          summary: "Whenever an opponent misses you with a melee attack, you may move 5 feet as an immediate action so long as you remain within that opponent’s threatened area.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Smash (Combat)",
                          featType: "General",
                          prerequisites: "Power Attack, half-orc.",
                          benefit: "When you attack an inanimate, unattended object, you ignore the first 5 points of its hardness. You also receive a +5 bonus on Strength checks made to knock down or break open doors.",
                          special: "The benefits of this feat do not apply to sunder attempts or attacks against constructs, only attacks on inanimate, unattended objects.",
                          summary: "When you attack an inanimate, unattended object, you ignore the first 5 points of its hardness. You also receive a +5 bonus on Strength checks made to knock down or break open doors.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Smell Fear",
                          featType: "General",
                          prerequisites: "Keen Scent, half-orc or orc.",
                          benefit: "You receive a +4 bonus on Perception checks to detect creatures with the shaken, frightened, or panicked conditions using scent. You can substitute your Perception skill for Sense Motive skill checks if the subject has one of the previous conditions or is attempting to cover up their fear in some way.",
                          summary: "You receive a +4 bonus on Perception checks to detect creatures with the shaken, frightened, or panicked conditions using scent.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sociable",
                          featType: "General",
                          prerequisites: "Cha 13, half-elf.",
                          benefit: "As a move action, you grant all friendly creatures within 30 feet who can see or hear you (including yourself) a +2 bonus on Diplomacy checks for a number of rounds equal to your Charisma modifier (minimum 1 round).",
                          summary: "As a move action, you grant all friendly creatures within 30 feet who can see or hear you (including yourself) a +2 bonus on Diplomacy checks for a number of rounds equal to your Charisma modifier…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spell Perfection",
                          featType: "General",
                          prerequisites: "Spellcraft 15 ranks, at least three metamagic feats.",
                          benefit: "Pick one spell which you have the ability to cast. Whenever you cast that spell you may apply any one metamagic feat you have to that spell without affecting its level or casting time, as long as the total modified level of the spell does not use a spell slot above 9th level. In addition, if you have other feats which allow you to apply a set numerical bonus to any aspect of this spell (such as Spell Focus, Spell Penetration, Weapon Focus [ray], and so on), double the bonus granted by that feat when applied to this spell.",
                          summary: "Pick one spell which you have the ability to cast. Whenever you cast that spell you may apply any one metamagic feat you have to that spell without affecting its level or casting time, as long as the…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spider Step",
                          featType: "General",
                          prerequisites: "Acrobatics 6 ranks, Climb 6 ranks, monk level 6th.",
                          benefit: "As a move action, you can move up to half your slow fall distance (maximum 50 feet) across a wall or ceiling or across ropes, branches, or even water or other surfaces that cannot support your weight. You must reach a solid, level surface by the end of your turn or you will fall.",
                          summary: "As a move action, you can move up to half your slow fall distance (maximum 50 feet) across a wall or ceiling or across ropes, branches, or even water or other surfaces that cannot support your…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stabbing Shot (Combat)",
                          featType: "General",
                          prerequisites: "Rapid Shot, elf.",
                          benefit: "When adjacent to an opponent and making a full-attack action with a longbow or shortbow (including composite bows), you may choose to make a melee attack against that opponent with a drawn arrow rather than firing it. If the attack hits—whether or not it does damage—your target is pushed back 5 feet away from you. You can then fire arrows from your bow normally, at the original target, or at another target within range. This melee attack replaces the extra attack from Rapid Shot, and all of your attack rolls for the round (the melee attack and the ranged attacks) take a –2 penalty. If your initial attack leaves you with no enemies threatening you, you can make the subsequent ranged attack or attacks without provoking attacks of opportunity.",
                          summary: "When adjacent to an opponent and making a full-attack action with a longbow or shortbow (including composite bows), you may choose to make a melee attack against that opponent with a drawn arrow…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Steel Soul",
                          featType: "General",
                          prerequisites: "Dwarf, hardy racial trait.",
                          benefit: "You receive a +4 racial bonus on saving throws against spells and spell-like abilities. This replaces the normal bonus from the dwarf’s hardy racial trait.",
                          normal: "Dwarves normally receive a +2 racial bonus on saving throws against spells and spell-like abilities.",
                          summary: "You receive a +4 racial bonus on saving throws against spells and spell-like abilities. This replaces the normal bonus from the dwarf’s hardy racial trait.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Step Up and Strike (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Following Step, Step Up, base attack bonus +6.",
                          benefit: "When using the Step Up or Following Step feats to follow an adjacent foe, you may also make a single melee attack against that foe at your highest base attack bonus. This attack counts as one of your attacks of opportunity for the round. Using this feat does not count toward the number of actions you can usually take each round.",
                          normal: "You can usually only take one standard action and one 5-foot step each round.",
                          summary: "When using the Step Up or Following Step feats to follow an adjacent foe, you may also make a single melee attack against that foe at your highest base attack bonus.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stone Sense",
                          featType: "General",
                          prerequisites: "Improved Stonecunning, Perception 10 ranks.",
                          benefit: "You gain tremorsense to a range of 10 feet.",
                          summary: "You gain tremorsense to a range of 10 feet.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stone Singer",
                          featType: "General",
                          prerequisites: "Cha 13, bardic performance class feature, dwarf.",
                          benefit: "When you use bardic performance with audible components underground, the range or area of your chosen performance is doubled, and you can affect deaf creatures if they possess tremorsense and are in your new range. In addition, the DC for saving throws against your bardic performance is increased by +2 for creatures of the earth subtype, regardless of where the performance occurs.",
                          summary: "When you use bardic performance with audible components underground, the range or area of your chosen performance is doubled, and you can affect deaf creatures if they possess tremorsense and are in…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stone-Faced",
                          featType: "General",
                          prerequisites: "Dwarf.",
                          benefit: "You receive a +4 bonus on Bluff checks to lie or conceal your feelings or true motives, but not to feint in combat or deliver secret messages. In addition, the DC for Sense Motive checks to get a hunch about you is 25 rather than 20.",
                          summary: "You receive a +4 bonus on Bluff checks to lie or conceal your feelings or true motives, but not to feint in combat or deliver secret messages.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stunning Assault (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, base attack bonus +16.",
                          benefit: "You can choose to take a –5 penalty on all melee attack rolls and combat maneuver checks to stun targets you hit with your melee attacks for 1 round. A successful Fortitude save negates the effect. The DC of this save is 10 + your base attack bonus. You must choose to use this feat before making the attack roll, and its effects last until your next turn.",
                          summary: "You can choose to take a –5 penalty on all melee attack rolls and combat maneuver checks to stun targets you hit with your melee attacks for 1 round. A successful Fortitude save negates the effect.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Summoner's Call",
                          featType: "General",
                          prerequisites: "Eidolon class feature.",
                          benefit: "Whenever you summon your eidolon, you may give it a +2 enhancement bonus to its Strength, Dexterity, or Constitution. This bonus lasts 10 minutes after the summoning ritual is complete.",
                          summary: "Whenever you summon your eidolon, you may give it a +2 enhancement bonus to its Strength, Dexterity, or Constitution. This bonus lasts 10 minutes after the summoning ritual is complete.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sundering Strike (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Sunder, Power Attack, base attack bonus +9.",
                          benefit: "Whenever you score a critical hit with a melee attack, you can sunder your opponent’s weapon, in addition to the normal damage dealt by the attack. If your confirmation roll exceeds your opponent’s CMD, you may deal damage to your opponent’s weapon as if from the sunder combat maneuver (roll normal damage to the weapon separately). This does not provoke an attack of opportunity.",
                          normal: "You must perform a sunder combat maneuver to sunder an opponent’s weapon.",
                          special: "You can only apply the effects of one of the following feats to a given critical hit: Bull Rush Strike, Disarming Strike, Repositioning Strike, Sundering Strike, or Tripping Strike. You may choose to use this feat after you make your confirmation roll.",
                          summary: "Whenever you score a critical hit with a melee attack, you can sunder your opponent’s weapon, in addition to the normal damage dealt by the attack.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swap Places (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you are adjacent to an ally who also has this feat, you can move into your ally’s square as part of normal movement. At the same time, your ally moves into your previous space as an immediate action. Both you and your ally must be willing and able to move to take advantage of this feat. Your ally must be the same size as you to utilize this feat. Your ally does not provoke an attack of opportunity from this movement, but you provoke as normal. This movement does not count against your ally’s movement on his next turn.",
                          summary: "Whenever you are adjacent to an ally who also has this feat, you can move into your ally’s square as part of normal movement.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swift Aid (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, base attack bonus +6.",
                          benefit: "As a swift action, you can attempt the aid another action, granting your ally either a +1 bonus on his next attack roll or a +1 bonus to his AC.",
                          normal: "Aid another is a standard action.",
                          summary: "As a swift action, you can attempt the aid another action, granting your ally either a +1 bonus on his next attack roll or a +1 bonus to his AC.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Taunt",
                          featType: "General",
                          prerequisites: "Cha 13, Small size or smaller.",
                          benefit: "You can demoralize opponents using Bluff rather than Intimidate (see the Intimidate skill description for details) and take no skill check penalty for being smaller than your target.",
                          summary: "You can demoralize opponents using Bluff rather than Intimidate (see the Intimidate skill description for details) and take no skill check penalty for being smaller than your target.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Team Up (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Gang Up, base attack bonus +6.",
                          benefit: "When you and at least two of your allies are adjacent to an opponent, you can attempt the aid another action as a move action.",
                          normal: "Aid another is a standard action.",
                          summary: "When you and at least two of your allies are adjacent to an opponent, you can attempt the aid another action as a move action.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Teleport Tactician (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes, Disruptive, Spellbreaker.",
                          benefit: "Any creature using a teleportation effect to enter or leave a square threatened by you provokes an attack of opportunity, even if casting defensively or using a supernatural ability.",
                          summary: "Any creature using a teleportation effect to enter or leave a square threatened by you provokes an attack of opportunity, even if casting defensively or using a supernatural ability.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tenacious Transmutation",
                          featType: "General",
                          prerequisites: "Spell Focus (transmutation).",
                          benefit: "The DC of caster level checks to dispel or remove your transmutations increases by 2; even if the spell is negated, its effects persist for 1 additional round before dissipating.",
                          summary: "The DC of caster level checks to dispel or remove your transmutations increases by 2; even if the spell is negated, its effects persist for 1 additional round before dissipating.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Thundering Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can modify a spell to deafen a creature damaged by the spell. When a creature takes damage from this spell, it becomes deafened for a number of rounds equal to the original level of the spell. If the spell allows a saving throw, a successful save negates the deafening effect. If the spell does not allow a save, the target can make a Fortitude save to negate the deafening effect. If the spell effect also causes the creature to become deafened, the duration of this metamagic effect is added to the duration of the spell. A thundering spell uses up a spell slot two levels higher than the spell’s actual level. Spells that do not inflict damage do not benefit from this feat.",
                          summary: "You can modify a spell to deafen a creature damaged by the spell. When a creature takes damage from this spell, it becomes deafened for a number of rounds equal to the original level of the spell.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Touch of Serenity (Combat)",
                          featType: "General",
                          prerequisites: "Wis 18, Improved Unarmed Strike, base attack bonus +8.",
                          benefit: "You must declare that you are using this feat before you make your attack roll (thus a failed attack roll ruins the attempt). On a successful hit, the attack deals no damage and bestows no other effect or condition, but the target cannot cast spells or attack (including attacks of opportunity and attacks as immediate actions) for 1 round unless it succeeds on a Will saving throw with a DC of 10 + 1/2 your character level + your Wisdom modifier. You may attempt a touch of serenity once per day for every four levels you have attained (but see Special), and no more than once per round.",
                          special: "A monk of the lotus receives Touch of Serenity as a bonus feat at 1st level, even if he does not meet the prerequisites. A monk may attempt a touch of serenity a number of times per day equal to his monk level, plus one more time per day for every four levels he has in classes other than monk.",
                          summary: "You must declare that you are using this feat before you make your attack roll (thus a failed attack roll ruins the attempt).",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Trick Riding (Combat)",
                          featType: "General",
                          prerequisites: "Ride 9 ranks, Mounted Combat.",
                          benefit: "While wearing light or no armor, you do not need to make Ride skill checks for any task listed in the Ride skill with a DC of 15 or lower. You do not take a –5 penalty for riding a mount bareback. You can make a check using Mounted Combat to negate a hit on your mount twice per round instead of just once.",
                          summary: "While wearing light or no armor, you do not need to make Ride skill checks for any task listed in the Ride skill with a DC of 15 or lower. You do not take a –5 penalty for riding a mount bareback.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tripping Strike (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Trip, base attack bonus +9.",
                          benefit: "Whenever you score a critical hit with a melee attack, you can trip your opponent, in addition to the normal damage dealt by the attack. If your confirmation roll exceeds your opponent’s CMD, you may knock your opponent prone as if from the trip combat maneuver. This does not provoke an attack of opportunity. If you are tripped during your own trip attempt, you can drop your weapon to avoid being tripped.",
                          normal: "You must perform a trip combat maneuver to trip an opponent.",
                          special: "You can only apply the effects of one of the following feats to a given critical hit: Bull Rush Strike, Disarming Strike, Repositioning Strike, Sundering Strike, or Tripping Strike. You may choose to use this feat after you make your confirmation roll.",
                          summary: "Whenever you score a critical hit with a melee attack, you can trip your opponent, in addition to the normal damage dealt by the attack.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Under and Over (Combat)",
                          featType: "General",
                          prerequisites: "Agile Maneuvers, Small size or smaller.",
                          benefit: "If an opponent larger than you attempts to grapple you and fails, you may make a trip attack as an immediate action against that opponent with a +2 bonus. This does not provoke an attack of opportunity.",
                          summary: "If an opponent larger than you attempts to grapple you and fails, you may make a trip attack as an immediate action against that opponent with a +2 bonus.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Underfoot (Combat)",
                          featType: "General",
                          prerequisites: "Dodge, Mobility, Small size or smaller.",
                          benefit: "You receive a +4 dodge bonus on Acrobatics checks to move past opponents without provoking attacks of opportunity, so long as they are larger than you. In addition, you gain a +2 dodge bonus to Armor Class against attacks of opportunity caused when you move out of or within a larger opponent’s threatened area (this stacks with the +4 bonus provided by Mobility, for a total bonus of +6).",
                          summary: "You receive a +4 dodge bonus on Acrobatics checks to move past opponents without provoking attacks of opportunity, so long as they are larger than you.",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("War Singer",
                          featType: "General",
                          prerequisites: "Cha 13, bardic performance class feature, half-orc or orc.",
                          benefit: "When you use bardic performance with audible components on a battlefield (any area where a combat involving a dozen or more combatants is taking place), the range or area of your chosen performance is doubled. In addition, the DC for saving throws against your bardic performance is increased by +2 for creatures of the orc subtype, regardless of where the performance occurs.",
                          summary: "When you use bardic performance with audible components on a battlefield (any area where a combat involving a dozen or more combatants is taking place), the range or area of your chosen performance…",
                          source: "Advanced Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Well-Prepared",
                          featType: "General",
                          prerequisites: "Halfling.",
                          benefit: "Once per day, when confronted with a situation that calls for a particular mundane item of equipment, you may make a Sleight of Hand check with a DC of 10 plus the item’s cost in gold pieces to “happen” to have such an item on your person. For example, having a crowbar would be DC 12, whereas a flask of acid would be DC 20. The item must be something you can easily carry—if you are on foot and have only a backpack, for example, you could not have a large iron cauldron. You cannot have magical items using this feat, nor can you have specific items, such as the key to a particular door. If you are stripped of your equipment or possessions, you lose the benefits of this feat until you have at least a day to resupply and “acquire” new items. You must pay for these items normally.",
                          special: "At the GM’s option, a character can substitute the Survival skill for Sleight of Hand with this feat. Such a choice is permanent.",
                          summary: "Once per day, when confronted with a situation that calls for a particular mundane item of equipment, you may make a Sleight of Hand check with a DC of 10 plus the item’s cost in gold pieces to…",
                          source: "Advanced Player's Guide", isPremium: true),

                    // // MARK: - Advanced Player's Guide, Curse of the Crimson Throne Player's Guide, Pathfinder Campaign Setting
        )
        try await db.insertFeat(
        .make("Crossbow Mastery (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Point-Blank Shot, Rapid Reload, Rapid Shot.",
                          benefit: "The time required for you to reload any type of crossbow is reduced to a free action, regardless of the type of crossbow used. You can fire a crossbow as many times in a full attack action as you could attack if you were using a bow. Reloading a crossbow for the type of crossbow you chose when you took Rapid Reload no longer provokes attacks of opportunity.",
                          special: "Starting at 6th level, a ranger with the archery combat style may select Crossbow Mastery as a combat style feat.",
                          summary: "The time required for you to reload any type of crossbow is reduced to a free action, regardless of the type of crossbow used.",
                          source: "Advanced Player's Guide, Curse of the Crimson Throne Player's Guide, Pathfinder Campaign Setting", isPremium: true),

                    // // MARK: - Advanced Player's Guide, Dark Markets - A Guide to Katapesh
        )
        try await db.insertFeat(
        .make("Lucky Halfling",
                          featType: "General",
                          prerequisites: "Halfling.",
                          benefit: "Once per day, when one of your allies within 30 feet makes a saving throw, you may roll the same saving throw as if you were the one subject to the effect requiring it. You may use this ability after your ally has rolled, but before the GM declares if the roll was a success or failure. Your ally may choose to use your saving throw in place of his own.",
                          summary: "Once per day, when one of your allies within 30 feet makes a saving throw, you may roll the same saving throw as if you were the one subject to the effect requiring it.",
                          source: "Advanced Player's Guide, Dark Markets - A Guide to Katapesh", isPremium: true),

                    // // MARK: - Advanced Player's Guide, Pathfinder Campaign Setting
        )
        try await db.insertFeat(
        .make("Cosmopolitan",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can speak and read two additional languages of your choice. In addition, choose two Intelligence-, Wisdom-, or Charisma-based skills. Those skills always count as class skills for you.",
                          summary: "You can speak and read two additional languages of your choice. In addition, choose two Intelligence-, Wisdom-, or Charisma-based skills. Those skills always count as class skills for you.",
                          source: "Advanced Player's Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Enforcer (Combat)",
                          featType: "General",
                          prerequisites: "Intimidate 1 rank.",
                          benefit: "Whenever you deal nonlethal damage with a melee weapon, you can make an Intimidate check to demoralize your target as a free action. If you are successful, the target is shaken for a number of rounds equal to the damage dealt. If your attack was a critical hit, your target is frightened for 1 round with a successful Intimidate check, as well as being shaken for a number of rounds equal to the damage dealt.",
                          summary: "Whenever you deal nonlethal damage with a melee weapon, you can make an Intimidate check to demoralize your target as a free action.",
                          source: "Advanced Player's Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focused Shot (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Point-Blank Shot, Precise Shot.",
                          benefit: "As a standard action, you may make an attack with a bow or crossbow and add your Intelligence modifier on the damage roll. You must be within 30 feet of your target to deal this extra damage. Creatures immune to critical hits and sneak attacks are immune to this extra damage.",
                          special: "Starting at 2nd level, a ranger with the archery combat style may select Focused Shot as a combat style feat.",
                          summary: "As a standard action, you may make an attack with a bow or crossbow and add your Intelligence modifier on the damage roll. You must be within 30 feet of your target to deal this extra damage.",
                          source: "Advanced Player's Guide, Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Parting Shot (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Mobility, Point-Blank Shot, Shot on the Run, base attack bonus +6.",
                          benefit: "Once per encounter, when using the withdraw action, you can make a single ranged attack at any point during your movement.",
                          normal: "You cannot attack when using the withdraw action.",
                          special: "Starting at 6th level, a ranger with the archery combat style may select Parting Shot as a combat style feat.",
                          summary: "Once per encounter, when using the withdraw action, you can make a single ranged attack at any point during your movement.",
                          source: "Advanced Player's Guide, Pathfinder Campaign Setting", isPremium: true),

                    // // MARK: - Advanced Player's Guide, Pathfinder Campaign Setting, Revenge of the Kobold King
        )
        try await db.insertFeat(
        .make("Vermin Heart",
                          featType: "General",
                          prerequisites: "Wild empathy class feature.",
                          benefit: "You may target vermin with spells and special abilities that only affect animals (although they are still affected by spells targeting vermin as well). You may use wild empathy to influence vermin as easily as you influence animals.",
                          summary: "You may target vermin with spells and special abilities that only affect animals (although they are still affected by spells targeting vermin as well).",
                          source: "Advanced Player's Guide, Pathfinder Campaign Setting, Revenge of the Kobold King", isPremium: true),

                    // // MARK: - Advanced Player's Guide, Second Darkness Player's Guide, Pathfinder #16: Endless Night
        )
        try await db.insertFeat(
        .make("Additional Traits",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain two character traits of your choice (see Chapter 8). These traits must be chosen from different lists, and cannot be chosen from lists from which you have already selected a character trait. You must meet any additional qualifications for the character traits you choose.",
                          summary: "You gain two character traits of your choice (see Chapter 8). These traits must be chosen from different lists, and cannot be chosen from lists from which you have already selected a character trait.",
                          source: "Advanced Player's Guide, Second Darkness Player's Guide, Pathfinder #16: Endless Night", isPremium: true),

                    // // MARK: - Advanced Race Guide
        )
        try await db.insertFeat(
        .make("Adaptive Fortune",
                          featType: "General",
                          prerequisites: "Fortunate One, adaptable luck racial trait, character level 10th, halfling.",
                          benefit: "Increase the number of times per day you can use the adaptable luck racial trait by 1. Furthermore, when you use adaptable luck, increase the luck bonus for each type of use by 2.",
                          summary: "Increase the number of times per day you can use the adaptable luck racial trait by 1. Furthermore, when you use adaptable luck, increase the luck bonus for each type of use by 2.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Agile Tongue",
                          featType: "General",
                          prerequisites: "Grippli.",
                          benefit: "You have a prehensile tongue with a range of 10 feet. You can pick up items weighing no more than 5 pounds, make Sleight of Hand checks, perform the steal or disarm combat maneuvers, or make melee touch attacks with your tongue.",
                          summary: "You have a prehensile tongue with a range of 10 feet. You can pick up items weighing no more than 5 pounds, make Sleight of Hand checks, perform the steal or disarm combat maneuvers, or make melee…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Airy Step",
                          featType: "General",
                          prerequisites: "Sylph.",
                          benefit: "You gain a +2 bonus on saving throws against effects with the air or electricity descriptors and effects that deal electricity damage. You may ignore the first 30 feet of any fall when determining falling damage.",
                          summary: "You gain a +2 bonus on saving throws against effects with the air or electricity descriptors and effects that deal electricity damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Angel Wings",
                          featType: "General",
                          prerequisites: "Angelic Blood, aasimar, character level 10th.",
                          benefit: "You gain a pair of gleaming feathered wings that grant a fly speed of 30 feet (average maneuverability) if wearing light armor or unencumbered, or 20 feet (poor maneuverability) with a medium or heavy load or medium or heavy armor. Fly is a class skill for you.",
                          summary: "You gain a pair of gleaming feathered wings that grant a fly speed of 30 feet (average maneuverability) if wearing light armor or unencumbered, or 20 feet (poor maneuverability) with a medium or…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Angelic Blood",
                          featType: "General",
                          prerequisites: "Con 13, aasimar.",
                          benefit: "You gain a +2 bonus on saving throws against effects with the evil descriptor and on Constitution checks to stabilize when you are reduced to negative hit points (but not dead). Furthermore, each time you take bleed or blood drain damage, each undead creature or creature with the evil subtype that is currently adjacent to you also takes 1 point of damage.",
                          summary: "You gain a +2 bonus on saving throws against effects with the evil descriptor and on Constitution checks to stabilize when you are reduced to negative hit points (but not dead).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Angelic Flesh",
                          featType: "General",
                          prerequisites: "Angelic Blood, aasimar.",
                          benefit: "You take a –2 penalty on Disguise and Stealth checks but gain one of the following benefits, depending on the metallic affinity of your flesh (choose one). Brazen: You gain fire resistance 5 and a +2 bonus on saves against fire effects. Golden: You gain a +2 bonus on saves against blindness, dazzling, patterns, and effects with the light descriptor. When you cast spells or use spell-like abilities that are from the illusion (pattern) subschool or have the light descriptor, you do so at +1 caster level. Silver: You gain a +2 bonus on saves against paralysis, petrification, and poison, and your unarmed strikes or natural weapons count as silver for the purpose of overcoming damage reduction. Steel: You gain a +1 natural armor bonus to AC, and your unarmed strikes or natural weapons count as cold iron for the purpose of overcoming damage reduction.",
                          summary: "You take a –2 penalty on Disguise and Stealth checks but gain one of the following benefits, depending on the metallic affinity of your flesh (choose one).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aquatic Ancestry",
                          featType: "General",
                          prerequisites: "Undine.",
                          benefit: "You gain the amphibious special quality. Your swim speed increases by +10 feet.",
                          summary: "You gain the amphibious special quality. Your swim speed increases by +10 feet.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Armor of the Pit",
                          featType: "General",
                          prerequisites: "Tiefling.",
                          benefit: "You gain a +2 natural armor bonus.",
                          special: "If you have the scaled skin racial trait, you instead gain resistance 5 to two of the following energy types that you don’t have resistance to already: cold, electricity, and fire.",
                          summary: "You gain a +2 natural armor bonus.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Attuned to the Wild",
                          featType: "General",
                          prerequisites: "Elf.",
                          benefit: "Select one type of terrain from the ranger class’s favored terrain class feature (except urban). While you are in your selected terrain type, your natural healing rate (the amount of hit points and ability damage you heal from a full night’s rest) doubles.",
                          special: "You can take this feat multiple times. Its effects do not stack. Each time you take it, it applies to a different terrain type.",
                          summary: "Select one type of terrain from the ranger class’s favored terrain class feature (except urban).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Beast Rider",
                          featType: "General",
                          prerequisites: "Animal companion or mount class feature, character level 7th, half-orc or orc.",
                          benefit: "Select one of the following creature types: elephant, pteranodon, rhinoceros, stegosaurus, or triceratops. Add this creature type to your list of possible animal companions or mounts. When summoning a creature of the selected type to serve as a mount or companion, treat your effective druid level as if it were two levels higher (to a maximum of your character level). If the creature is large enough for you to ride, it gains the combat training general purpose (see Handle Animal) at no cost.",
                          summary: "Select one of the following creature types: elephant, pteranodon, rhinoceros, stegosaurus, or triceratops. Add this creature type to your list of possible animal companions or mounts.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bestow Luck",
                          featType: "General",
                          prerequisites: "Defiant Luck, Inexplicable Luck, human.",
                          benefit: "You gain an extra use per day of your Defiant Luck ability. You can also use your Inexplicable Luck ability to grant an ally that can see and hear its benefit as an immediate action.",
                          summary: "You gain an extra use per day of your Defiant Luck ability. You can also use your Inexplicable Luck ability to grant an ally that can see and hear its benefit as an immediate action.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Black Cat",
                          featType: "General",
                          prerequisites: "Catfolk.",
                          benefit: "Once per day as an immediate action, when you are hit by a melee attack, you can force the opponent who made the attack to reroll it with a –4 penalty. The opponent must take the result of the second attack roll. This is a supernatural ability.",
                          special: "If you take this feat and don’t already have all black fur, your fur turns completely black when you takes this feat.",
                          summary: "Once per day as an immediate action, when you are hit by a melee attack, you can force the opponent who made the attack to reroll it with a –4 penalty.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blazing Aura (ARG) (Combat)",
                          featType: "General",
                          prerequisites: "Inner Flame, Scorching Weapons, character level 13th, ifrit.",
                          benefit: "When you use Scorching Weapons, on your turn as a free action, you may create an aura of heat that lasts for 1 round. This aura deals 1d6 points of fire damage to any creature that begins its turn adjacent to you.",
                          summary: "When you use Scorching Weapons, on your turn as a free action, you may create an aura of heat that lasts for 1 round.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blistering Feint (Combat)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Improved Feint, ifrit.",
                          benefit: "You gain a +2 bonus on feint checks made while wielding a weapon that deals fire damage. Anytime you successfully feint a creature while using such a weapon, you may deal its fire damage to the enemy.",
                          summary: "You gain a +2 bonus on feint checks made while wielding a weapon that deals fire damage. Anytime you successfully feint a creature while using such a weapon, you may deal its fire damage to the enemy.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blood Beak (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +5, natural weapon racial trait, tengu.",
                          benefit: "Increase the damage of your beak attack to 1d6. Furthermore, when you confirm a critical hit with your beak attack, you also deal 1 point of bleed damage.",
                          special: "The bleed effect from this feat stacks with that of the Bleeding Critical feat and similar effects, adding 1 point to your bleed damage.",
                          summary: "Increase the damage of your beak attack to 1d6. Furthermore, when you confirm a critical hit with your beak attack, you also deal 1 point of bleed damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blood Drinker",
                          featType: "General",
                          prerequisites: "Dhampir.",
                          benefit: "Choose one humanoid subtype, such as \"goblinoid\" (this subtype cannot be \"dhampir\"). You have acquired a taste for the blood of creatures with this subtype. Whenever you drink fresh blood from such a creature, you gain 5 temporary hit points and a +1 bonus on checks and saves based on Constitution. The effects last 1 hour. If you feed multiple times, you continue to gain hit points to a maximum of 5 temporary hit points for every three Hit Dice you have, but the +1 bonus on Constitution-based skill checks and saving throws does not stack. Normally, you can only drink blood from an opponent who is helpless, grappled, paralyzed, pinned, unconscious, or similarly disabled. If you have a bite attack, you can drink blood automatically as part of your bite attack; otherwise, you must first cut your target by dealing 1 hit point of damage with a slashing or piercing weapon (though you may feed upon a creature with severe wounds or a bleed effect without cutting it first). Once you cut the target, you can drink from its wound as a standard action. Drinking blood deals 2 points of Constitution damage to the creature you feed upon. The blood must come from a living creature of the specified humanoid subtype. It cannot come from a dead or summoned creature. Feeding on unwilling intelligent creatures is an evil act.",
                          summary: "Choose one humanoid subtype, such as \"goblinoid\" (this subtype cannot be \"dhampir\"). You have acquired a taste for the blood of creatures with this subtype.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blood Feaster",
                          featType: "General",
                          prerequisites: "Blood Drinker, base attack bonus +6, dhampir.",
                          benefit: "If you use your Blood Drinker feat to drain 4 or more points of Constitution from a living creature, you gain a +2 bonus on damage rolls and a +1 bonus on Strength-based skill checks. This bonus lasts for a number of rounds equal to 1/2 your Hit Dice.",
                          summary: "If you use your Blood Drinker feat to drain 4 or more points of Constitution from a living creature, you gain a +2 bonus on damage rolls and a +1 bonus on Strength-based skill checks.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blood Salvage",
                          featType: "General",
                          prerequisites: "Blood Drinker, dhampir.",
                          benefit: "You can use your Blood Drinker feat on a dead creature of the appropriate humanoid subtype. The creature must have died less than 6 hours beforehand.",
                          normal: "You only benefit from the Blood Drinker feat if you consume fresh blood from a living creature.",
                          summary: "You can use your Blood Drinker feat on a dead creature of the appropriate humanoid subtype. The creature must have died less than 6 hours beforehand.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blundering Defense (Combat)",
                          featType: "General",
                          prerequisites: "Cautious Fighter, halfling.",
                          benefit: "Whenever you fight defensively or use the total defense action, allies gain a luck bonus to AC and CMD equal to 1/2 the dodge bonus you gain from the action you are taking. Allies only gain this bonus while they are adjacent to you.",
                          summary: "Whenever you fight defensively or use the total defense action, allies gain a luck bonus to AC and CMD equal to 1/2 the dodge bonus you gain from the action you are taking.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Born Alone",
                          featType: "General",
                          prerequisites: "Orc.",
                          benefit: "Whenever you kill or knock unconscious an opponent with a melee attack, you gain temporary hit points equal to your Constitution bonus (minimum 1) until your next turn. These temporary hit points do not stack. You do not gain this bonus if the opponent is helpless or has less than half your Hit Dice.",
                          summary: "Whenever you kill or knock unconscious an opponent with a melee attack, you gain temporary hit points equal to your Constitution bonus (minimum 1) until your next turn.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Brewmaster",
                          featType: "General",
                          prerequisites: "Craft (alchemy) 1 rank, Profession (brewer) 1 rank, dwarf.",
                          benefit: "You gain a +2 bonus on Craft (alchemy) and Profession (brewer) checks, and you add +1 to the DC of any ingested poison you create.",
                          summary: "You gain a +2 bonus on Craft (alchemy) and Profession (brewer) checks, and you add +1 to the DC of any ingested poison you create.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bullying Blow (Combat)",
                          featType: "General",
                          prerequisites: "Intimidate 1 rank, orc.",
                          benefit: "As a standard action, you may make a melee attack with a –2 penalty on the attack roll. If the attack damages your opponent, you may make an Intimidate check to demoralize that opponent as a free action.",
                          normal: "Intimidating an opponent is a standard action.",
                          summary: "As a standard action, you may make a melee attack with a –2 penalty on the attack roll.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Burrowing Teeth",
                          featType: "General",
                          prerequisites: "Sharpclaw, Tunnel Rat, ratfolk.",
                          benefit: "You gain a burrow speed equal to 1/2 your base speed. You can burrow through sand, dirt, clay, gravel, or similar materials, but not solid stone. You do not leave a hole behind, nor is your passage marked on the surface.",
                          summary: "You gain a burrow speed equal to 1/2 your base speed. You can burrow through sand, dirt, clay, gravel, or similar materials, but not solid stone.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Carrion Feeder",
                          featType: "General",
                          prerequisites: "Tengu.",
                          benefit: "You gain a +2 racial bonus on saving throws against diseases and ingested poisons (but not other poisons). You receive a +2 bonus on Survival skill checks to find food for yourself (and only yourself).",
                          summary: "You gain a +2 racial bonus on saving throws against diseases and ingested poisons (but not other poisons).",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Casual Illusionist",
                          featType: "General",
                          prerequisites: "Gnome, gnome magic racial trait.",
                          benefit: "As long as you have at least one spell-like ability unused from your gnome magic racial trait, you gain a +2 racial bonus on all Bluff, Disguise, and Sleight of Hand checks you make. At 10th level, these bonuses increase to +4.",
                          special: "This feat counts as the Deceitful feat for the purposes of all prerequisites.",
                          summary: "As long as you have at least one spell-like ability unused from your gnome magic racial trait, you gain a +2 racial bonus on all Bluff, Disguise, and Sleight of Hand checks you make.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Catfolk Exemplar",
                          featType: "General",
                          prerequisites: "Catfolk.",
                          benefit: "You can take the Aspect of the Beast feat even if you do not meet the normal prerequisites. Furthermore, your catlike nature manifests in one of the following ways. You choose the manifestation when you take this feat, and cannot change it later. Enhanced Senses (Ex): If you have low-light vision, you gain the scent catfolk racial trait. If you have the scent racial trait, you gain low-light vision. Fast Sprinter (Ex): You gain a 10-foot racial bonus to your speed when using the charge, run, or withdraw actions. If you have the sprinter racial trait, your racial bonus to speed when using the charge, run, or withdraw action increases to a 20-foot bonus. Sharp Claws (Ex): If you do not have the cat’s claws racial trait or the claws of the beast manifestation from the Aspect of the Beast feat , you gain the cat’s claws racial trait. If you have either the cat’s claws racial trait or the claws of the beast manifestation, your claw damage increases to 1d6.",
                          special: "You can take this feat multiple times. Its effects do not stack. Each time you select it, you must choose a different manifestation.",
                          summary: "You can take the Aspect of the Beast feat even if you do not meet the normal prerequisites. Furthermore, your catlike nature manifests in one of the following ways.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cautious Fighter (Combat)",
                          featType: "General",
                          prerequisites: "Halfling.",
                          benefit: "When fighting defensively or using total defense, your dodge bonus to AC increases by 2.",
                          summary: "When fighting defensively or using total defense, your dodge bonus to AC increases by 2.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Celestial Servant",
                          featType: "General",
                          prerequisites: "Aasimar, animal companion, familiar, or mount class feature.",
                          benefit: "Your animal companion, familiar, or mount gains the celestial template and becomes a magical beast, though you may still treat it as an animal when using Handle Animal, wild empathy, or any other spells or class abilities that specifically affect animals.",
                          summary: "Your animal companion, familiar, or mount gains the celestial template and becomes a magical beast, though you may still treat it as an animal when using Handle Animal, wild empathy, or any other…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channel Force",
                          featType: "General",
                          prerequisites: "Aasimar, channel energy 2d6.",
                          benefit: "When you channel energy to deal damage, you may choose to affect only a single target within 30 feet. In addition to dealing damage, if that single target fails its saving throw, you may pull or push (Pathfinder RPG Bestiary 303) the target up to 5 feet for every 2d6 points of channel energy damage you are capable of dealing.",
                          summary: "When you channel energy to deal damage, you may choose to affect only a single target within 30 feet.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Claw Pounce (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Dex 15, Nimble Striker, base attack bonus +10, catfolk, cat’s claws racial trait or Aspect of the Beast (claws of the beast manifestation).",
                          benefit: "When you make a charge, you can make a full attack with your claws.",
                          normal: "Charging is a special full-round action that limits you to a single attack.",
                          summary: "When you make a charge, you can make a full attack with your claws.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cleave Through (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Cleave, Power Attack, base attack bonus +11, dwarf.",
                          benefit: "When using Cleave or Great Cleave, if your initial attack hits, you may take a single 5-foot step as a free action before making your additional attacks. If doing so places a creature within your threatened area, that creature becomes a legal target for your additional Cleave attack(s) as long as it meets all the other prerequisites.",
                          normal: "You may only make additional attacks with Cleave against creatures you threaten when you make your initial attack.",
                          summary: "When using Cleave or Great Cleave, if your initial attack hits, you may take a single 5-foot step as a free action before making your additional attacks.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cloud Gazer",
                          featType: "General",
                          prerequisites: "Sylph.",
                          benefit: "You can see through fog, mist, and clouds, without penalty, ignoring any cover or concealment bonuses from such effects. If the effect is created by magic, this feat instead triples the distance you can see without penalty.",
                          summary: "You can see through fog, mist, and clouds, without penalty, ignoring any cover or concealment bonuses from such effects.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cloven Helm (Combat)",
                          featType: "General",
                          prerequisites: "Dented Helm, Hard-Headed, base attack bonus +11, dwarf.",
                          benefit: "When wearing a helmet, you add +1 to your AC against critical hit confirmation rolls; this benefit stacks with Dented Helm. When you use Dented Helm to deflect a critical hit, you may apply all damage from the critical hit to your helmet before applying any damage to yourself. If you take no damage, any additional effects, such as critical feats or poison, are negated.",
                          summary: "When wearing a helmet, you add +1 to your AC against critical hit confirmation rolls; this benefit stacks with Dented Helm.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Courageous Resolve",
                          featType: "General",
                          prerequisites: "Craven racial trait or fearless racial trait, halfling.",
                          benefit: "If you have the fearless racial trait, your racial bonus on saving throws against fear effects increases to +4. If you have the craven racial trait, you still take the –2 penalty on fear saves, but you can gain the benefit of morale bonuses on saving throws against fear effects.",
                          summary: "If you have the fearless racial trait, your racial bonus on saving throws against fear effects increases to +4.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Critical Versatility (Combat)",
                          featType: "General",
                          prerequisites: "Fighter level 11th, human.",
                          benefit: "Once per day, you can spend 1 hour practicing maneuvers to gain one single critical feat that you meet the prerequisites for. You gain the benefits of the chosen critical feat until you choose to practice a different critical feat.",
                          summary: "Once per day, you can spend 1 hour practicing maneuvers to gain one single critical feat that you meet the prerequisites for.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dark Sight",
                          featType: "General",
                          prerequisites: "Gloom Sight, fetchling.",
                          benefit: "You gain the ability to see up to 15 feet clearly in magical darkness, such as that created by the deeper darkness spell.",
                          summary: "You gain the ability to see up to 15 feet clearly in magical darkness, such as that created by the deeper darkness spell.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dauntless Destiny",
                          featType: "General",
                          prerequisites: "Cha 13, Fearless Curiosity, Intimidate 10 ranks, human.",
                          benefit: "You gain a +1 bonus on saving throws against effects with the emotion descriptor; this bonus stacks with those granted by Fearless Curiosity and Intimidating Confidence. In addition, once per day you may reroll a natural 1 on a saving throw or an attack roll. If your reroll results in a successful saving throw or attack roll, as a free action you can make an Intimidate check to demoralize the target of your attack or the creature that forced you to make a saving throw, as long as the creature is within 30 feet and can see and hear you. This effect does not apply on saving throws against traps or other objects. This does not stack with other effects that allow you to reroll a saving throw or an attack roll. You may only make one reroll.",
                          summary: "You gain a +1 bonus on saving throws against effects with the emotion descriptor; this bonus stacks with those granted by Fearless Curiosity and Intimidating Confidence.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deafening Explosion",
                          featType: "General",
                          prerequisites: "Bomb class feature, hobgoblin.",
                          benefit: "You may reduce your bomb damage by one die to give it the ability to deafen the creature struck by it. The bomb must deal fire, force, or sonic damage. If a creature takes a direct hit from your bomb, it must make a saving throw against the bomb’s DC or be deafened for 1 minute. This deafening is in addition to any other effects the bomb would normally have.",
                          summary: "You may reduce your bomb damage by one die to give it the ability to deafen the creature struck by it. The bomb must deal fire, force, or sonic damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Defiant Luck",
                          featType: "General",
                          prerequisites: "Human.",
                          benefit: "Once per day, after you roll a natural 1 on a saving throw or a critical hit is confirmed against you, you can either reroll that saving throw, or force the creature that confirmed the critical hit against you to reroll the critical confirmation roll. This does not stack with other effects that allow you to reroll a saving throw or an attack roll. You may only make one reroll.",
                          special: "If you are using the optional hero point system, you can also spend 1 hero point when a critical hit is confirmed against you to have the opponent reroll the critical hit confirmation roll.",
                          summary: "Once per day, after you roll a natural 1 on a saving throw or a critical hit is confirmed against you, you can either reroll that saving throw, or force the creature that confirmed the critical hit…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Demoralizing Lash (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, Intimidate 1 rank, hobgoblin.",
                          benefit: "To use this feat, you must use a whip (or another weapon in the flails fighter weapon group) to attack a foe demoralized by an Intimidate check. If the attack hits, you extend the duration the creature is shaken by 1 round. This feat has no effect on creatures whose shaken conditions are from sources other than Intimidate checks.",
                          summary: "To use this feat, you must use a whip (or another weapon in the flails fighter weapon group) to attack a foe demoralized by an Intimidate check.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dented Helm (Combat)",
                          featType: "General",
                          prerequisites: "Hard-Headed, base attack bonus +6, dwarf.",
                          benefit: "When wearing a helmet, you add +1 to your AC against critical hit confirmation rolls. When a critical hit is confirmed against you, as an immediate action, you can apply half of the damage from the attack to your helmet rather than yourself, applying hardness as normal. If the damage destroys your helmet, any leftover damage is applied to you. After using this feat, you are staggered until the end of your next turn. You may not use this feat if your helmet has the broken condition or the attack ignores armor bonuses to AC.",
                          summary: "When wearing a helmet, you add +1 to your AC against critical hit confirmation rolls.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Desperate Swing (Combat)",
                          featType: "General",
                          prerequisites: "Cautious Fighter, base attack bonus +1, halfling.",
                          benefit: "Once per day, you can make a single melee attack while taking the total defense action. You take a –4 penalty on attack rolls when making this attack. You also gain a +4 bonus on critical confirmation rolls made while fighting defensively or making an attack of opportunity using this feat.",
                          summary: "Once per day, you can make a single melee attack while taking the total defense action. You take a –4 penalty on attack rolls when making this attack.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Discerning Eye",
                          featType: "General",
                          prerequisites: "Elf or half-elf, keen senses racial trait.",
                          benefit: "You receive a +2 racial bonus on saving throws against illusion spells and effects and a +2 bonus on Linguistic checks to detect forgeries. You can use the Linguistic skill to detect forgeries untrained.",
                          summary: "You receive a +2 racial bonus on saving throws against illusion spells and effects and a +2 bonus on Linguistic checks to detect forgeries.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Diverse Palate",
                          featType: "General",
                          prerequisites: "Blood Drinker, dhampir.",
                          benefit: "Choose a humanoid subtype or the monstrous humanoid type. You may use your Blood Drinker feat on creatures of this subtype or type.",
                          special: "You can take this feat multiple times. Each time you select it, choose a new humanoid subtype or the monstrous humanoid.",
                          summary: "Choose a humanoid subtype or the monstrous humanoid type. You may use your Blood Drinker feat on creatures of this subtype or type.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Draconic Aspect",
                          featType: "General",
                          prerequisites: "Kobold.",
                          benefit: "Your scales take on the color and some of the resistances of one of the chromatic dragons. Choose one of the following chromatic dragon types: black (acid), blue (electricity), green (acid), red (fire), or white (cold). Your scales take on the color of that dragon, and you gain resistance 5 to the dragon color’s corresponding energy type.",
                          special: "If you have the dragon-scaled racial trait, your scale color does not change and you gain a +1 natural armor bonus instead.",
                          summary: "Your scales take on the color and some of the resistances of one of the chromatic dragons.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Draconic Breath",
                          featType: "General",
                          prerequisites: "Draconic Aspect, kobold.",
                          benefit: "You gain a +2 bonus against sleep and paralysis effects. You gain a breath weapon that is determined by your scale coloration by either the Draconic Aspect feat or the dragon-scaled racial trait. Using a breath weapon is a standard action that does not provoke attacks of opportunity. You can use your breath weapon once per day. Creatures within the area of your breath weapon who succeed at a Reflex saving throw (DC 10 + your character level + your Constitution modifier) take only half damage. Black (Su): You breathe a 30-foot line of acid that deals 2d6 points of acid damage. Blue (Su): You breathe a 30-foot line of electricity that deals 2d6 points of electricity damage. Green (Su): You breathe a 15-foot cone of acid that deals 2d6 points of acid damage. Red (Su): You breathe a 15-foot cone of fire that deals 2d6 points of fire damage. White (Su): You breathe a 15-foot cone of cold that deals 2d6 points of cold damage.",
                          special: "Kobold sorcerers with either the Draconic or Kobold bloodline can use their Charisma modifier instead of their Constitution to determine the DC of this breath weapon.",
                          summary: "You gain a +2 bonus against sleep and paralysis effects. You gain a breath weapon that is determined by your scale coloration by either the Draconic Aspect feat or the dragon-scaled racial trait.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Draconic Glide",
                          featType: "General",
                          prerequisites: "Draconic Aspect, kobold.",
                          benefit: "You gain a +2 bonus against sleep and paralysis effects. You grow a pair of wings that you can use to fall and glide at a safe pace. You can make a DC 15 Fly check to fall safely from any height without taking falling damage, as if using feather fall. When falling safely, you may make an additional DC 15 Fly check to glide, moving 5 feet laterally for every 20 feet you fall.",
                          special: "If you have the gliding wings racial trait, you don't need to make a Fly check to glide, and you can move 10 feet laterally for every 20 feet you fall.",
                          summary: "You gain a +2 bonus against sleep and paralysis effects. You grow a pair of wings that you can use to fall and glide at a safe pace.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Draconic Paragon",
                          featType: "General",
                          prerequisites: "Draconic Aspect, Draconic Breath, Draconic Glide, character level 10th, kobold.",
                          benefit: "You gain an additional +2 bonus against sleep and paralysis effects. You can use your breath weapon twice per day and your breath weapon damage increases to 4d6 points of energy damage. Your wings from the Draconic Glide feat grow stronger, granting you a fly speed of 20 feet (average maneuverability).",
                          summary: "You gain an additional +2 bonus against sleep and paralysis effects. You can use your breath weapon twice per day and your breath weapon damage increases to 4d6 points of energy damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Drow Nobility",
                          featType: "General",
                          prerequisites: "Able to use drow spell-like abilities, drow.",
                          benefit: "You may use detect magic as a spell-like ability at will, and add feather fall and levitate to the spell-like abilities that you may use once each per day. Your caster level is equal to your character level.",
                          summary: "You may use detect magic as a spell-like ability at will, and add feather fall and levitate to the spell-like abilities that you may use once each per day.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dwarf Blooded",
                          featType: "General",
                          prerequisites: "Oread.",
                          benefit: "Your dwarven heritage manifests in two ways. First, your speed is never modified by armor or encumbrance, as the dwarf slow and steady racial trait. Second, you gain the stonecunning dwarf racial trait.",
                          summary: "Your dwarven heritage manifests in two ways. First, your speed is never modified by armor or encumbrance, as the dwarf slow and steady racial trait.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Echoes of Stone",
                          featType: "General",
                          prerequisites: "Oread.",
                          benefit: "You gain a +4 racial bonus on Perception checks underground, and on Survival checks to avoid becoming lost in caverns and rocky areas.",
                          summary: "You gain a +4 racial bonus on Perception checks underground, and on Survival checks to avoid becoming lost in caverns and rocky areas.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elemental Jaunt",
                          featType: "General",
                          prerequisites: "Character level 15th, ifrit, oread, sylph, or undine.",
                          benefit: "Once per day, you can cast plane shift as a spell-like ability with a caster level equal to your level to transport yourself and willing targets to an elemental plane that is appropriate to your race (ifrits to the Plane of Fire, oreads to the Plane of Earth, sylphs to the Plane of Air, and undines to the Plane of Water). While on that plane, you (but not anyone transported with you) are treated as though under the effect of the spell planar adaptation.",
                          summary: "Once per day, you can cast plane shift as a spell-like ability with a caster level equal to your level to transport yourself and willing targets to an elemental plane that is appropriate to your race…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elven Battle Training (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, elf.",
                          benefit: "You have received special training with traditional elven weapons (longbows, composite longbows, longswords, rapiers, shortbows, composite shortbows, and any weapon with the word \"elven\" in its name). You receive a +2 bonus to your CMD against disarm and sunder maneuvers directed at one of these weapons you are wielding. In addition, if you are wielding one of these melee weapons, you may make an additional attack of opportunity each round (this bonus stacks with Combat Reflexes).",
                          summary: "You have received special training with traditional elven weapons (longbows, composite longbows, longswords, rapiers, shortbows, composite shortbows, and any weapon with the word \"elven\" in its…",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elven Spirit",
                          featType: "General",
                          prerequisites: "Half-elf.",
                          benefit: "You possess the elven magic racial trait of the elves, granting you a +2 racial bonus on caster level checks made to overcome spell resistance. In addition, you receive a +2 racial bonus on Spellcraft checks made to identify the properties of magic items. Alternatively, you can instead gain any one racial trait that elves can exchange for the elven magic racial trait.",
                          special: "You can only take this feat at 1st level. If you take this feat, you cannot take the Human Spirit feat.",
                          summary: "You possess the elven magic racial trait of the elves, granting you a +2 racial bonus on caster level checks made to overcome spell resistance.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Exile's Path",
                          featType: "General",
                          prerequisites: "Half-elf.",
                          benefit: "Once per day, when you fail a Will save against an enchantment spell or effect, you may reroll that saving throw, but must take the reroll result even if it’s worse.",
                          summary: "Once per day, when you fail a Will save against an enchantment spell or effect, you may reroll that saving throw, but must take the reroll result even if it’s worse.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expanded Fiendish Resistance",
                          featType: "General",
                          prerequisites: "Tiefling.",
                          benefit: "Pick one of the following energy types that you do not already have resistance to: acid, cold, electricity, or fire. You gain resistance 5 to that energy type.",
                          special: "You can take this feat multiple times. Each time you do, pick another energy type you do not have resistance to. You gain resistance 5 to that energy type.",
                          summary: "Pick one of the following energy types that you do not already have resistance to: acid, cold, electricity, or fire. You gain resistance 5 to that energy type.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expanded Resistance",
                          featType: "General",
                          prerequisites: "Gnome, illusion resistance racial trait.",
                          benefit: "Select one school of magic other than illusion. You gain a +2 racial bonus on saving throws against spells or effects from the selected school.",
                          special: "You may select this feat more than once. Its effects do not stack. Each time you select it, it applies to a different school of magic.",
                          summary: "Select one school of magic other than illusion. You gain a +2 racial bonus on saving throws against spells or effects from the selected school.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Elemental Assault",
                          featType: "General",
                          prerequisites: "Suli.",
                          benefit: "Your elemental assault ability lasts an additional 2 rounds per day.",
                          special: "You can take this feat multiple times. Its effects stack.",
                          summary: "Your elemental assault ability lasts an additional 2 rounds per day.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fast Learner",
                          featType: "General",
                          prerequisites: "Int 13, human.",
                          benefit: "When you gain a level in a favored class, you gain both +1 hit point and +1 skill rank instead of choosing either one or the other benefit or you can choose an alternate class reward.",
                          summary: "When you gain a level in a favored class, you gain both +1 hit point and +1 skill rank instead of choosing either one or the other benefit or you can choose an alternate class reward.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fearless Curiosity",
                          featType: "General",
                          prerequisites: "Cha 13, human.",
                          benefit: "You gain a +1 bonus on saving throws against effects with the emotion descriptor. In addition, for any round in which you begin your turn affected by a fear effect, you gain a new save at the beginning of your turn to reduce the severity of the fear effect, from panicked to frightened, frightened to shaken, and shaken to unaffected.",
                          summary: "You gain a +1 bonus on saving throws against effects with the emotion descriptor.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Feline Grace",
                          featType: "General",
                          prerequisites: "Dexterity 13, catfolk.",
                          benefit: "You gain a +2 bonus to your CMD against bull rush, grapple, overrun, repositioning, and trip combat maneuvers.",
                          summary: "You gain a +2 bonus to your CMD against bull rush, grapple, overrun, repositioning, and trip combat maneuvers.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ferocious Action",
                          featType: "General",
                          prerequisites: "Ferocity racial trait, orc.",
                          benefit: "When you fall to 0 hit points or fewer, you lose 2 hit points each round, but you are not staggered. If you are in a rage (such as that caused by the barbarian rage class feature), you instead only lose 1 hit point per round.",
                          summary: "When you fall to 0 hit points or fewer, you lose 2 hit points each round, but you are not staggered.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ferocious Resolve",
                          featType: "General",
                          prerequisites: "Con 13, half-orc, orc ferocity racial trait.",
                          benefit: "You gain the ferocity universal monster ability, allowing you to continue fighting at negative hit points. When using this ability, you gain a +2 bonus on Intimidate checks.",
                          normal: "A half-orc with the orc ferocity racial trait can fight for 1 more round after he is brought below 0 hit points.",
                          summary: "You gain the ferocity universal monster ability, allowing you to continue fighting at negative hit points. When using this ability, you gain a +2 bonus on Intimidate checks.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ferocious Summons",
                          featType: "General",
                          prerequisites: "Augment Summoning, Spell Focus (conjuration), half-orc or orc.",
                          benefit: "Creatures you summon gain the ferocity universal monster ability.",
                          summary: "Creatures you summon gain the ferocity universal monster ability.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fiend Sight",
                          featType: "General",
                          prerequisites: "Darkvision 60 ft., tiefling.",
                          benefit: "You gain low-light vision and your darkvision improves to 120 ft.",
                          special: "You can take this feat twice. When you take it a second time, you gain the see in darkness universal monster ability.",
                          summary: "You gain low-light vision and your darkvision improves to 120 ft.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fire Hand (Combat)",
                          featType: "General",
                          prerequisites: "Goblin.",
                          benefit: "You can wield a torch as a weapon without taking the nonproficient penalty and gain a +1 bonus on attack rolls with melee weapons that deal fire damage.",
                          summary: "You can wield a torch as a weapon without taking the nonproficient penalty and gain a +1 bonus on attack rolls with melee weapons that deal fire damage.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fire Tamer",
                          featType: "General",
                          prerequisites: "Goblin.",
                          benefit: "You gain a +2 bonus on saves against spells with the fire descriptor. Additionally, your scars mark you as a talented fire tamer, granting you a +2 circumstance bonus on Diplomacy and Intimidate checks when dealing with other goblins.",
                          summary: "You gain a +2 bonus on saves against spells with the fire descriptor.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Firesight",
                          featType: "General",
                          prerequisites: "Ifrit.",
                          benefit: "You can see through fire and smoke without penalty, ignoring any cover or concealment bonuses from fire and smoke. This does not allow you to see anything you could not otherwise see (for example, invisible creatures are still invisible). You are immune to the dazzled condition.",
                          summary: "You can see through fire and smoke without penalty, ignoring any cover or concealment bonuses from fire and smoke.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flame Heart",
                          featType: "General",
                          prerequisites: "Fire Tamer, character level 5th, goblin.",
                          benefit: "You gain fire resistance 5. When casting spells with the fire descriptor or throwing alchemist bombs that deal fire damage, treat your caster level or alchemist level as if you were 1 level higher.",
                          summary: "You gain fire resistance 5. When casting spells with the fire descriptor or throwing alchemist bombs that deal fire damage, treat your caster level or alchemist level as if you were 1 level higher.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Focusing Blow (Teamwork)",
                          featType: "General",
                          prerequisites: "Hobgoblin Discipline, hobgoblin.",
                          benefit: "An ally who also has this feat can deal damage to you in order to break an ongoing mind-affecting effect that allows a saving throw. The ally must cause at least 5 points of damage to you with an attack, spell, or other ability. You then reroll your saving throw, with a +1 bonus for every 5 additional points of damage the attack caused. If your save is successful, the mind-affecting effect ends. Only damage actually dealt counts for purposes of this feat; nonlethal damage and damage reduced or eliminated by damage reduction, resistances, and so on does not qualify.",
                          summary: "An ally who also has this feat can deal damage to you in order to break an ongoing mind-affecting effect that allows a saving throw.",
                          source: "Advanced Race Guide", isPremium: true)
        )
        try await seedFeatsC()
    }
}
