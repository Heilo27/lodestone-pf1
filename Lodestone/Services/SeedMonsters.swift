import Foundation

extension SeedDataBuilder {
    func seedMonsters() async throws {
        let monsters: [MonsterEntry] = [

            // MARK: - Monster Core (premium)
            .make("Goblin Warrior", level: -1,
                  creatureType: "Humanoid", size: "Small",
                  traits: "Goblin, Humanoid",
                  hp: "6", ac: 16, fort: 5, ref: 5, will: 3,
                  speed: "25 feet",
                  attacks: "Dogslicer +7 (1d6 slashing; Agile, Backstabber, Finesse)",
                  specialAbilities: "Darkvision",
                  summary: "Goblins who have some combat experience taunt and distract their foes.",
                  desc: "Goblins who have some experience raiding and fighting are quick to taunt and distract their foes. Their small stature makes them hard to pin down in combat.",
                  source: "Monster Core", isPremium: true),

            .make("Skeleton Guard", level: 0,
                  creatureType: "Undead", size: "Medium",
                  traits: "Mindless, Undead",
                  hp: "4 (negative healing)", ac: 16, fort: 4, ref: 6, will: 3,
                  speed: "25 feet",
                  attacks: "Fist +7 (1d4+1 bludgeoning) or Shortsword +7 (1d6+1 piercing; Agile, Versatile S)",
                  specialAbilities: "Darkvision; Immunities: death effects, disease, mental, paralyzed, poison, unconscious; Resistances: cold 5, electricity 5, fire 5, piercing 5, slashing 5",
                  summary: "Animated skeletons of humanoids, driven by a necromancer's will.",
                  desc: "These animated undead are the remains of humanoids brought back to serve as mindless guards. They are driven only by the will of their creator.",
                  source: "Monster Core", isPremium: true),

            .make("Ogre", level: 3,
                  creatureType: "Giant, Humanoid", size: "Large",
                  traits: "Giant, Humanoid",
                  hp: "50", ac: 17, fort: 10, ref: 5, will: 6,
                  speed: "35 feet",
                  attacks: "Greatclub +12 (2d6+7 bludgeoning; Backswing, Sweep)",
                  specialAbilities: "Low-Light Vision; Rock Catching",
                  summary: "Ogres are brutish giants who delight in mindless violence.",
                  desc: "Ogres are hulking brutes with a taste for humanoid flesh. They often work as mercenaries or bandits, raiding settlements for food and valuables.",
                  source: "Monster Core", isPremium: true),

            .make("Troll", level: 5,
                  creatureType: "Giant, Humanoid", size: "Large",
                  traits: "Giant, Humanoid",
                  hp: "115 (regeneration 15 [acid or fire])", ac: 20, fort: 16, ref: 11, will: 9,
                  speed: "30 feet",
                  attacks: "Jaws +15 (2d8+7 piercing), Claw +15 (1d10+7 slashing; Agile)",
                  specialAbilities: "Regeneration 15 (suppressed by acid or fire); Rend",
                  summary: "Trolls are regenerating giants that attack with vicious claws and a gaping maw.",
                  desc: "Trolls are infamous for their rapid regeneration, which makes them nearly impossible to kill unless burned or dissolved in acid. They are savage hunters that will eat almost anything.",
                  source: "Monster Core", isPremium: true),

            .make("Adult Red Dragon", level: 14,
                  creatureType: "Dragon", size: "Huge",
                  traits: "Dragon, Fire",
                  hp: "260", ac: 35, fort: 27, ref: 23, will: 25,
                  speed: "50 feet, fly 120 feet",
                  attacks: "Jaws +28 (3d10+14 piercing plus 3d6 fire; Reach 10 feet, Magical), Claw +28 (3d8+14 slashing; Agile, Magical, Reach 10 feet), Tail +26 (3d10+12 bludgeoning; Magical, Reach 20 feet)",
                  specialAbilities: "Darkvision; Smoke Vision; Breath Weapon (60-foot cone, 15d6 fire, basic Reflex DC 34, 1d4 rounds recharge); Draconic Frenzy; Frightful Presence (90 feet, DC 34 Will)",
                  summary: "Adult red dragons are fearsome engines of destruction who revel in their own power.",
                  desc: "Red dragons are the most covetous and evil of the chromatic dragons. Adult red dragons have reached a degree of power that makes them significant threats to entire regions. They typically lair in volcanic mountain peaks or other extremely hot locations.",
                  source: "Monster Core", isPremium: true),

            .make("Vampire Count", level: 7,
                  creatureType: "Undead", size: "Medium",
                  traits: "Undead, Vampire",
                  hp: "120 (negative healing; coffin bound)", ac: 26, fort: 14, ref: 17, will: 17,
                  speed: "25 feet",
                  attacks: "Jaws +17 (2d8+8 piercing plus Vampire Bite), Hand +17 (2d8+8 bludgeoning; Agile)",
                  specialAbilities: "Darkvision; Vampire Weaknesses (sunlight, running water, garlic, stake through heart); Drink Blood; Dominate; Children of the Night; Mist Form",
                  summary: "Vampire counts are powerful undead nobility who command legions of lesser undead.",
                  desc: "Vampire counts are aristocratic undead who have survived for centuries by feeding on humanoid blood. They maintain the appearance of life while directing the undead and other monsters from the shadows.",
                  source: "Monster Core", isPremium: true),
        ]

        for monster in monsters {
            try await db.insertMonster(monster)
        }
    }
}
