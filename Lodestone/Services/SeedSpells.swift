import Foundation

extension SeedDataBuilder {
    func seedSpells() async throws {
        let spells: [SpellEntry] = [

            // MARK: - Rank 1 Cantrips (Player Core)
            .make("Acid Splash", rank: 1, traditions: "arcane, primal", actions: "2 actions",
                  traits: "Attack, Acid, Cantrip, Evocation",
                  range: "30 feet", targets: "1 creature",
                  summary: "You splash a glob of acid that leaves residual acid on your foe.",
                  desc: "You splash a glob of acid that leaves residual acid on your foe. Make a spell attack roll. On a hit, you deal 1d6 acid damage plus 1 persistent acid damage. On a critical hit, you deal double damage and double the persistent acid damage.",
                  heightened: "(3rd) The initial damage increases to 1d6, and the persistent acid damage increases to 2. (5th) The initial damage increases to 2d6, and the persistent acid damage increases to 3. (7th) The initial damage increases to 3d6, and the persistent acid damage increases to 4. (9th) The initial damage increases to 4d6, and the persistent acid damage increases to 5.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Daze", rank: 1, traditions: "arcane, divine, occult", actions: "2 actions",
                  traits: "Cantrip, Enchantment, Mental, Nonlethal",
                  range: "60 feet", targets: "1 creature",
                  duration: "1 round", savingThrow: "Will",
                  summary: "You strike the target's mind with a mental blow.",
                  desc: "You strike the target's mind with a mental blow, so intense it makes them dizzy. The target must attempt a Will save. On a critical failure, the target is stunned 1. On a failure, the target takes 1d6 mental damage and is off-guard until the start of your next turn. On a success, the target takes 1d6 mental damage. On a critical success, the target is unaffected.",
                  heightened: "(+2) The damage increases by 1d6.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Detect Magic", rank: 1, traditions: "arcane, divine, occult, primal", actions: "2 actions",
                  traits: "Cantrip, Detection, Divination",
                  area: "30-foot emanation", duration: "Sustained up to 1 minute",
                  summary: "You send out a pulse that registers the presence of magic.",
                  desc: "You send out a pulse that registers the presence of magic. You sense whether any active spells or magic items are within the area when you Cast this Spell. If you detect magic, you can use the Seek action to pinpoint the source. Magic items, active spells, and areas permanently suffused with magic register as magical.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Electric Arc", rank: 1, traditions: "arcane, primal", actions: "2 actions",
                  traits: "Cantrip, Electricity, Evocation",
                  range: "30 feet", targets: "1 or 2 creatures",
                  savingThrow: "basic Reflex",
                  summary: "An arc of lightning leaps from one target to another.",
                  desc: "An arc of lightning leaps from one target to another. You deal 1d4 electricity damage to each target. If you target 2 creatures, they must be within 30 feet of each other.",
                  heightened: "(+1) The damage increases by 1d4.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Produce Flame", rank: 1, traditions: "arcane, primal", actions: "2 actions",
                  traits: "Attack, Cantrip, Evocation, Fire",
                  range: "30 feet", targets: "1 creature",
                  summary: "A small ball of flame appears in your palm.",
                  desc: "A small ball of flame appears in your palm, and you hurl it at your foe. Make a spell attack roll. On a hit, the target takes 1d4 fire damage plus 1 persistent fire damage. On a critical hit, the damage is doubled, and the persistent fire damage is doubled.",
                  heightened: "(+1) Increase the initial damage by 1d4 and the persistent damage by 1.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Stabilize", rank: 1, traditions: "divine, primal", actions: "2 actions",
                  traits: "Cantrip, Healing, Necromancy, Positive",
                  range: "30 feet", targets: "1 dying creature",
                  summary: "Positive energy shuts death's door.",
                  desc: "Positive energy shuts death's door. The target loses the dying condition, though it remains unconscious. This spell doesn't heal the creature.",
                  source: "Player Core Handbook", isPremium: false),

            // MARK: - Rank 1 Spells
            .make("Alarm", rank: 1, traditions: "arcane, divine, occult, primal", actions: "10 minutes",
                  traits: "Abjuration",
                  area: "20-foot burst", duration: "8 hours",
                  summary: "You ward an area against intrusion.",
                  desc: "You ward an area against intrusion. When you cast this spell, you specify a password. Creatures that enter the area without speaking the password trigger the alarm. When the alarm triggers, you are mentally alerted (even if you are asleep, though not if you're unconscious), and you can choose whether the alarm also rings audibly.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Charm", rank: 1, traditions: "arcane, divine, occult, primal", actions: "2 actions",
                  traits: "Emotion, Enchantment, Mental",
                  range: "30 feet", targets: "1 creature",
                  duration: "1 hour", savingThrow: "Will",
                  summary: "You make a creature regard you as a friend.",
                  desc: "You make a creature regard you as a trusted friend and ally. Attempt a Deception or Diplomacy check (your choice) against the target's Will DC. If the target is currently being threatened by you or your allies, you take a -2 circumstance penalty to this check. On a failure, the target is unaffected and knows you tried to charm it. On a success, the target is charmed by you.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Fear", rank: 1, traditions: "arcane, divine, occult, primal", actions: "2 actions",
                  traits: "Emotion, Enchantment, Fear, Mental",
                  range: "30 feet", targets: "1 creature",
                  duration: "varies", savingThrow: "Will",
                  summary: "You plant fear in the target.",
                  desc: "You plant fear in the target; it must attempt a Will save. On a critical failure, the target is frightened 3. On a failure, the target is frightened 2. On a success, the target is frightened 1. On a critical success, the target is unaffected.",
                  heightened: "(3rd) You can target up to 5 creatures.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Heal", rank: 1, traditions: "divine, primal", actions: "1 to 3 actions",
                  traits: "Healing, Necromancy, Positive",
                  range: "varies", targets: "1 willing living creature or 1 undead",
                  summary: "You pour positive energy into a creature to heal its wounds.",
                  desc: "You channel positive energy to heal the living or harm the undead. With 1 action, you restore 1d8 hit points (touching the target). With 2 actions, you restore 1d8 hit points at a range of 30 feet. With 3 actions, you restore 1d8 hit points to all living creatures in a 30-foot emanation. Undead instead take that amount as damage (basic Will).",
                  heightened: "(+1) The healing increases by 1d8.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Magic Missile", rank: 1, traditions: "arcane, occult", actions: "1 to 3 actions",
                  traits: "Evocation, Force",
                  range: "120 feet", targets: "1 creature",
                  summary: "You send a dart of force streaking toward a creature.",
                  desc: "You send a dart of force streaking toward a creature that you can see. It automatically hits and deals 1d4+1 force damage. For each additional action you use when Casting the Spell, increase the number of missiles by 1. You choose a target for each missile individually.",
                  heightened: "(+2) The number of missiles increases by 1.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Mending", rank: 1, traditions: "arcane, divine, occult, primal", actions: "10 minutes",
                  traits: "Transmutation",
                  range: "touch", targets: "1 non-magical object",
                  summary: "You repair a damaged item.",
                  desc: "You repair a damaged item, restoring 5 Hit Points to the target object. This spell can't restore Hardness to a damaged object. It also can't repair more than 5 Hit Points per casting.",
                  heightened: "(2nd) You restore 15 Hit Points. (3rd) You restore 30 Hit Points.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Ray of Enfeeblement", rank: 1, traditions: "arcane, divine, occult", actions: "2 actions",
                  traits: "Attack, Necromancy",
                  range: "30 feet", targets: "1 living creature",
                  duration: "varies", savingThrow: "Fortitude",
                  summary: "A ray of negative energy weakens a creature.",
                  desc: "A ray of negative energy saps the strength from your target. Make a spell attack roll. On a hit, the target is enfeebled 1 for 1 minute. On a critical hit, the target is enfeebled 2 for 1 minute.",
                  source: "Player Core Handbook", isPremium: false),

            // MARK: - Rank 2 Spells
            .make("Invisibility", rank: 2, traditions: "arcane, occult", actions: "2 actions",
                  traits: "Illusion",
                  range: "touch", targets: "1 creature",
                  duration: "10 minutes",
                  summary: "Cloaked in illusion, the target becomes invisible.",
                  desc: "Cloaked in illusion, the target becomes invisible. This makes it undetected to all creatures, though the creatures can attempt to find the target, making it hidden to them instead. The spell ends if the creature uses a hostile action.",
                  heightened: "(4th) The duration increases to 1 minute, and the spell doesn't end if the target uses a hostile action.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Mirror Image", rank: 2, traditions: "arcane, occult", actions: "2 actions",
                  traits: "Illusion, Visual",
                  duration: "1 minute",
                  summary: "Three illusory images of you swirl about your space.",
                  desc: "Three illusory images of you swirl about your space, potentially causing those trying to attack you to strike one of the images instead. The images occupy your space and move with you. When you are targeted by an attack, roll 1d4 to determine whether one of the images is hit instead. On a 1, the attack hits you normally. On a 2–4, the attack hits an image and destroys it.",
                  source: "Player Core Handbook", isPremium: false),

            // MARK: - Rank 3 Spells
            .make("Fireball", rank: 3, traditions: "arcane, primal", actions: "2 actions",
                  traits: "Evocation, Fire",
                  range: "500 feet", area: "20-foot burst",
                  savingThrow: "basic Reflex",
                  summary: "A roiling ball of fire explodes in the target area.",
                  desc: "A roiling ball of fire explodes in the target area, dealing 6d6 fire damage to each creature caught in the blast.",
                  heightened: "(+1) The damage increases by 2d6.",
                  source: "Player Core Handbook", isPremium: false),

            .make("Haste", rank: 3, traditions: "arcane, occult, primal", actions: "2 actions",
                  traits: "Transmutation",
                  range: "30 feet", targets: "1 creature",
                  duration: "1 minute",
                  summary: "Magic empowers the target to act faster.",
                  desc: "Magic empowers the target to act faster. The target gains the quickened condition and can use the extra action each round only for Strike and Stride actions.",
                  heightened: "(7th) You can target up to 6 creatures.",
                  source: "Player Core Handbook", isPremium: false),

            // MARK: - Rank 4 Spells
            .make("Dimension Door", rank: 4, traditions: "arcane, occult", actions: "2 actions",
                  traits: "Conjuration, Teleportation",
                  range: "120 feet",
                  summary: "You teleport yourself up to 120 feet.",
                  desc: "You teleport yourself instantly to a clear space within range that you can see. You can bring along worn or held items, up to your maximum Bulk. If your destination is a solid object, the spell fails.",
                  heightened: "(5th) The range increases to 1 mile, and the destination doesn't have to be in your line of sight (but you must have been there or have a precise description).",
                  source: "Player Core Handbook", isPremium: false),

            // MARK: - Rank 5 Spells
            .make("Cone of Cold", rank: 5, traditions: "arcane, primal", actions: "2 actions",
                  traits: "Cold, Evocation",
                  area: "60-foot cone",
                  savingThrow: "basic Reflex",
                  summary: "A cone of freezing air blasts out from your outstretched hand.",
                  desc: "A cone of freezing air blasts from your outstretched hand, dealing 12d6 cold damage to creatures in the area.",
                  heightened: "(+1) The damage increases by 2d6.",
                  source: "Player Core Handbook", isPremium: false),

            // MARK: - Rank 7 Spells
            .make("Finger of Death", rank: 7, traditions: "divine, primal", actions: "2 actions",
                  traits: "Death, Necromancy",
                  range: "30 feet", targets: "1 living creature",
                  savingThrow: "Fortitude",
                  summary: "You point your finger at the target and speak a necromantic syllable that disrupt its life force.",
                  desc: "You point your finger and overwhelm the target with negative energy. The target takes 70 negative damage. On a critical hit (failure of the Fortitude save), the target is killed outright if it had less than 75 Hit Points remaining.",
                  heightened: "(+1) The damage increases by 10.",
                  source: "Player Core Handbook", isPremium: false),
        ]

        for spell in spells {
            try await db.insertSpell(spell)
        }
    }
}
