import Foundation

// Book of the Dead (Premium)
extension SeedDataBuilder {
    func seedBookOfTheDead() async throws {

        // MARK: - Undead-Themed Spells

        let spells: [SpellEntry] = [

            .make("Animate Dead", rank: 1, traditions: "arcane, divine, occult", actions: "3 actions",
                  traits: "Concentrate, Manipulate, Necromancy",
                  range: "30 feet", duration: "Sustained up to 1 minute",
                  summary: "You call forth an undead creature to fight for you.",
                  desc: "You call forth an undead creature to fight for you. You summon a common creature that has the undead trait and whose level is -1; this creature gains the summoned trait. It occupies its space and is flat-footed. When you Sustain the Spell, you can command the creature to use a single action. If you don't Sustain the Spell, the creature uses its action to attack the nearest creature.",
                  heightened: "(2nd) Level 1. (3rd) Level 2. (4th) Level 3. (5th) Level 5. (6th) Level 7. (7th) Level 9. (8th) Level 11. (9th) Level 13. (10th) Level 15.",
                  source: "Book of the Dead", isPremium: true),

            .make("Bind Undead", rank: 2, traditions: "arcane, divine, occult", actions: "2 actions",
                  traits: "Concentrate, Manipulate, Necromancy",
                  range: "30 feet", targets: "1 mindless undead creature with a level no greater than your level - 3",
                  duration: "1 day",
                  summary: "You bind a mindless undead creature to your will.",
                  desc: "With a word of necromantic power, you seize control of a mindless undead creature. The target must attempt a Will save. On a critical failure, it becomes your minion for the duration. On a failure, it becomes your minion for 1 hour. On a success, it is unaffected. You can have only one creature bound at a time with this spell; casting it again dismisses any previous binding.",
                  source: "Book of the Dead", isPremium: true),

            .make("Undeath's Blessing", rank: 1, traditions: "divine, occult", actions: "2 actions",
                  traits: "Necromancy, Negative",
                  range: "30 feet", targets: "1 willing living creature or 1 undead creature",
                  duration: "1 minute",
                  summary: "You imbue the target with the chill of undeath, granting it resistance to positive damage.",
                  desc: "You channel negative energy to grant a semblance of undeath. If the target is living, it gains resistance 2 to positive damage and weakness 2 to negative damage for the duration. If the target is undead, it instead gains a +1 status bonus to saving throws against positive effects for the duration.",
                  heightened: "(+2) The resistance and weakness for living creatures each increase by 2.",
                  source: "Book of the Dead", isPremium: true),

            .make("Summon Undead", rank: 1, traditions: "arcane, divine, occult", actions: "3 actions",
                  traits: "Concentrate, Manipulate, Necromancy",
                  range: "30 feet", duration: "Sustained up to 1 minute",
                  summary: "You conjure an undead creature to serve as your ally in battle.",
                  desc: "You conjure an undead creature to do your bidding. You summon a common creature that has the undead trait and whose level is -1 or lower. This creature gains the summoned trait. Heightening the spell increases the maximum level of creature you can summon.",
                  heightened: "(2nd) Level 1. (3rd) Level 2. (4th) Level 3. (5th) Level 5. (6th) Level 7. (7th) Level 9. (8th) Level 11. (9th) Level 13. (10th) Level 15.",
                  source: "Book of the Dead", isPremium: true),

            .make("Army of the Dead", rank: 7, traditions: "arcane, divine, occult", actions: "3 actions",
                  traits: "Concentrate, Manipulate, Necromancy",
                  range: "60 feet",
                  duration: "Sustained up to 1 minute",
                  summary: "You call forth a shambling horde of undead to overwhelm your enemies.",
                  desc: "You raise a small army of undead minions. You conjure up to 4 common undead creatures, each of level 3 or lower, that gain the summoned trait. They appear in unoccupied squares within range. On each round when you Sustain the Spell, you can command all summoned undead to each use 1 action. The undead otherwise act on your initiative. If any summoned creature is destroyed, you can use a subsequent Sustain to replace it.",
                  heightened: "(8th) Up to 6 creatures of level 5 or lower. (9th) Up to 8 creatures of level 7 or lower. (10th) Up to 10 creatures of level 9 or lower.",
                  source: "Book of the Dead", isPremium: true),

            .make("Enervation", rank: 4, traditions: "arcane, divine, occult", actions: "2 actions",
                  traits: "Necromancy, Negative",
                  range: "60 feet", area: "30-foot line",
                  savingThrow: "Fortitude",
                  summary: "Sapping negative energy drains the targets' vitality.",
                  desc: "Tendrils of negative energy envelop creatures in the line. Each creature in the area must attempt a Fortitude save. Critical Success: Unaffected. Success: The creature takes 2d8 negative damage. Failure: The creature takes 4d8 negative damage and gains the drained 1 condition. Critical Failure: The creature takes 4d8 negative damage and gains the drained 2 condition.",
                  heightened: "(+1) The damage increases by 1d8 on a success, and 2d8 on a failure or critical failure.",
                  source: "Book of the Dead", isPremium: true),

            .make("False Life", rank: 1, traditions: "arcane, occult", actions: "2 actions",
                  traits: "Necromancy",
                  duration: "8 hours",
                  summary: "You gain a small amount of temporary Hit Points.",
                  desc: "Bolstering your body with necromantic energy, you gain 6 temporary Hit Points. These temporary Hit Points last for the duration or until lost.",
                  heightened: "(+1) The temporary Hit Points increase by 3.",
                  source: "Book of the Dead", isPremium: true),

            .make("Grim Tendrils", rank: 1, traditions: "arcane, occult", actions: "2 actions",
                  traits: "Necromancy, Negative",
                  area: "30-foot line", savingThrow: "Fortitude",
                  summary: "Tendrils of negative energy reach out to sap the life from the living.",
                  desc: "Tendrils of darkness snake out from your hands and drain the life from living creatures they touch. Each living creature in the line must attempt a Fortitude save. On a failure, a creature takes 2d4 negative damage and 1 persistent bleed damage. On a critical failure, it takes 4d4 negative damage and 2 persistent bleed damage. On a success, the creature takes half the negative damage and no persistent bleed damage.",
                  heightened: "(+1) The negative damage increases by 2d4, and the persistent bleed on a failure increases by 1.",
                  source: "Book of the Dead", isPremium: true),

            .make("Necromantic Radiation", rank: 3, traditions: "arcane, divine, occult", actions: "2 actions",
                  traits: "Necromancy, Negative",
                  area: "10-foot emanation", duration: "Sustained up to 1 minute",
                  savingThrow: "Fortitude",
                  summary: "You emanate a field of necromantic energy that saps vitality from nearby living creatures.",
                  desc: "You emit an aura of necromantic radiation. Living creatures that start their turn in the emanation or enter it during their turn must attempt a Fortitude save. On a failure, the creature takes 2d6 negative damage and is sickened 1. On a critical failure, the creature takes 4d6 negative damage and is sickened 2. Undead creatures in the area gain fast healing 2 instead.",
                  heightened: "(+2) The negative damage increases by 1d6, and the fast healing for undead increases by 1.",
                  source: "Book of the Dead", isPremium: true),

            .make("Sanguine Mist", rank: 3, traditions: "arcane, divine, occult", actions: "2 actions",
                  traits: "Necromancy, Negative",
                  range: "60 feet", area: "10-foot burst", duration: "1 minute",
                  savingThrow: "Fortitude",
                  summary: "You create a cloud of crimson mist that drinks the blood of the living.",
                  desc: "A crimson mist fills the area, draining the blood of living creatures within. Each living creature that starts its turn in the mist or enters the mist must attempt a Fortitude save. On a failure, the creature takes 2d6 negative damage and you gain temporary Hit Points equal to half the damage dealt. On a critical failure, the creature takes 4d6 negative damage and is enfeebled 1 for 1 round. The mist provides concealment to all creatures within it.",
                  heightened: "(+2) The damage increases by 1d6.",
                  source: "Book of the Dead", isPremium: true),

            .make("Vampiric Exsanguination", rank: 6, traditions: "arcane, divine, occult", actions: "2 actions",
                  traits: "Death, Necromancy, Negative",
                  area: "30-foot cone", savingThrow: "basic Fortitude",
                  summary: "You draw the blood from every living creature in the cone, draining their vitality.",
                  desc: "You unleash a wave of necromantic power that drains the blood and vitality from living creatures in the area, dealing 12d6 negative damage. You gain temporary Hit Points equal to half the damage a single target takes (after applying resistance and the like). Use the highest single target's damage for this calculation. If the target is undead, it instead takes no damage and is unaffected.",
                  heightened: "(+1) The damage increases by 2d6.",
                  source: "Book of the Dead", isPremium: true),

            .make("Vampiric Touch", rank: 3, traditions: "arcane, divine, occult", actions: "2 actions",
                  traits: "Death, Necromancy, Negative",
                  range: "touch", targets: "1 living creature",
                  savingThrow: "basic Fortitude",
                  summary: "Your touch drains the life from a creature and restores your own vitality.",
                  desc: "Your touch drains the target's blood and vitality. You deal 6d6 negative damage to the target. You gain temporary Hit Points equal to half the negative damage the target takes (after applying immunities, weaknesses, and resistances). If you deal damage to a creature that is already dead, you still gain the temporary Hit Points. The temporary Hit Points last for 1 minute.",
                  heightened: "(+1) The damage increases by 2d6.",
                  source: "Book of the Dead", isPremium: true),

            .make("Zombie Skin", rank: 2, traditions: "arcane, occult", actions: "2 actions",
                  traits: "Necromancy",
                  targets: "you", duration: "10 minutes",
                  summary: "Your flesh hardens and becomes gray and lifeless, granting physical resistance.",
                  desc: "Your skin becomes tough and gray like a zombie's decaying flesh, granting you resistance 2 to physical damage (except slashing). While this spell is active, you look visibly undead. Undead creatures of level 2 or lower don't attack you unless you attack them first, as they mistake you for one of their own.",
                  heightened: "(4th) The resistance increases to 5. (6th) The resistance increases to 8. (8th) The resistance increases to 10.",
                  source: "Book of the Dead", isPremium: true),
        ]

        for spell in spells {
            try await db.insertSpell(spell)
        }

        // MARK: - Undead Archetype Feats

        let feats: [FeatEntry] = [

            // Undead Master Archetype
            .make("Undead Master Dedication", level: 2, featType: "Archetype",
                  traits: "Archetype, Dedication",
                  prerequisites: "Evil or neutral alignment",
                  summary: "You gain the ability to command and control undead creatures.",
                  benefit: "You learn the secrets of controlling undead. You can cast bind undead as a divine innate spell once per day. You become trained in Religion if you weren't already; if you were, you become trained in a skill of your choice. You gain the Command Undead action, which lets you spend an action to direct a single undead minion under your control to use a single action.",
                  source: "Book of the Dead", isPremium: true),

            .make("Improved Command", level: 4, featType: "Archetype",
                  traits: "Archetype",
                  prerequisites: "Undead Master Dedication",
                  summary: "You can command undead minions more effectively, granting them 2 actions.",
                  benefit: "Your control over undead creatures grows stronger. When you use your Command Undead action, you can have the undead minion use 2 actions instead of 1. Additionally, the maximum level of undead you can control with bind undead increases by 1.",
                  source: "Book of the Dead", isPremium: true),

            .make("Undead Horde", level: 6, featType: "Archetype",
                  traits: "Archetype",
                  prerequisites: "Undead Master Dedication",
                  summary: "You can maintain control over multiple undead creatures simultaneously.",
                  benefit: "You can control multiple undead at once. You can have up to 2 undead minions bound with bind undead at the same time. When you Command Undead, you can command all of your minions with a single action, but each minion can only use 1 action.",
                  source: "Book of the Dead", isPremium: true),

            .make("Necromantic Resilience", level: 8, featType: "Archetype",
                  traits: "Archetype",
                  prerequisites: "Undead Master Dedication",
                  summary: "Your familiarity with undeath grants you resistance to negative energy.",
                  benefit: "Your constant exposure to necromantic energy has hardened your life force. You gain resistance to negative damage equal to half your level. Additionally, you gain a +1 circumstance bonus to saving throws against effects with the death trait.",
                  source: "Book of the Dead", isPremium: true),

            // Reanimator Archetype
            .make("Reanimator Dedication", level: 2, featType: "Archetype",
                  traits: "Archetype, Dedication",
                  prerequisites: "Able to cast animate dead or a similar spell",
                  summary: "You specialize in creating and enhancing undead creatures.",
                  benefit: "You have studied the art of reanimation extensively. Undead creatures you create with animate dead gain a +1 status bonus to attack rolls and 2 additional Hit Points per level. Additionally, the duration of your animate dead spells increases to 10 minutes when not sustained.",
                  source: "Book of the Dead", isPremium: true),

            .make("Shambling Servitor", level: 4, featType: "Archetype",
                  traits: "Archetype",
                  prerequisites: "Reanimator Dedication",
                  summary: "You can create a permanent undead servant.",
                  benefit: "You can spend 1 hour performing a special necromantic ritual to create a permanent undead servitor from a corpse. This servitor is a zombie or skeleton of a level equal to your level minus 4 (minimum level -1). It gains the minion trait and follows your commands. You can have only one shambling servitor at a time. If you create a new one, the old one collapses into inert remains.",
                  source: "Book of the Dead", isPremium: true),

            .make("Enhanced Reanimation", level: 6, featType: "Archetype",
                  traits: "Archetype",
                  prerequisites: "Reanimator Dedication",
                  summary: "Your undead creations are significantly more powerful than normal.",
                  benefit: "Your reanimated undead are infused with greater necromantic power. Undead you create with animate dead gain a +2 status bonus to attack rolls (replacing the +1 from Reanimator Dedication), gain resistance 5 to positive damage, and deal an additional 1d6 negative damage with their Strikes. Your shambling servitor, if you have one, also gains these benefits.",
                  source: "Book of the Dead", isPremium: true),

            // Undead Investigator Archetype
            .make("Undead Investigator Dedication", level: 2, featType: "Archetype",
                  traits: "Archetype, Dedication",
                  prerequisites: "Trained in Religion or Occultism",
                  summary: "You specialize in investigating and understanding undead threats.",
                  benefit: "You've dedicated your investigative skills to understanding the undead. You gain a +2 circumstance bonus to Recall Knowledge checks about undead creatures, haunts, and necromantic effects. You can use Religion or Occultism instead of the typical skill for Recall Knowledge about any undead creature. Additionally, when you successfully Recall Knowledge about an undead creature, you learn one of its resistances or weaknesses in addition to the normal information.",
                  source: "Book of the Dead", isPremium: true),

            .make("Sense the Dead", level: 4, featType: "Archetype",
                  traits: "Archetype, Detection, Divine",
                  prerequisites: "Undead Investigator Dedication",
                  summary: "You can sense the presence of undead creatures within 60 feet.",
                  benefit: "You gain an innate sense for the presence of undead. You can detect undead creatures within 60 feet as an imprecise sense. This doesn't reveal the exact location, identity, or number of undead, only their general presence and direction. This sense is constantly active and doesn't require an action to use. Powerful undead (those 4 or more levels above you) are detected at 120 feet instead.",
                  source: "Book of the Dead", isPremium: true),

            .make("Exploit Undead Vulnerability", level: 6, featType: "Archetype",
                  traits: "Archetype",
                  prerequisites: "Undead Investigator Dedication",
                  summary: "You can exploit an undead creature's weaknesses after identifying them.",
                  benefit: "When you successfully Recall Knowledge about an undead creature and learn one of its weaknesses, you can share this knowledge with allies within 30 feet as a free action. For 1 minute, you and those allies deal additional damage of the appropriate type equal to 2 + half your level when Striking that creature, provided the Strike's damage type matches or bypasses the weakness. You can use this ability once per creature per day.",
                  source: "Book of the Dead", isPremium: true),

            .make("Consecrated Strike", level: 8, featType: "Archetype",
                  traits: "Archetype, Divine, Positive",
                  prerequisites: "Undead Investigator Dedication",
                  requirements: "You are wielding a weapon or unarmed attack",
                  summary: "You channel positive energy through your attacks against undead.",
                  benefit: "You infuse your weapon with positive energy. For 1 minute, your Strikes deal an additional 1d6 positive damage against undead creatures. Against undead that are vulnerable to positive damage, this increases to 2d6. You can use this ability a number of times per day equal to your Wisdom modifier (minimum 1).",
                  source: "Book of the Dead", isPremium: true),

            .make("Spirit Sight", level: 10, featType: "Archetype",
                  traits: "Archetype, Divine, Divination",
                  prerequisites: "Undead Investigator Dedication",
                  summary: "You can see invisible and ethereal undead.",
                  benefit: "Your experience with the undead has granted you the ability to perceive what others cannot. You gain the ability to see invisible and ethereal undead creatures as though they were visible. Incorporeal undead don't gain the benefit of being concealed against your Strikes. Additionally, you gain a +2 circumstance bonus to saves against possession effects.",
                  source: "Book of the Dead", isPremium: true),
        ]

        for feat in feats {
            try await db.insertFeat(feat)
        }
    }
}
