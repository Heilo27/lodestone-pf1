import Foundation

extension SeedDataBuilder {
    func seedFeats() async throws {
        let feats: [FeatEntry] = [

            // MARK: - General Feats (Level 1)
            .make("Adopted Ancestry", level: 1, featType: "General",
                  traits: "General",
                  summary: "You fully embrace a culture other than your own.",
                  benefit: "You fully embrace a culture other than your own. Choose a people whose culture you have spent time immersed in. You can select ancestry feats from that ancestry as long as you meet their other requirements.",
                  isPremium: false),

            .make("Assurance", level: 1, featType: "General",
                  traits: "General, Skill",
                  prerequisites: "Trained in at least one skill",
                  summary: "You can forgo rolling to receive a result of 10 + proficiency bonus.",
                  benefit: "Even in the worst circumstances, you can perform basic tasks. Choose a skill you're trained in. You can forgo rolling a skill check for that skill to instead receive a result of 10 + your proficiency bonus (do not apply any other bonuses, penalties, or modifiers).",
                  isPremium: false),

            .make("Incredible Initiative", level: 1, featType: "General",
                  traits: "General",
                  summary: "You react with particular swiftness when a fight breaks out.",
                  benefit: "You react with particular swiftness when a fight breaks out. You gain a +2 circumstance bonus to initiative rolls.",
                  isPremium: false),

            .make("Shield Block", level: 1, featType: "General",
                  traits: "General",
                  trigger: "While you have your shield raised, you take physical damage",
                  summary: "You raise your shield to block a blow.",
                  benefit: "Your shield prevents you from taking an amount of damage up to its Hardness. You and the shield each take any remaining damage, possibly breaking or destroying the shield.",
                  isPremium: false),

            .make("Toughness", level: 1, featType: "General",
                  traits: "General",
                  summary: "You can withstand more punishment than most.",
                  benefit: "You can withstand more punishment than most before succumbing. Increase your maximum Hit Points by your level. The DC of your recovery checks is equal to 9 + your dying value.",
                  isPremium: false),

            // MARK: - Skill Feats (Level 1)
            .make("Acrobatic Performer", level: 1, featType: "Skill",
                  traits: "General, Skill",
                  prerequisites: "Trained in Acrobatics",
                  summary: "You can use Acrobatics to Perform.",
                  benefit: "When you use Acrobatics as part of a Performance check (such as tumbling), you can use your Acrobatics modifier instead of Performance. You still need to be trained in Performance to use this feat.",
                  isPremium: false),

            .make("Battle Medicine", level: 1, featType: "Skill",
                  traits: "General, Healing, Manipulate, Skill",
                  prerequisites: "Trained in Medicine",
                  summary: "You can patch up wounds in the middle of combat.",
                  benefit: "You can patch up yourself or an adjacent ally, even in the heat of battle. Attempt a Medicine check with the same DC as for Treat Wounds, and restore the corresponding number of Hit Points; this doesn't remove the wounded condition. As with Treat Wounds, you can attempt checks against higher DCs if you have the minimum proficiency rank. The target is then temporarily immune to your Battle Medicine for 1 day.",
                  isPremium: false),

            .make("Bon Mot", level: 1, featType: "Skill",
                  traits: "Auditory, Concentrate, Emotion, General, Linguistic, Mental, Skill",
                  prerequisites: "Trained in Diplomacy",
                  actions: "1 action",
                  summary: "You launch a witty quip at a foe.",
                  benefit: "You launch a witty quip at a foe, causing a momentary break in their concentration. Attempt a Diplomacy check against the target's Will DC. On a success, the target is distracted and takes a -2 status penalty to Perception and Will saves for 1 round. On a critical success, the penalty lasts for 1 minute.",
                  isPremium: false),

            .make("Continual Recovery", level: 1, featType: "Skill",
                  traits: "General, Skill",
                  prerequisites: "Expert in Medicine",
                  summary: "You work efficiently to keep your patient healthy.",
                  benefit: "You persist in your efforts to keep your patient alive, shortening the time required to continue Treat Wounds. When you treat the same patient with Treat Wounds again, the cooldown is reduced from 1 hour to 10 minutes.",
                  isPremium: false),

            .make("Dubious Knowledge", level: 1, featType: "Skill",
                  traits: "General, Skill",
                  prerequisites: "Trained in any skill",
                  summary: "You've assembled a haphazard collection of facts.",
                  benefit: "You've assembled a haphazard collection of facts and theories, and you're quick to consult them, even when you're wrong. When you fail (but not critically fail) a Recall Knowledge check, you learn a piece of information about the subject, though that information might be erroneous.",
                  isPremium: false),

            // MARK: - Combat Feats (Level 1)
            .make("Point-Blank Shot", level: 1, featType: "General",
                  traits: "General, Open, Stance",
                  prerequisites: "Trained in a ranged weapon",
                  summary: "You aim carefully at nearby enemies.",
                  benefit: "When using a ranged weapon, you don't take the penalty from Volley on attacks within that weapon's first range increment. Additionally, when you're in this stance and use a ranged weapon to attack a creature in the first range increment, you gain a +2 circumstance bonus to damage.",
                  isPremium: false),

            .make("Power Attack", level: 2, featType: "Fighter",
                  traits: "Fighter, Flourish",
                  prerequisites: "Fighter",
                  requirements: "You are wielding a melee weapon",
                  summary: "You unleash a particularly powerful attack.",
                  benefit: "You unleash a particularly powerful attack that clobbers your foe but leaves you a bit unsteady. Make a melee Strike. This Strike deals an extra die of weapon damage. If you're at least 10th level, increase this to two extra dice, and if you're at least 18th level, increase it to three extra dice.",
                  isPremium: false),

            .make("Sudden Charge", level: 1, featType: "Fighter",
                  traits: "Fighter, Flourish, Open",
                  prerequisites: "Fighter",
                  actions: "2 actions",
                  summary: "You rush forward, closing the distance and making a Strike.",
                  benefit: "With a burst of speed, you Stride twice and make a Strike, all in one fluid motion. You must end your movement within melee reach of your target.",
                  isPremium: false),

            // MARK: - Archetype Feats (Level 2)
            .make("Wizard Dedication", level: 2, featType: "Archetype",
                  traits: "Archetype, Dedication, Multiclass",
                  prerequisites: "Intelligence 14",
                  summary: "You cast arcane spells like a wizard.",
                  benefit: "You gain access to the Cast a Spell activity. You can cast arcane cantrips as a 1st-rank wizard. You're trained in arcane spell attack rolls and spell DCs. Your key spellcasting ability for these archetype spells is Intelligence.",
                  isPremium: false),
        ]

        for feat in feats {
            try await db.insertFeat(feat)
        }
    }
}
