import Foundation

extension SeedDataBuilder {
    func seedClasses() async throws {
        let classes: [ClassEntry] = [

            .make("Alchemist", keyAbility: "Intelligence", hp: 8,
                  fort: "Expert", ref: "Expert", will: "Trained",
                  skills: "Crafting, plus 3 + Intelligence modifier",
                  features: "Infused Reagents (1), Alchemical Crafting (1), Quick Alchemy (1), Field Discovery (1), Perpetual Infusions (7), Alchemical Alacrity (11)",
                  summary: "You are a master of manipulating the building blocks of reality.",
                  desc: "There's no sight more beautiful to you than a strange brew bubbling in a beaker, and you consume your ingenious elixirs with abandon. You're fascinated by alchemical formulas and the transformation of mundane materials into something far more potent.",
                  isPremium: false),

            .make("Barbarian", keyAbility: "Strength", hp: 12,
                  fort: "Expert", ref: "Trained", will: "Expert",
                  skills: "Athletics, plus 3 + Intelligence modifier",
                  features: "Rage (1), Instinct (1), Anathema (1), Deny Advantage (3), Weapon Fury (5), Indomitable Will (7), Juggernaut (9)",
                  summary: "You harness the raw power of emotion and physical might.",
                  desc: "Rage consumes you in battle. You delight in simplicity and strength, provided the strength is yours. You may or may not have restraint outside of your rages, but the rage itself is your greatest power.",
                  isPremium: false),

            .make("Bard", keyAbility: "Charisma", hp: 8,
                  fort: "Trained", ref: "Trained", will: "Expert",
                  skills: "Occultism, Performance, plus 4 + Intelligence modifier",
                  features: "Muse (1), Occult Spellcasting (1), Composition Spells (1), Inspire Courage (1), Inspire Defense (1), Occult Breadth (8)",
                  summary: "You are a performer with a knack for magic.",
                  desc: "You are a multitalented performer who excels in magic tied to art and emotion. Whether a skaald recounting the deeds of heroes, a jester lacing comedy with magical jabs, or a diva whose songs make the soul ache, you use music, drama, and aesthetics to harness powerful magic.",
                  isPremium: false),

            .make("Champion", keyAbility: "Strength or Dexterity", hp: 10,
                  perception: "Trained", fort: "Expert", ref: "Trained", will: "Expert",
                  skills: "Religion, plus 2 + Intelligence modifier",
                  features: "Cause & Anathema (1), Champion's Code (1), Deific Weapon (1), Champion's Reaction (1), Shield Block (1), Divine Ally (3), Weapon Expertise (5), Armor Expertise (7)",
                  summary: "You are a devoted champion of a deity.",
                  desc: "Chosen by a deity and imbued with divine power, you uphold a divine code and serve as a conduit for your deity's will. You are the embodiment of your deity's ideals.",
                  isPremium: false),

            .make("Cleric", keyAbility: "Wisdom", hp: 8,
                  fort: "Trained", ref: "Trained", will: "Expert",
                  skills: "Religion, plus 2 + Intelligence modifier",
                  features: "Deity (1), Divine Font (1), Doctrine (1), Divine Spellcasting (1), Divine Defense (1), Resolve (13)",
                  summary: "A cleric is a vessel for divine power.",
                  desc: "Deities work their will upon the world in infinite ways, and you serve as one of their most stalwart mortal servants. Blessed with divine magic, you live the ideals of your faith, adorn yourself with the symbols of your church, and train diligently to wield your deity's favored weapon.",
                  isPremium: false),

            .make("Druid", keyAbility: "Wisdom", hp: 8,
                  fort: "Trained", ref: "Trained", will: "Expert",
                  skills: "Nature, plus 2 + Intelligence modifier",
                  features: "Druidic Order (1), Anathema (1), Primal Spellcasting (1), Shield Block (1), Wild Empathy (1), Verdant Metamorphosis (13)",
                  summary: "You are a champion of the natural world.",
                  desc: "The power of nature is impossible to resist. It can bring ruin to the stoutest fortress in minutes, reduce the mightiest army to fear with the force of wind and wave, and destroy the grandest dreams of mortals.",
                  isPremium: false),

            .make("Fighter", keyAbility: "Strength or Dexterity", hp: 10,
                  perception: "Expert", fort: "Expert", ref: "Expert", will: "Trained",
                  skills: "Acrobatics or Athletics, plus 3 + Intelligence modifier",
                  features: "Attack of Opportunity (1), Shield Block (1), Bravery (3), Fighter Weapon Mastery (5), Battlefield Surveyor (7), Weapon Specialization (7), Combat Flexibility (9), Juggernaut (11)",
                  summary: "You are a warrior committed to mastering the art of battle.",
                  desc: "Fighting for honor, fame, or simple hard coin, fighters are unparalleled in their training with weapons and armor. A fighter's unmatched skill is a source of pride, often making them arrogant enough to take on anyone in a duel.",
                  isPremium: false),

            .make("Monk", keyAbility: "Strength or Dexterity", hp: 10,
                  perception: "Trained", fort: "Expert", ref: "Expert", will: "Expert",
                  skills: "Acrobatics, Athletics, plus 4 + Intelligence modifier",
                  features: "Flurry of Blows (1), Powerful Fist (1), Path to Perfection (3), Metal Strikes (9), Perfected Form (19)",
                  summary: "A monk is a master of unarmed combat.",
                  desc: "The strength of your fist flows from your mind and spirit. You seek perfection—honing your body into a flawless instrument and your mind into an orderly system.",
                  isPremium: false),

            .make("Ranger", keyAbility: "Strength or Dexterity", hp: 10,
                  perception: "Expert", fort: "Expert", ref: "Expert", will: "Trained",
                  skills: "Nature, Survival, plus 4 + Intelligence modifier",
                  features: "Hunt Prey (1), Hunter's Edge (1), Trackless Step (5), Master Spotter (9), Second Skin (13), Swift Prey (15)",
                  summary: "You are a skilled hunter who uses nature to hunt foes.",
                  desc: "Some heroes stride into danger armored in faith, or puffed up with civic pride. Others rely on training, or on ancient bloodlines, or on the fickle favor of the gods. You choose a different path: you look to nature and the wild.",
                  isPremium: false),

            .make("Rogue", keyAbility: "Dexterity or other", hp: 8,
                  perception: "Expert", fort: "Trained", ref: "Expert", will: "Expert",
                  skills: "Stealth, plus 7 + Intelligence modifier",
                  features: "Sneak Attack (1), Surprise Attack (1), Racket (1), Deny Advantage (3), Weapon Tricks (5), Evasion (7), Improved Evasion (15)",
                  summary: "You are a scoundrel who uses cunning and deception.",
                  desc: "You are skilled and opportunistic. Using your wits, you can get in and out of trouble that would leave other people in the dust. As a rogue, you might be a criminal, a licensed thief, a spy, or a detective.",
                  isPremium: false),

            .make("Sorcerer", keyAbility: "Charisma", hp: 6,
                  fort: "Trained", ref: "Trained", will: "Expert",
                  skills: "plus 2 + Intelligence modifier",
                  features: "Bloodline (1), Arcane/Occult/Primal/Divine Evolution (5), Bloodline Breadth (8), Greater Bloodline (12)",
                  summary: "You are a sorcerer with innate magical power.",
                  desc: "You didn't choose to become a spellcaster—you were born one. There's magic in your blood, whether a divinity touched one of your ancestors, a forebear made a deal with a devil, or something stranger happened.",
                  isPremium: false),

            .make("Wizard", keyAbility: "Intelligence", hp: 6,
                  fort: "Trained", ref: "Trained", will: "Expert",
                  skills: "Arcana, plus 2 + Intelligence modifier",
                  features: "Arcane School (1), Arcane Bond (1), Arcane Spellcasting (1), Arcane Thesis (1), Spell Blending/Study (1), Expert Spellcaster (7), Master Spellcaster (15)",
                  summary: "A wizard studies arcane magic through books and intense practice.",
                  desc: "You are an eternal student of the arcane secrets of the universe, using your mastery of magic to cast powerful and devastating spells. You treat magic like a science, cross-referencing the latest texts on practical spellcraft with ancient tomes to discover and understand how magic works.",
                  isPremium: false),
        ]

        for cls in classes {
            try await db.insertClass(cls)
        }
    }
}
