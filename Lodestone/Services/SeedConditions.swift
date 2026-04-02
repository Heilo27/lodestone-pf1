import Foundation

extension SeedDataBuilder {
    func seedConditions() async throws {
        let conditions: [ConditionEntry] = [

            .make("Blinded",
                  summary: "You can't see.",
                  desc: "You can't see. All terrain is difficult terrain to you. You're off-guard. You can't detect anything using vision. You automatically critically fail Perception checks that require you to see, and if vision is your only precise sense, you take a -4 status penalty to Perception checks. You're immune to visual effects. Blinded overrides dazzled.",
                  isPremium: false),

            .make("Broken",
                  summary: "A broken item has been damaged and doesn't function normally.",
                  desc: "This condition explains how items function while in a broken state. An item with the broken condition has its Hardness reduced by 5 (to a minimum of 0) and takes double damage from attacks and damaging effects. A broken item with Hardness 0 destroyed on a critical hit.",
                  isPremium: false),

            .make("Clumsy", isValued: true,
                  summary: "Your movements are uncoordinated and imprecise.",
                  desc: "Your movements become clumsy and imprecise. This condition always has a value. You take a status penalty equal to the value to Dexterity-based checks and DCs, including Reflex saves, ranged attack rolls, and Acrobatics checks.",
                  isPremium: false),

            .make("Concealed",
                  summary: "You're not directly visible to another creature.",
                  desc: "A creature that is concealed from you is hidden, but you know it's there—you just can't see it clearly enough to attack it. You must succeed at a DC 5 flat check to affect a concealed creature.",
                  isPremium: false),

            .make("Confused",
                  summary: "You're making random actions on each of your turns.",
                  desc: "You're making random actions on each of your turns. You can't Delay or Ready. At the start of each of your turns, roll 1d8 on the Confused action table to determine your action for that turn. If an enemy attacks you or you're the target of a hostile action, you can use your reaction to attack the creature that attacked you.",
                  isPremium: false),

            .make("Controlled",
                  summary: "Another creature is controlling your actions.",
                  desc: "Another creature is determining your actions. Unlike charm, this control is direct and all-encompassing. The controlling creature chooses your actions for you. The effect that created this condition says what creature is in control.",
                  isPremium: false),

            .make("Dazzled",
                  summary: "Your eyes are overstimulated.",
                  desc: "Your eyes are overstimulated. If vision is your only precise sense, all creatures and objects are concealed from you.",
                  isPremium: false),

            .make("Deafened",
                  summary: "You can't hear.",
                  desc: "You can't hear. You're off-guard to creatures you aren't aware of. You lose the benefit of your hearing-based precise senses for Perception checks and automatically critically fail Perception checks that require you to hear. You take a -2 status penalty to Perception checks for initiative.",
                  isPremium: false),

            .make("Doomed", isValued: true,
                  summary: "Your life essence is draining away.",
                  desc: "Your life essence is draining away, bringing you closer to death. Doomed always has a value. Your dying condition limit is reduced by your doomed value. If your maximum dying value is reduced to 0, you die.",
                  isPremium: false),

            .make("Drained", isValued: true,
                  summary: "Your physical strength has been drained.",
                  desc: "Your physical strength has been drained. Drained always has a value. You take a status penalty equal to your drained value on Constitution-based checks, such as Fortitude saves. In addition, you lose a number of hit points equal to your level (minimum 1) × your drained value.",
                  isPremium: false),

            .make("Dying", isValued: true,
                  summary: "You're bleeding out or on the verge of death.",
                  desc: "You're bleeding out or on the verge of death. Dying always has a value. While you have the dying condition, at the start of each of your turns, you must attempt a recovery check (a flat check with a DC equal to 10 + your current dying value). If you fail, your dying value increases by 1; if you critically fail, it increases by 2; if you succeed, it decreases by 1.",
                  isPremium: false),

            .make("Encumbered",
                  summary: "You're carrying more than you can comfortably move with.",
                  desc: "You're carrying more than you can comfortably move with. While encumbered, you're clumsy 1 and take a -10-foot penalty to your Speeds.",
                  isPremium: false),

            .make("Enfeebled", isValued: true,
                  summary: "Your physical strength is being sapped.",
                  desc: "Your physical strength is being sapped. Enfeebled always has a value. You take a status penalty equal to the value to Strength-based rolls and DCs, including Strength-based melee attack rolls, Strength-based damage rolls, and Athletics checks.",
                  isPremium: false),

            .make("Fascinated",
                  summary: "You're captivated by something.",
                  desc: "You're captivated by something and have difficulty attending to anything else. You take a -2 status penalty to Perception and Will saves against effects other than the one that made you fascinated. While fascinated, you can't use actions with the concentrate trait unless they or their intended consequences are related to the subject of your fascination.",
                  isPremium: false),

            .make("Fatigued",
                  summary: "You're exhausted and can't summon the energy to act.",
                  desc: "You're exhausted from overexertion. You take a -1 status penalty to AC and saving throws. While camping, if you rest for 8 hours, you lose the fatigued condition.",
                  isPremium: false),

            .make("Flat-Footed",
                  summary: "You're unprepared for attacks (legacy term; see Off-Guard).",
                  desc: "See Off-Guard. Flat-footed is the legacy name for the off-guard condition in older Pathfinder 2E content.",
                  isPremium: false),

            .make("Fleeing",
                  summary: "You must move away from whatever caused this condition.",
                  desc: "You're compelled to flee and must spend each of your turns trying to escape. On your turn, you must take the Stride action to move away from whatever caused you to be fleeing as expediently as possible. You can't use your actions for anything else except the Escape action if you're being held, grabbed, or restrained.",
                  isPremium: false),

            .make("Frightened", isValued: true,
                  summary: "You're gripped by fear and have trouble acting.",
                  desc: "You're gripped by fear and struggle to act effectively. Frightened always has a value. You take a status penalty equal to this value to all your checks and DCs. Unless specified otherwise, at the end of each of your turns, the value of your frightened condition decreases by 1.",
                  isPremium: false),

            .make("Grabbed",
                  summary: "You've been grabbed by a creature.",
                  desc: "You're held in place by another creature, giving you the off-guard and immobilized conditions. If you attempt a manipulate action while grabbed, you must succeed at a DC 5 flat check or it's lost; roll the check after spending the action, before any effects are applied.",
                  isPremium: false),

            .make("Hidden",
                  summary: "A creature doesn't know where you are.",
                  desc: "While you are hidden from a creature, that creature knows you exist and roughly where you are, but they can't see you precisely enough to target you. When you're hidden, attacks and checks that require knowing your location use a flat check DC 11. You can still be targeted by spells or abilities that don't require precise location.",
                  isPremium: false),

            .make("Immobilized",
                  summary: "You can't move from your current space.",
                  desc: "You can't use move actions to move from your current space, though you can still move your limbs and take actions that don't involve moving through space.",
                  isPremium: false),

            .make("Invisible",
                  summary: "Creatures can't see you.",
                  desc: "Creatures can't see you. You're undetected by all creatures using standard vision, though you can be detected by other senses. While invisible, you can still make noise and leave evidence. Attacks and checks that require knowing your location use a flat check with DC 11. You're not off-guard to creatures just because they can't see you.",
                  isPremium: false),

            .make("Off-Guard",
                  summary: "You're susceptible to attacks and the target of sneak attacks.",
                  desc: "You're distracted or otherwise unable to focus your full attention on defense. You take a -2 circumstance penalty to AC. Some conditions make you off-guard, including being flat-footed or surprised. Rogues and other characters with sneak attack deal additional damage against off-guard targets.",
                  isPremium: false),

            .make("Paralyzed",
                  summary: "Your body is frozen in place.",
                  desc: "Your body is frozen in place. You have the off-guard condition and can't act physically. You can still take mental actions that don't require physical movement, such as casting spells with only a verbal component.",
                  isPremium: false),

            .make("Persistent Damage", isValued: false,
                  summary: "You take damage at the start of each turn.",
                  desc: "Persistent damage comes from effects like acid, being on fire, or many other situations. It appears as a specific type of damage and a specific amount, such as persistent fire damage or 1d6 persistent bleed damage. At the end of each of your turns, you take the listed amount of damage of the listed type. After taking persistent damage, you can attempt a DC 15 flat check to recover from it.",
                  isPremium: false),

            .make("Petrified",
                  summary: "You've been turned to stone.",
                  desc: "You've been turned to stone and can't act or move. You can still use purely mental actions (if your physiology allows it). You have the off-guard condition. Petrified creatures have a Hardness of 8 and don't lose Hit Points or gain wounds while petrified.",
                  isPremium: false),

            .make("Prone",
                  summary: "You're lying on the ground.",
                  desc: "You're lying on the ground. You are off-guard and take a -2 circumstance penalty to attack rolls. The only move actions you can take are to Crawl and to Stand. Standing up from prone costs 1 action. A creature can't go prone from another creature's shove or similar effects unless the creature specifically says it can.",
                  isPremium: false),

            .make("Quickened",
                  summary: "You can take an extra action each turn.",
                  desc: "You gain 1 additional action at the start of each turn. Many effects that make you quickened specify the types of actions you can use with this additional action. If the effect doesn't limit the action type, you can use it for any action.",
                  isPremium: false),

            .make("Restrained",
                  summary: "You're completely immobilized by a restraint.",
                  desc: "You're completely unable to move. You have the off-guard, grabbed, and immobilized conditions, and you can't use any actions with the attack or manipulate traits. This condition ends when you Escape or the restraint is removed.",
                  isPremium: false),

            .make("Sickened", isValued: true,
                  summary: "You feel nauseated and unwell.",
                  desc: "You feel nauseated and might vomit. Sickened always has a value. You take a status penalty equal to the value to all your checks and DCs. You can't willingly ingest anything while sickened. You can spend an action retching to attempt a Fortitude save against the DC that created the sickened condition, reducing the value on a success.",
                  isPremium: false),

            .make("Slowed", isValued: true,
                  summary: "You lose actions at the start of your turn.",
                  desc: "You are hampered and lose actions. Slowed always has a value. At the start of each of your turns, you lose that many of your normal actions. Unlike quickened, you still lose your reaction when slowed.",
                  isPremium: false),

            .make("Stunned", isValued: true,
                  summary: "You can't act.",
                  desc: "You've become senseless. Stunned always has a value. You lose that many actions at the start of each of your turns. Unlike slowed, stunned also cancels your reaction.",
                  isPremium: false),

            .make("Stupefied", isValued: true,
                  summary: "Your mind is muddled.",
                  desc: "Your thoughts are sluggish and you struggle to concentrate. Stupefied always has a value. You take a status penalty equal to the value to Intelligence-, Wisdom-, and Charisma-based checks and DCs, including Will saving throws, spell attack rolls, spell DCs, and skill checks that use these ability scores.",
                  isPremium: false),

            .make("Unconscious",
                  summary: "You're asleep or have passed out.",
                  desc: "You're asleep or have passed out. You can't perform any actions. You have the blinded and off-guard conditions. If you're unconscious because you're dying, you also can't take actions at all. As normal, you can still be targeted by effects and spells.",
                  isPremium: false),

            .make("Undetected",
                  summary: "A creature doesn't know you're there.",
                  desc: "While you're undetected by a creature, that creature can't perceive you at all—it doesn't know you're there and can't attempt to find you. Attacks and other targeted effects against you fail automatically unless they don't require knowing your location.",
                  isPremium: false),

            .make("Wounded", isValued: true,
                  summary: "You've recovered from dying but are still weakened.",
                  desc: "You have been badly hurt and are recovering. Wounded always has a value. If you get the dying condition while wounded, your dying value increases by your wounded value. If you recover from being dying, your wounded value increases by 1. You lose this condition when you're fully healed.",
                  isPremium: false),
        ]

        for condition in conditions {
            try await db.insertCondition(condition)
        }
    }
}
