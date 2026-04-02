import Foundation

extension SeedDataBuilder {
    func seedUltimateCombat() async throws {
        try await seedUCClasses()
        try await seedUCFeats()
    }

    private func seedUCClasses() async throws {
        let classes: [ClassEntry] = [

            // MARK: - Ultimate Combat Classes

            .make("Gunslinger",
                  hitDie: "d10",
                  skillRanks: 4,
                  bab: "Full",
                  fort: "Good",
                  ref: "Good",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Bluff", "Climb", "Craft",
                      "Handle Animal", "Heal", "Intimidate",
                      "Knowledge (engineering)", "Knowledge (local)",
                      "Perception", "Profession", "Ride",
                      "Sleight of Hand", "Survival", "Swim"
                  ],
                  summary: "A daring gunfighter who uses grit and daring deeds to master firearms.",
                  desc: """
                  In a land where magic is a daily occurrence, the crack of black powder can still be heard, and those who master the mystery of the firearm are a unique breed. Gunslingers are a bold and brash lot, using black powder weapons to devastating effect in their never-ending war with the world.

                  The gunslinger's signature resource is grit — a measure of their daring and fighting spirit, equal to their Wisdom modifier. Grit is spent to fuel deeds, special combat maneuvers unique to the gunslinger. Grit is regained by killing blows against significant foes and by confirming critical hits. Managing grit carefully is the key to the gunslinger's survival.

                  Deeds are the heart of the gunslinger class and include abilities like Deadeye (reduce range penalties for touch attacks), Gunslinger's Dodge (step aside from attacks as an immediate action), Targeting (impose penalties on enemies), and at high levels, Menacing Shot and Stunning Shot. Gunslingers also gain Gunsmithing as a bonus feat and start play with a battered pistol at no cost.
                  """,
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Ninja",
                  hitDie: "d8",
                  skillRanks: 4,
                  bab: "Medium",
                  fort: "Poor",
                  ref: "Good",
                  will: "Poor",
                  classSkills: [
                      "Acrobatics", "Appraise", "Bluff", "Climb", "Craft",
                      "Diplomacy", "Disable Device", "Disguise",
                      "Escape Artist", "Intimidate", "Knowledge (local)",
                      "Knowledge (nobility)", "Linguistics", "Perception",
                      "Perform", "Profession", "Sense Motive",
                      "Sleight of Hand", "Stealth", "Swim",
                      "Use Magic Device"
                  ],
                  summary: "A shadowy operative who combines sneak attacks with ki-powered tricks.",
                  desc: """
                  Ninjas are stealthy martial artists who blend the rogue's cunning with the monk's ki mastery. Where rogues rely on skill and sneak attacks, ninjas combine these with supernatural ki abilities, poisons, and exotic techniques honed in clandestine training. They are assassins, spies, and infiltrators of the highest order.

                  The ninja's ki pool (based on Charisma) fuels special tricks and abilities. Unlike the monk's ki, the ninja's pool powers deceptive, deadly maneuvers: ninja tricks include abilities like the rogue's talents, plus unique options such as Vanishing Trick (become invisible as a swift action), Forgotten Trick (recall a trick you don't know), and Deadly Range (extend sneak attack range).

                  Ninjas gain Sneak Attack like rogues (progressing at 1d6 per two levels), Improved Uncanny Dodge to prevent flanking, No Trace (increasing bonuses to stealth and survival checks against tracking), and at 10th level, access to Master Tricks — powerful abilities including high-level deceptions and supernatural combat maneuvers.
                  """,
                  source: "Ultimate Combat",
                  isPremium: true),
        ]

        for cls in classes {
            try await db.insertClass(cls)
        }
    }

    private func seedUCFeats() async throws {
        let feats: [FeatEntry] = [

            // MARK: - Ultimate Combat Feats (all isPremium: true)

            .make("Abundant Ammunition",
                  featType: "General",
                  prerequisites: "Caster level 1st or Craft (bows) or Craft (weapons) 1 rank",
                  benefit: "Once per day as a move action, you can produce 10 pieces of normal ammunition (arrows, bolts, bullets, or sling stones) from thin air. This ammunition is nonmagical and disappears after 24 hours.",
                  summary: "Once per day, produce 10 pieces of normal ammunition as a move action.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Ace Firearms",
                  featType: "Combat",
                  prerequisites: "Dex 13, Point-Blank Shot, Precise Shot, BAB +1",
                  benefit: "You gain a +1 bonus on ranged attack rolls and ranged damage rolls made with firearms. This bonus increases to +2 at BAB +6, +3 at BAB +11, and +4 at BAB +16.",
                  summary: "+1 to ranged attack and damage with firearms, scaling with BAB.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Adder Strike",
                  featType: "Combat",
                  prerequisites: "Craft (alchemy) 1 rank, Improved Unarmed Strike, Poison Use class feature",
                  benefit: "As a swift action before making an unarmed strike, you can apply an injury or contact poison to your fist or other natural weapon. The poison is delivered on a successful hit.",
                  summary: "Apply a contact or injury poison to your unarmed strike as a swift action.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Amateur Gunslinger",
                  featType: "General",
                  prerequisites: "No levels in a class that grants the grit class feature",
                  benefit: "You gain 1 grit point and two 1st-level gunslinger deeds of your choice. You can use these deeds as long as you have at least 1 grit point, and you regain grit as a gunslinger does.",
                  summary: "Gain 1 grit point and two 1st-level gunslinger deeds without being a gunslinger.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Arc Slinger",
                  featType: "Combat",
                  prerequisites: "Point-Blank Shot, proficiency with a sling",
                  benefit: "When using a sling, reduce the penalty for shooting into melee by 4. Additionally, when using a sling at point-blank range, you deal +1 damage.",
                  summary: "Reduce shooting-into-melee penalty by 4 with slings; +1 damage at point-blank range.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Armed Bravery",
                  featType: "Combat",
                  prerequisites: "Bravery class feature, Combat Expertise",
                  benefit: "Add your bravery bonus to your Will saves against enchantment effects in addition to its normal benefits against fear effects.",
                  summary: "Apply your fighter's bravery bonus to Will saves against enchantments.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Armored Master",
                  featType: "Combat",
                  prerequisites: "Armor training class feature",
                  benefit: "In addition to the normal benefits of armor training, reduce the armor check penalty of any armor you are proficient with by an additional 1 point.",
                  summary: "Reduce armor check penalties by 1 additional point beyond the normal armor training benefit.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Backswing",
                  featType: "Combat",
                  prerequisites: "Str 13, Power Attack, Two-Weapon Fighting, BAB +6",
                  benefit: "When making a full attack, add double your Strength bonus to damage rolls made with your off-hand weapon on any attacks after the first.",
                  summary: "Add double Strength bonus to damage on off-hand attacks after the first in a full attack.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Betrayer",
                  featType: "Combat",
                  prerequisites: "BAB +1",
                  benefit: "Against flat-footed opponents, you can make sneak attacks even if they have already acted in the current round. You must otherwise qualify to make a sneak attack (such as having the sneak attack class feature).",
                  summary: "Sneak attack flat-footed opponents even if they have already acted this round.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Bodyguard",
                  featType: "Combat",
                  prerequisites: "Combat Reflexes",
                  benefit: "When an adjacent ally is targeted by an attack, you can use an attack of opportunity to attempt to deflect that attack. If you succeed, your ally gains a +2 shield bonus to AC against that specific attack. Activating this feat is an immediate action triggered by the attack.",
                  summary: "Use an AoO as an immediate action to add +2 shield bonus to an adjacent ally's AC against one attack.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Boar Ferocity",
                  featType: "Combat",
                  prerequisites: "Str 13, Boar Style, Improved Unarmed Strike, Intimidate 6 ranks",
                  benefit: "While using Boar Style, add your rend damage to your unarmed strike damage. After hitting with your rend attack, you can make an Intimidate check to demoralize the rend target as a free action.",
                  summary: "Apply rend damage with Boar Style and demoralize the target as a free action.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Boar Style",
                  featType: "Combat",
                  prerequisites: "Improved Unarmed Strike, Intimidate 3 ranks",
                  benefit: "You can deal piercing damage with your unarmed strike in addition to bludgeoning. While using this style, when you hit the same target with two unarmed strikes in the same round, you cause the target to bleed for 1d6 points of damage per round until the bleeding is stopped.",
                  summary: "Unarmed strikes deal piercing damage and cause 1d6 bleed on two hits in a round.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Breaking Blow",
                  featType: "Combat",
                  prerequisites: "Str 13, Power Attack",
                  benefit: "When attacking an object or making a sunder attempt, double your Strength bonus to damage.",
                  summary: "Double your Strength bonus to damage when attacking objects or sundering.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Bull Rush Strike",
                  featType: "Combat",
                  prerequisites: "Str 13, Improved Bull Rush, Power Attack, BAB +9",
                  benefit: "Whenever you confirm a critical hit with a melee attack, you can perform a free bull rush attempt against the target as a free action. This bull rush does not provoke an attack of opportunity.",
                  summary: "Attempt a free bull rush against a target when you confirm a critical hit.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Cavalry Formation",
                  featType: "Combat",
                  prerequisites: "Mounted Combat",
                  benefit: "Your mount can occupy the same space as other mounts ridden by creatures that also have this feat without penalty. You can charge through squares occupied by such mounts.",
                  summary: "Your mount can share space with other mounts ridden by allies who have this feat.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Charge Through",
                  featType: "Combat",
                  prerequisites: "Str 13, Power Attack, Improved Overrun, BAB +1",
                  benefit: "When making a charge, you can attempt to overrun one creature in the path of your charge as a free action. This overrun does not provoke an attack of opportunity. If you fail the overrun, your charge ends.",
                  summary: "Attempt a free overrun during a charge without provoking AoOs.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Chokehold",
                  featType: "Combat",
                  prerequisites: "Improved Grapple, Improved Unarmed Strike, Medusa's Wrath or BAB +6",
                  benefit: "When grappling, you can pin an opponent with one arm and choke them with the other. A choked foe takes nonlethal damage equal to your unarmed strike damage each round and becomes staggered for 1 round (Fortitude negates stagger).",
                  summary: "While grappling, choke the target to deal nonlethal damage and stagger them.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Close-Quarters Thrower",
                  featType: "Combat",
                  prerequisites: "Dex 13, Dodge, Point-Blank Shot",
                  benefit: "You do not provoke attacks of opportunity when throwing a thrown weapon into a square threatened by an opponent.",
                  summary: "No attacks of opportunity when throwing into a threatened square.",
                  source: "Ultimate Combat",
                  isPremium: true),

            .make("Clustered Shots",
                  featType: "Combat",
                  prerequisites: "Point-Blank Shot, Precise Shot, BAB +6",
                  benefit: "When you use a full-attack action and make multiple ranged attacks, total the damage from all hits before applying damage reduction. This effectively allows you to overcome damage reduction with volume of fire.",
                  summary: "Total all ranged damage from a full attack before applying the target's damage reduction once.",
                  source: "Ultimate Combat",
                  isPremium: true),
        ]

        for feat in feats {
            try await db.insertFeat(feat)
        }
    }
}

// MARK: - FeatEntry factory (UC)
private extension FeatEntry {
    static func make(
        _ title: String,
        featType: String,
        prerequisites: String,
        benefit: String,
        normal: String = "",
        special: String = "",
        summary: String,
        source: String = "Core Rulebook",
        isPremium: Bool = false
    ) -> FeatEntry {
        FeatEntry(
            id: seededUUID(title + source),
            title: title,
            summary: summary,
            isPremium: isPremium,
            prerequisites: prerequisites,
            benefit: benefit,
            normal: normal,
            special: special,
            featType: featType,
            source: source
        )
    }
}

// MARK: - ClassEntry factory (UC)
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
