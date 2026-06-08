import Foundation

extension SeedDataBuilder {
    func seedFeatsH() async throws {
        try await db.insertFeat(
        .make("Morrigna's Wrappings",
                          featType: "General",
                          prerequisites: "Character level 9th, duskwalker, ward against corruption racial trait.",
                          benefit: "So long as you have a spider web wrapped around some part of your body, the bonus provided by your ward against corruption racial trait increases to +4.",
                          summary: "So long as you have a spider web wrapped around some part of your body, the bonus provided by your ward against corruption racial trait increases to +4.",
                          source: "Pathfinder #139: The Dead Road", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nosoi's Spiritsense",
                          featType: "General",
                          prerequisites: "Duskwalker.",
                          benefit: "You can cast detect undead as a spell-like ability at will. Your caster level for the purpose of this effect is equal to your character level.",
                          summary: "You can cast detect undead as a spell-like ability at will. Your caster level for the purpose of this effect is equal to your character level.",
                          source: "Pathfinder #139: The Dead Road", isPremium: true)
        )
        try await db.insertFeat(
        .make("Overseer of the House of Truth (Origin)",
                          featType: "General",
                          prerequisites: "Shabti.",
                          benefit: "You gain a second daily use of your suggestion spell-like ability. You gain a third daily use at 8th level, a fourth at 13th level, and a fifth at 16th level.",
                          summary: "You gain a second daily use of your suggestion spell-like ability. You gain a third daily use at 8th level, a fourth at 13th level, and a fifth at 16th level.",
                          source: "Pathfinder #139: The Dead Road", isPremium: true)
        )
        try await db.insertFeat(
        .make("Servant in the House of Truth (Origin)",
                          featType: "General",
                          prerequisites: "Shabti.",
                          benefit: "Whenever you attempt a check for a Knowledge skill in which you have ranks, you can roll the check twice and use the better of the two results.",
                          summary: "Whenever you attempt a check for a Knowledge skill in which you have ranks, you can roll the check twice and use the better of the two results.",
                          source: "Pathfinder #139: The Dead Road", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shoki's Argument",
                          featType: "General",
                          prerequisites: "Ability to cast disrupt undead, character level 3rd, duskwalker.",
                          benefit: "The damage dealt by your disrupt undead spell increases by 1d6. It increases by an additional 1d6 at 6th level and every 3 levels thereafter (to a maximum of 7d6 at 18th level).",
                          summary: "The damage dealt by your disrupt undead spell increases by 1d6. It increases by an additional 1d6 at 6th level and every 3 levels thereafter (to a maximum of 7d6 at 18th level).",
                          source: "Pathfinder #139: The Dead Road", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vanth's Scythe",
                          featType: "General",
                          prerequisites: "Character level 9th, duskwalker, ghost hunter racial trait.",
                          benefit: "When you use your ghost hunter racial trait to grant a scythe, quarterstaff, whip, or bow the ghost touch weapon special ability, you also grant the undead-bane weapon special ability. You also gain an additional daily use of ghost hunter.",
                          summary: "When you use your ghost hunter racial trait to grant a scythe, quarterstaff, whip, or bow the ghost touch weapon special ability, you also grant the undead-bane weapon special ability.",
                          source: "Pathfinder #139: The Dead Road", isPremium: true),

                    // // MARK: - Pathfinder #16: Endless Night
        )
        try await db.insertFeat(
        .make("Brew Fleshcrafting Poison (Item Creation)",
                          featType: "General",
                          prerequisites: "Caster level 10th, 8 or more ranks in Craft (alchemy)",
                          benefit: "You can create a fleshcrafting poison capable of mimicking one monster ability. Brewing a poison takes 1 day. When you create a fleshcrafting poison, you set the caster level, which can be no higher than your own level. The base price of a temporary fleshcrafting poison is its caster level × the CR of the creature used in the fleshcrafting × 50 gp. To brew a poison, you must spend 1/25 of this base price in XP and use up raw materials costing 1/2 this base price.The base price of a permanent fleshcrafting poison is its caster level × the CR of the creature used in the fleshcrafting × 1000 gp. To brew a poison, you must spend 1/25 of this base price in XP and use up raw materials costing 1/2 this base price.",
                          summary: "You can create a fleshcrafting poison capable of mimicking one monster ability. Brewing a poison takes 1 day.",
                          source: "Pathfinder #16: Endless Night", isPremium: true),

                    // // MARK: - Pathfinder #18: Descent into Midnight, Pathfinder #14: Children of the Void, Pathfinder #15: The Armageddon Echo
        )
        try await db.insertFeat(
        .make("Dark Adept",
                          featType: "General",
                          prerequisites: "Drow, character level 3rd",
                          benefit: "You gain three new spell-like abilities, each usable once per day. These spell-like abilities are detect magic, feather fall, and levitate. Your caster level for these spell-like abilities equals your total character level.",
                          summary: "You gain three new spell-like abilities, each usable once per day. These spell-like abilities are detect magic, feather fall, and levitate.",
                          source: "Pathfinder #18: Descent into Midnight, Pathfinder #14: Children of the Void, Pathfinder #15: The Armageddon Echo", isPremium: true),

                    // // MARK: - Pathfinder #22: The End of Eternity
        )
        try await db.insertFeat(
        .make("Advance Warning",
                          featType: "General",
                          prerequisites: "Cha 15.",
                          benefit: "All allies within 15 feet of you are only flat-footed during the first round of combat until your first turn. This does not prevent them from being flat-footed due to other situations, like being flanked. In addition, all allies within 15 feet of you gain a +1 dodge bonus to their Armor Class against all ranged attacks. These benefits only apply to those allies who can hear and understand you.",
                          summary: "All allies within 15 feet of you are only flat-footed during the first round of combat until your first turn.",
                          source: "Pathfinder #22: The End of Eternity", isPremium: true)
        )
        try await db.insertFeat(
        .make("Master of Disguise",
                          featType: "General",
                          prerequisites: "Cha 12, Skill Focus (Disguise) 5 ranks.",
                          benefit: "Choose an individual. You gain a +4 on all Disguise checks made to impersonate that specific creature. You can choose an additional individual for every 4 levels you possess.",
                          summary: "Choose an individual. You gain a +4 on all Disguise checks made to impersonate that specific creature. You can choose an additional individual for every 4 levels you possess.",
                          source: "Pathfinder #22: The End of Eternity", isPremium: true),

                    // // MARK: - Pathfinder #25: The Bastards of Erebus
        )
        try await db.insertFeat(
        .make("Fiendish Heritage",
                          featType: "General",
                          prerequisites: "Tiefling, must be taken at 1st level.",
                          benefit: "Your fiendish bloodline proves particularly strong, being tied to a specific race of fiends. Rather than taking a tiefling’s usual racial ability modifiers, choose one of the tiefling heritage modifiers presented on page 64. In addition, you may roll on the Variant Tiefling Abilities table three times and choose the most favorable ability.Nethys Note: Blood of Fiends pgs. 18-23 reprints the tiefling heritages and does not require players to select the Fiendish Heritage feat to take one.",
                          summary: "Your fiendish bloodline proves particularly strong, being tied to a specific race of fiends.",
                          source: "Pathfinder #25: The Bastards of Erebus", isPremium: true),

                    // // MARK: - Pathfinder #26: The Sixfold Trial
        )
        try await db.insertFeat(
        .make("Iomedaean Sword Oath",
                          featType: "General",
                          prerequisites: "Proficient in longsword, Weapon Focus (longsword), base attack bonus +4, worshiper of Iomedae.",
                          benefit: "You may select longsword-related feats as if you were a 4th-level fighter. For example, you may select Weapon Specialization (longsword) as a feat.",
                          special: "If you ever use a melee or ranged weapon other than a longsword in combat, you lose the benefits of this feat until you receive an atonement spell. You may still use spells that act as weapons (such as flame blade and spiritual weapon) without affecting your oath.",
                          summary: "You may select longsword-related feats as if you were a 4th-level fighter. For example, you may select Weapon Specialization (longsword) as a feat.",
                          source: "Pathfinder #26: The Sixfold Trial", isPremium: true),

                    // // MARK: - Pathfinder #28: The Infernal Syndrome
        )
        try await db.insertFeat(
        .make("Possess Creature (Monster)",
                          featType: "General",
                          prerequisites: "Cha 20, any evil outsider with 10 or more Hit Dice.",
                          benefit: "Once per day, as a full-round action, a fiend can discorporate into a malign presence and target a creature within 15 feet. The creature targeted must succeed at a Will save equal to 10 + half the fiend's Hit Dice + the fiend's Charisma modifier or be possessed (see below). Targets under the effects of protection from evil, or related spells, gain a bonus to this save. Should a target succeed at its Will save, the fiend is forced back into its natural form and is stunned for 1 round. A fiend that successfully possesses a target enters its space and merges with it. While possessing a creature or object, a fiend's body and abilities are unavailable. Once a fiend merges with its target it cannot be harmed until it leaves or is forcibly removed. While possessing a target, a fiend shares the senses of its host and can communicate with it telepathically. A fiend also gains a number of possession points per day equal to its total Hit Dice. These points can be spent to utilize special bodily possession actions detailed on the following pages. A fiend may expend these points as it pleases, with each possession action taking a full-round action. Each day, the victim of a possession is allowed a new Will save at the original DC to force the possessing fiend to leave its body—objects and areas do not receive daily saves. Should a victim make this save or be killed, the fiend is ejected, retakes its original form in an adjacent space, and is stunned for 1 round. A fiend may not possess a new target for 24 hours after being ejected from a victim. Dispel evil (or dispel chaos or dispel law, depending on the fiend) can eject a fiend, but the caster must succeed at a caster level check with a DC equal to 10 + the HD of the possessing fiend + the fiend's Cha modifier. Banishment and dismissal immediately eject a fiend from a target if it fails to save against the spell.",
                          summary: "Once per day, as a full-round action, a fiend can discorporate into a malign presence and target a creature within 15 feet.",
                          source: "Pathfinder #28: The Infernal Syndrome", isPremium: true)
        )
        try await db.insertFeat(
        .make("Possess Location (Monster)",
                          featType: "General",
                          prerequisites: "Cha 16, any evil outsider with 8 or more Hit Dice.",
                          benefit: "Once per day, as a full-round action, a fiend may attempt to possess a structure or small area (like a pool, grove, or ruin) of a diameter equal to 10 feet per Hit Die. This area is spherical, so a fiend possessing a particularly large structure might only have power over a certain number of rooms. An area receives no save against fiendish possession unless creatures or magical items occupy the space, in which case the area makes a Will save equal to 10 + half the fiend's Hit Dice + the fiend's Charisma modifier using the stats of the occupant with the highest Will save. An area within the effects of a hallow spell cannot be possessed. A fiend possessing an area operates similarly to one using the Possess Creature feat, except that locations do not receive daily saves to escape the fiend's influence and the fiend's possession points can only be spent on location possession actions. Should a possessed location be destroyed, the fiend is ejected, retakes its original form in a space adjacent to the area it previously possessed, and is stunned for 1 round. Dispel evil (or dispel chaos or dispel law, depending on the fiend) can eject a fiend, but the caster must succeed at a caster level check with a DC equal to 10 + the HD of the possessing fiend + the fiend's Cha modifier. Banishment and dismissal immediately eject a fiend from an object if it fails to make its saving throw against the spell's effects.",
                          summary: "Once per day, as a full-round action, a fiend may attempt to possess a structure or small area (like a pool, grove, or ruin) of a diameter equal to 10 feet per Hit Die.",
                          source: "Pathfinder #28: The Infernal Syndrome", isPremium: true)
        )
        try await db.insertFeat(
        .make("Possess Object (Monster)",
                          featType: "General",
                          prerequisites: "Cha 18, any evil outsider with 9 or more Hit Dice.",
                          benefit: "Once per day, as a full-round action, a fiend can possess a Large or smaller object. Unattended, a mundane object receives no saving throw against possession, while an attended object uses its owner's saving throw to make a Will save equal to 10 + half the fiend's Hit Dice + the fiend's Charisma modifier. Magic items save as if they were subject to a spell. Items within the area of effect of a hallow spell cannot be possessed. This effect is similar to that detailed in the Possess Creature feat, except that objects do not receive a daily save to escape the fiend's influence and the fiend's possession points can only be spent on object-possession actions. Should a possessed object be destroyed, the fiend is ejected, retakes its original form in an adjacent space, and is stunned for 1 round. Dispel evil (or dispel chaos or dispel law, depending on the fiend) can eject a fiend, but the caster must succeed at a caster level check with a DC equal to 10 + the HD of the possessing fiend + the fiend's Cha modifier. Banishment and dismissal immediately eject a fiend from an object if it fails to make its saving throw against the spell's effects.",
                          summary: "Once per day, as a full-round action, a fiend can possess a Large or smaller object.",
                          source: "Pathfinder #28: The Infernal Syndrome", isPremium: true),

                    // // MARK: - Pathfinder #30: The Twice-Damned Prince
        )
        try await db.insertFeat(
        .make("Invested Magic",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You may satisfy the material requirement of any spell you cast with valuable coins, gems, or jewelry rather than the normal component. For spells with material components with no listed value, valuables worth 5 times the spell’s level in gp may be expended instead of the usual components (5 gp for a 1st-level spell, 20 gp for a 4th-level spell, etc). In the case of spells with components that have a listed cost, you may expend valuables worth a number of gp equal to one and a half times this cost (thus, a spell like commune with material components costing 500 gp could be cast using valuables worth 750 gp). Only coins, gems, jewelry, and other similar objects of obvious worth can be used to replace other material components using this feat. The value of these objects need not match the required cost exactly, but they cannot be less than the required costs. Should valuables of greater value than required be expended (likely when employing objects like gems or jewelry), the extraneous gp value is lost, consumed with the rest of the object. The only exception comes in the case of spells with material components that have a listed worth. When casting such spells you may expend double the components’ gp worth in valuables to cast the spell as if your caster level were 1 level higher. This e!ect only applies to spells with components with a specific gp value. Any expenditure beyond double the gp value grants no additional benefit.",
                          summary: "You may satisfy the material requirement of any spell you cast with valuable coins, gems, or jewelry rather than the normal component.",
                          source: "Pathfinder #30: The Twice-Damned Prince", isPremium: true),

                    // // MARK: - Pathfinder #39: The City of Seven Spears
        )
        try await db.insertFeat(
        .make("Cry of Mercy",
                          featType: "General",
                          prerequisites: "Wis 13.",
                          benefit: "As a swift action once per day, you may call upon the spirits of your ancestors to prevent your opponents from dying. For the remainder of the combat, all of your dying opponents are stabilized at their current hit points, and any opponents who would be killed by damage from you or your allies are instead reduced to –1 hit point and stabilized. This is a supernatural ability. If an ally wants to kill an opponent despite the efforts of your ancestral spirits, she may attempt a Will saving throw (DC equal to 10 plus half your level plus your Wisdom modifier); success means her attacks affect the opponents normally.",
                          summary: "As a swift action once per day, you may call upon the spirits of your ancestors to prevent your opponents from dying.",
                          source: "Pathfinder #39: The City of Seven Spears", isPremium: true),

                    // // MARK: - Pathfinder #5: Sins of the Saviors
        )
        try await db.insertFeat(
        .make("Inscribe Rune (Item Creation)",
                          featType: "General",
                          prerequisites: "Caster level 3rd.",
                          benefit: "You can create runes. Inscribing a rune takes one day for each 1,000 gp in its base price. To inscribe a rune, you must spend 1/25 of its base price in XP and use up raw materials costing half of its base price.",
                          summary: "You can create runes. Inscribing a rune takes one day for each 1,000 gp in its base price.",
                          source: "Pathfinder #5: Sins of the Saviors", isPremium: true),

                    // // MARK: - Pathfinder #61: Shards of Sin
        )
        try await db.insertFeat(
        .make("Derro Magister",
                          featType: "General",
                          prerequisites: "Cha 20, derro.",
                          benefit: "A derro magister’s spell resistance equals the derro’s Hit Dice +10. Heal is always a class skill for a derro magister, and it gains a +4 racial bonus on all Heal checks. A derro with this feat treats its caster level for all spell-like abilities as equal to his Hit Dice. In addition, as soon as a derro with this feat achieves a total of 6 Hit Dice by gaining enough levels in any combination of classes, it gains the use of additional spell-like abilities as detailed below. At will—levitate 1/day—deeper slumber, modify memory",
                          summary: "A derro magister’s spell resistance equals the derro’s Hit Dice +10. Heal is always a class skill for a derro magister, and it gains a +4 racial bonus on all Heal checks.",
                          source: "Pathfinder #61: Shards of Sin", isPremium: true),

                    // // MARK: - Pathfinder #69: Maiden, Mother, Crone
        )
        try await db.insertFeat(
        .make("Natural Jouster (Combat)",
                          featType: "General",
                          prerequisites: "Centaur (or any tauric creature at the GM’s discretion)",
                          benefit: "You gain proficiency with the lance. You can wield a lance one-handed as if you were mounted, and you deal double damage with a lance while charging.",
                          summary: "You gain proficiency with the lance. You can wield a lance one-handed as if you were mounted, and you deal double damage with a lance while charging.",
                          source: "Pathfinder #69: Maiden, Mother, Crone", isPremium: true),

                    // // MARK: - Pathfinder #74: Sword of Valor
        )
        try await db.insertFeat(
        .make("Demon Grafter (Item Creation)",
                          featType: "General",
                          prerequisites: "Demonologist, Heal 5 ranks, Knowledge (planes) 5 ranks, Spellcraft 5 ranks.",
                          benefit: "You gain a +2 bonus on Heal checks regarding evil outsiders or creatures that already have a demonic graft. In addition, you can create demonic implants (see page 12) as if you had the Craft Wondrous Item feat, using your ranks in Heal as your caster level. The DC to create the item still increases for any necessary spell requirements (see the magic item creation rules in Chapter 15 of the Pathfinder RPG Core Rulebook).",
                          summary: "You gain a +2 bonus on Heal checks regarding evil outsiders or creatures that already have a demonic graft.",
                          source: "Pathfinder #74: Sword of Valor", isPremium: true)
        )
        try await db.insertFeat(
        .make("Demonologist",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 3 ranks.",
                          benefit: "You gain a +2 bonus on all Knowledge checks related to the Abyss or to demons, and you may take 10 on Knowledge checks made to identify demons.",
                          summary: "You gain a +2 bonus on all Knowledge checks related to the Abyss or to demons, and you may take 10 on Knowledge checks made to identify demons.",
                          source: "Pathfinder #74: Sword of Valor", isPremium: true),

                    // // MARK: - Pathfinder #7: Edge of Anarchy
        )
        try await db.insertFeat(
        .make("Burn Rider",
                          featType: "General",
                          prerequisites: "Mounted Combat, Ride 6 ranks, Handle Animal 6 ranks.",
                          benefit: "As long as your mount travels at least 40 feet in a round, you gain fire resistance 3 for that round. You also receive a +4 bonus on all Reflex saves to avoid catching on fire and a +4 bonus on all Fortitude saves against choking on smoke (DMG 303). Each round, as a free action, you may confer the same bonuses to your mount with a successful DC 20 Ride check.",
                          summary: "As long as your mount travels at least 40 feet in a round, you gain fire resistance 3 for that round.",
                          source: "Pathfinder #7: Edge of Anarchy", isPremium: true),

                    // // MARK: - Pathfinder #81: Shifting Sands
        )
        try await db.insertFeat(
        .make("Cleansing Burst",
                          featType: "General",
                          prerequisites: "Able to cast remove disease or the ability to cure disease with a mercy, channel positive energy class feature.",
                          benefit: "When you channel positive energy to harm or turn undead creatures, any undead creatures in the area lose the ability to cause disease with their melee and ranged attacks for 1d4+1 rounds. If an undead creature successfully saves against your channeled energy, this duration is reduced to 1 round for that creature. Immunity to positive energy negates this ability. When you channel positive energy to heal living creatures, any living creatures in the area gain a +4 sacred bonus on saving throws against disease for 1d4+1 rounds. Creatures not healed by positive energy receive no benefit.",
                          summary: "When you channel positive energy to harm or turn undead creatures, any undead creatures in the area lose the ability to cause disease with their melee and ranged attacks for 1d4+1 rounds.",
                          source: "Pathfinder #81: Shifting Sands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Infectious Weapons",
                          featType: "General",
                          prerequisites: "Ability to cause disease with a natural weapon via an extraordinary or supernatural ability.",
                          benefit: "Creatures damaged by your ranged and melee weapon attacks have a chance to contract disease, as though they were damaged with your disease-spreading natural weapon.",
                          summary: "Creatures damaged by your ranged and melee weapon attacks have a chance to contract disease, as though they were damaged with your disease-spreading natural weapon.",
                          source: "Pathfinder #81: Shifting Sands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pestilent",
                          featType: "General",
                          prerequisites: "Ability to cause disease via a spell, spell-like ability, or supernatural means.",
                          benefit: "When you successfully use a spell, spell-like ability, or supernatural ability to cause a creature to contract a disease, you gain a +2 bonus on attack rolls with natural weapons and unarmed strikes against that creature. In addition, such attacks deal an additional 1d6 points of negative energy damage. If you have the supernatural ability to cause a single disease (such as mummy rot), you gain these bonuses against any creature that has contracted the same disease, even if it did not contract it from you.",
                          summary: "When you successfully use a spell, spell-like ability, or supernatural ability to cause a creature to contract a disease, you gain a +2 bonus on attack rolls with natural weapons and unarmed strikes…",
                          source: "Pathfinder #81: Shifting Sands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rallying Blow",
                          featType: "General",
                          prerequisites: "Aura of courage.",
                          benefit: "When you confirm a critical hit against an enemy, any fear effect affecting allies within 30 feet is reduced by one step. Panicked becomes frightened, frightened becomes shaken, and shaken is removed. In addition, any ally suffering other effects from a failed save against a fear effect, such as the paralysis from a mummy’s despair aura, receives a new save against the effect at the original DC.",
                          summary: "When you confirm a critical hit against an enemy, any fear effect affecting allies within 30 feet is reduced by one step.",
                          source: "Pathfinder #81: Shifting Sands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Terrifying Strike",
                          featType: "General",
                          prerequisites: "Despair special ability, mummy.",
                          benefit: "Any creature struck by your slam attack must succeed at a Will save at the same DC as your despair ability or be shaken for 1d4 rounds. If the creature is already shaken, frightened, or panicked, it is paralyzed for 1 round instead. This is a mind-affecting fear effect.",
                          summary: "Any creature struck by your slam attack must succeed at a Will save at the same DC as your despair ability or be shaken for 1d4 rounds.",
                          source: "Pathfinder #81: Shifting Sands", isPremium: true),

                    // // MARK: - Pathfinder #82: Secrets of the Sphinx, Pathfinder #81: Shifting Sands
        )
        try await db.insertFeat(
        .make("Troth of the Forgotten Pharaoh",
                          featType: "General",
                          prerequisites: "Must be a member of the Cult of the Forgotten Pharaoh.",
                          benefit: "Upon taking this feat, you undergo a ritual wherein the cartouche of Pharaoh Hakotep I is carved into your flesh (typically on the chest or back), and then embellished with painful crimson and ocher tattoos. The ritual takes 1 hour to complete, and you take 3 points of damage from the wound (see Special, below). Upon completion of the ritual, you gain the feat’s benefits. As an immediate action, or when you die, you can cause white-hot fire to burst from the tattooed cartouche on your flesh, immolating your body in a bright flash and instantly reducing it to ash. If you are still alive, you are immediately slain. Spells such as raise dead or speak with dead cannot be used on your remains, but your equipment is unaffected. As the fire consumes you, fiery snakes whip out of your body in a 5-foot-radius burst, dealing 1d6 points of fire damage + 1 point per character level. Creatures in the area can attempt a Reflex save to negate the damage (DC 10 + 1/2 your character level + your Constitution modifier). In addition, creatures within a 10-foot burst must succeed at a Fortitude save (DC 10 + 1/2 your character level + your Constitution modifier) or be blinded for 1 round. Blind or sightless creatures are unaffected by this blinding effect.",
                          special: "You permanently lose 3 hit points when you take this feat. This damage can be healed only with a miracle or wish spell, but doing so causes you to lose all benefits of this feat.",
                          summary: "Upon taking this feat, you undergo a ritual wherein the cartouche of Pharaoh Hakotep I is carved into your flesh (typically on the chest or back), and then embellished with painful crimson and ocher…",
                          source: "Pathfinder #82: Secrets of the Sphinx, Pathfinder #81: Shifting Sands", isPremium: true),

                    // // MARK: - Pathfinder #85: Fires of Creation, People of the Stars
        )
        try await db.insertFeat(
        .make("Empathy",
                          featType: "General",
                          prerequisites: "Cha 13, android.",
                          benefit: "You lose the emotionless special quality. You can gain morale bonuses, and can be affected by emotionbased effects and fear effects. You lack the +4 racial bonus on saving throws against mind-affecting effects.",
                          summary: "You lose the emotionless special quality. You can gain morale bonuses, and can be affected by emotionbased effects and fear effects.",
                          source: "Pathfinder #85: Fires of Creation, People of the Stars", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Surge",
                          featType: "General",
                          prerequisites: "Con 13, nanite surge ability.",
                          benefit: "You can use your nanite surge ability one additional time per day.",
                          special: "You can gain Extra Surge multiple times. Its effects stack.",
                          summary: "You can use your nanite surge ability one additional time per day.",
                          source: "Pathfinder #85: Fires of Creation, People of the Stars", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rapid Recovery",
                          featType: "General",
                          prerequisites: "Rapid Repair, Con 13, nanite surge ability.",
                          benefit: "When you heal damage using Rapid Repair, you remove any and all of the following conditions: blinded, confused, dazzled, deafened, shaken, sickened, and staggered. You cannot cure blindness or deafness caused by loss of sensory organs.",
                          summary: "When you heal damage using Rapid Repair, you remove any and all of the following conditions: blinded, confused, dazzled, deafened, shaken, sickened, and staggered.",
                          source: "Pathfinder #85: Fires of Creation, People of the Stars", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rapid Repair",
                          featType: "General",
                          prerequisites: "Wis 13, nanite surge ability.",
                          benefit: "You can use your nanite surge ability to heal a number of hit points equal to your character level, instead of its usual effects.",
                          summary: "You can use your nanite surge ability to heal a number of hit points equal to your character level, instead of its usual effects.",
                          source: "Pathfinder #85: Fires of Creation, People of the Stars", isPremium: true),

                    // // MARK: - Pathfinder #90: The Divinity Drive
        )
        try await db.insertFeat(
        .make("Craft Robot",
                          featType: "General",
                          prerequisites: "Craft Technological Arms and Armor TG, Craft Technological Item TG, Technologist TG, Craft (mechanical) 9 ranks, Knowledge (engineering) 9 ranks.",
                          benefit: "You can create robots, provided you have access to a robotics lab and the necessary materials. A robot’s price is equal to its CR × 20,000 gp, and the cost to create one is half this amount. Creating a robot takes 1 day for every 1,000 gp of its price. At the end of the process you must attempt a single Craft (mechanical) skill check to finish the robot. Failing this check means that the robot doesn’t function and the materials and time are wasted. The DC for this skill check is equal to 20 + the robot’s CR (minimum 21). A newly created robot has average hit points for its Hit Dice.",
                          special: "A robotics lab is required to craft robots and uses 200 charges each day it is in operation. See page 16 of Pathfinder Campaign Setting: Technology Guide for more information on technological laboratories.",
                          summary: "You can create robots, provided you have access to a robotics lab and the necessary materials. A robot’s price is equal to its CR × 20,000 gp, and the cost to create one is half this amount.",
                          source: "Pathfinder #90: The Divinity Drive", isPremium: true),

                    // // MARK: - Pathfinder #91: Battle of Bloodmarch Hills
        )
        try await db.insertFeat(
        .make("Awesome Throw (Combat)",
                          featType: "General",
                          prerequisites: "Str 25, Throw Anything or rock throwing, Improved Bull Rush, size Large or larger.",
                          benefit: "As a standard action, you can perform the awesome throw combat maneuver. You do this by making a thrown weapon attack; if you don’t have the Throw Anything feat, you must use a large, bulky, and relatively regular-shaped object with a hardness of at least 5 (such as a rock or treasure chest). If that attack hits a corporeal opponent smaller than you, the opponent takes damage and is knocked away, flying 10 feet in a straight line away from you and falling prone. If an obstacle prevents the completion of your target’s move, the target and the obstacle each take 1d6 points of damage, and the target is knocked prone in a space adjacent to the obstacle.",
                          summary: "As a standard action, you can perform the awesome throw combat maneuver.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flame Warrior (Combat)",
                          featType: "General",
                          prerequisites: "Fire subtype, giant subtype.",
                          benefit: "You naturally transfer the heat of your body to any metal melee weapons you wield, dealing 1d6 additional points of fire damage.",
                          summary: "You naturally transfer the heat of your body to any metal melee weapons you wield, dealing 1d6 additional points of fire damage.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fortitude of Giants",
                          featType: "General",
                          prerequisites: "Con 14, Great Fortitude, giant subtype.",
                          benefit: "When you attempt a saving throw against a poison effect or an effect that inflicts the fatigued condition, roll twice and take the higher result.",
                          summary: "When you attempt a saving throw against a poison effect or an effect that inflicts the fatigued condition, roll twice and take the higher result.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Frost Warrior (Combat)",
                          featType: "General",
                          prerequisites: "Cold subtype, giant subtype.",
                          benefit: "You naturally transfer the cold of your body to any metal melee weapons you wield, dealing 1d6 additional points of cold damage.",
                          summary: "You naturally transfer the cold of your body to any metal melee weapons you wield, dealing 1d6 additional points of cold damage.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Giant's Crush (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, Vital Strike, base attack bonus +6, giant subtype.",
                          benefit: "If you hit a creature at least one size category smaller than you with a melee attack while using both Power Attack and Vital Strike, the creature that you attacked is also knocked prone. A successful Reflex save negates this effect (DC = 10 + your base attack bonus). You must choose to use this feat before making the attack roll.",
                          special: "This effect stacks with the effect of Giant’s Wallop.",
                          summary: "If you hit a creature at least one size category smaller than you with a melee attack while using both Power Attack and Vital Strike, the creature that you attacked is also knocked prone.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Giant's Smash (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, giant subtype.",
                          benefit: "When you attack an inanimate, unattended object, you ignore the first 5 points of its hardness. You also receive a +5 bonus on Strength checks to knock down or break open doors.",
                          summary: "When you attack an inanimate, unattended object, you ignore the first 5 points of its hardness. You also receive a +5 bonus on Strength checks to knock down or break open doors.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Giant's Wallop (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, Vital Strike, base attack bonus +6, giant subtype.",
                          benefit: "If you hit a creature at least one size category smaller than you with a melee attack while using both Power Attack and Vital Strike, the creature you attacked is also dazed for 1 round. A successful Fortitude save negates this effect (DC = 10 + your base attack bonus). You must choose to use this feat before making the attack roll.",
                          special: "This effect stacks with the effect of Giant’s Crush.",
                          summary: "If you hit a creature at least one size category smaller than you with a melee attack while using both Power Attack and Vital Strike, the creature you attacked is also dazed for 1 round.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Awesome Blow (Combat)",
                          featType: "General",
                          prerequisites: "Str 25, Awesome Blow, Improved Bull Rush, Power Attack, size Large or larger.",
                          benefit: "When you make an awesome blow combat maneuver, for every 5 by which your combat maneuver check exceeds the target’s CMD, you send the target flying 5 additional feet. Furthermore, this movement provokes attacks of opportunity from your allies.",
                          summary: "When you make an awesome blow combat maneuver, for every 5 by which your combat maneuver check exceeds the target’s CMD, you send the target flying 5 additional feet.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Awesome Throw (Combat)",
                          featType: "General",
                          prerequisites: "Str 25, Awesome Throw, Greater Bull Rush, Throw Anything or rock throwing, size Large or larger.",
                          benefit: "When you make an awesome throw combat maneuver, for every 5 by which your combat maneuver check exceeds the target’s CMD, you send the target flying 5 additional feet. Furthermore, this movement provokes attacks of opportunity from your allies.",
                          summary: "When you make an awesome throw combat maneuver, for every 5 by which your combat maneuver check exceeds the target’s CMD, you send the target flying 5 additional feet.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Longshanks",
                          featType: "General",
                          prerequisites: "Giant subtype, size Large or larger.",
                          benefit: "Your land speed increases by 5 feet, and you can ignore up to 20 feet of nonmagical difficult terrain each round you move.",
                          summary: "Your land speed increases by 5 feet, and you can ignore up to 20 feet of nonmagical difficult terrain each round you move.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stone Soul",
                          featType: "General",
                          prerequisites: "Stone giant.",
                          benefit: "Your natural armor bonus increases by 1. Once per day, you can use stoneskin (on yourself only) as a spell-like ability. Your caster level is equal to 1/2 your Hit Dice.",
                          special: "You can take this feat up to three times. Each additional time you take this feat, the number of times you can use stoneskin per day increases by one.",
                          summary: "Your natural armor bonus increases by 1. Once per day, you can use stoneskin (on yourself only) as a spell-like ability. Your caster level is equal to 1/2 your Hit Dice.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Storm Soul",
                          featType: "General",
                          prerequisites: "Cloud or storm giant.",
                          benefit: "You gain immunity to electricity.",
                          summary: "You gain immunity to electricity.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Storm Warrior",
                          featType: "General",
                          prerequisites: "Storm Soul, cloud or storm giant.",
                          benefit: "You can transfer the power of storms from your body to any metal melee weapons you wield, dealing an additional 1d6 points of electricity damage.",
                          summary: "You can transfer the power of storms from your body to any metal melee weapons you wield, dealing an additional 1d6 points of electricity damage.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true)
        )
        try await db.insertFeat(
        .make("Will of Giants",
                          featType: "General",
                          prerequisites: "Wis 14, Iron Will, giant subtype.",
                          benefit: "You gain immunity to enchantment effects that target only humanoids, such as charm person and hold person.",
                          summary: "You gain immunity to enchantment effects that target only humanoids, such as charm person and hold person.",
                          source: "Pathfinder #91: Battle of Bloodmarch Hills", isPremium: true),

                    // // MARK: - Pathfinder Campaign Setting
        )
        try await db.insertFeat(
        .make("Berserker's Cry",
                          featType: "General",
                          prerequisites: "Cha 13, Linnorm Kings affinity.",
                          benefit: "Once per day, as a move action, you may unleash a powerful, bloodthirsty scream of battle lust and fury. Allies within 60 feet who can hear your berserker’s cry (including yourself ) are heartened and gain a +1 morale bonus on damage rolls made with melee attacks for a number of rounds equal to half your character level + your Charisma bonus. If you have the ability to rage, you may unleash a berserker’s cry as part of the free action to enter a rage (instead of as a separate move action).A creature may be under the effect of only one berserker’s cry at a time.",
                          special: "You may gain this feat multiple times. Every time you take this feat, you may unleash a berserker’s cry one additional time per day.",
                          summary: "Once per day, as a move action, you may unleash a powerful, bloodthirsty scream of battle lust and fury.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blade Binder (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +4, proficiency with khopesh or temple sword.",
                          benefit: "You receive a +2 bonus on opposed attack rolls made to bind an opponent’s weapon, as well as any opposed rolls to maintain the bind. This bonus stacks with the +2 bonus from wielding a khopesh or temple sword. If you succeed in blade binding your opponent, your opponent becomes flat-footed until he either wrestles his blade free or drops his weapon.",
                          special: "A monk may select Blade Binder as his 6th-level monk bonus feat.",
                          summary: "You receive a +2 bonus on opposed attack rolls made to bind an opponent’s weapon, as well as any opposed rolls to maintain the bind.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gunslinger",
                          featType: "General",
                          prerequisites: "Base attack bonus +4, Weapon Focus (any firearm), proficiency with any firearm.",
                          benefit: "When you attack with a firearm, you do not provoke attacks of opportunity.",
                          normal: "Attacking with any kind of ranged weapon in a threatened square provokes attacks of opportunity.",
                          summary: "When you attack with a firearm, you do not provoke attacks of opportunity.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Katheer Scholar",
                          featType: "General",
                          prerequisites: "Int 15, Qadira affinity.",
                          benefit: "Whenever you succeed on a Knowledge check to identify a kind of creature you face, you can spend a standard action to provide detailed information to your allies. Doing so grants every ally who can hear you within 30 feet a +1 circumstance bonus on weapon damage rolls made against the identified kind of creature for a number of rounds equal to your Intelligence bonus. You may only use this ability once per encounter. Creatures immune to critical hits and sneak attacks are not immune to the extra damage from this ability.",
                          summary: "Whenever you succeed on a Knowledge check to identify a kind of creature you face, you can spend a standard action to provide detailed information to your allies.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Massed Charge (Combat)",
                          featType: "General",
                          prerequisites: "Mounted Combat, Handle Animal 4 ranks, Ride 9 ranks, Lastwall affinity.",
                          benefit: "When mounted on a horse, you and your mount suffer no penalties for squeezing when you share a 10-foot space with another mount and rider with this feat. In addition, you and your mount gain a +2 bonus on opposed bull rush, overrun, and trip checks.",
                          normal: "Horses and other Large mounts occupy a 10 foot square area. For two horses to share that space requires them to squeeze, halving their movement rate and imposing a –4 penalty on attack rolls and to AC.",
                          summary: "When mounted on a horse, you and your mount suffer no penalties for squeezing when you share a 10-foot space with another mount and rider with this feat.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Molthuni Discipline",
                          featType: "General",
                          prerequisites: "Molthune affinity.",
                          benefit: "Any effect that would normally make you panicked instead makes you frightened. Any effect that would make you frightened instead makes you shaken. Any effect that would make you shaken only lasts half as long (minimum 1 round). Note that you can still become increasingly frightened by multiple fear effects from different sources, but that each source is modified before it is applied to you. In addition, you gain a +2 bonus on any saving throw versus fear effects.",
                          special: "You may only gain this feat at 1st level.",
                          summary: "Any effect that would normally make you panicked instead makes you frightened. Any effect that would make you frightened instead makes you shaken.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Necromantic Resistance",
                          featType: "General",
                          prerequisites: "Con 13, Geb affinity.",
                          benefit: "You gain a +2 bonus on saving throws made to resist spells and effects from the school of necromancy. In addition, you gain a +2 bonus on Fort saves made to prevent negative levels from becoming permanent. Finally, if you take ability score damage (but not drain) from an undead creature, you take 1 point less damage (minimum 0).",
                          summary: "You gain a +2 bonus on saving throws made to resist spells and effects from the school of necromancy.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Noble Scion (Cheliax)",
                          featType: "General",
                          prerequisites: "Cheliax affinity, member of Chelish noble house.",
                          benefit: "You gain benefits based on the noble house to which you belong.Charthagnion: Whenever you take 10 on a Wisdom-based skill, treat the result as if you rolled a 13 instead of a 10.Henderthane: Whenever you purchase a weapon anywhere in Avistan—melee or ranged, mundane or magical—you pay 10% less than the normal cost.Jeggare: You begin play with an additional 200 gp. In addition, at 10th level you gain a one-time 10,000 gp stipend.Leroung: You gain a +1 bonus on every Knowledge skill in which you have at least 5 ranks.Narikopolus: Whenever you use a composite Strength bow of your Strength bonus or lower, you deal +2 points of damage with it.Sarini: Perform (comedy) is always a class skill for you. You gain a +2 bonus on Bluff and Perform (comedy) skill checks.Thrune: You gain Infernal as a bonus language. In addition, at 9th level you may bind to yourself an imp servitor in a ritual that takes 7 days. Your imp servitor grants and possesses all the benefits and abilities of a 1st-level sorcerer’s familiar.",
                          special: "You may only gain this feat at 1st level.",
                          summary: "You gain benefits based on the noble house to which you belong.Charthagnion: Whenever you take 10 on a Wisdom-based skill, treat the result as if you rolled a 13 instead of a 10.Henderthane: Whenever…",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("One Finger",
                          featType: "General",
                          prerequisites: "Dex 13, Wis 13, Improved Unarmed Strike, Stunning Fist, Weapon Finesse, base attack bonus +8, ki strike class ability.",
                          benefit: "You can make Stunning Fist attacks as melee touch attacks. You may not use Power Attack in combination with this feat. You may choose to expend one use of Stunning Fist when making a bull rush, disarm, grapple, sunder, or trip attempt to provide a bonus equal to your Wisdom modifier (if positive) to any attack roll or opposed check required. This bonus applies only to a single attempt and does not apply to subsequent checks (as when continuing a grapple in subsequent rounds). You may use this ability once per round on your turn. You may not use it to defend against combat actions attempted against you.",
                          summary: "You can make Stunning Fist attacks as melee touch attacks. You may not use Power Attack in combination with this feat.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Profits of Kalistrade",
                          featType: "General",
                          prerequisites: "Diplomacy 1 rank, Druma affinity.",
                          benefit: "By utilizing your mercantile connections, when you gain this feat you acquire a resource pool worth 100 gp. You may add to this resource pool with gold you acquire through adventuring, but once you put it in, it remains a part of your resource pool thereafter. Your resource pool increases by 100 gp at levels 2–5, 500 gp at levels 6–10, 1,000 gp at levels 11–15, and 5,000 gp at levels 16 and up.You may utilize this resource pool in any community of village size or larger by requesting an item (mundane or magical). If the item you request is worth less than the community’s gp limit, you gain it within 1d4 hours. If the item exceeds the community’s gp limit but is less than double the limit, you gain the item within 1d4 days. An item more than twice as expensive as a community’s gp limit is unavailable. For as long as you have the item in your possession, your resource pool is reduced by the amount of the item’s value. If you lose the item or otherwise cannot return it to the resource pool, the pool permanently decreases by the value of the item. A charged item acquired in this way loses a percentage of its value based on the number of charges used, and when returned to the resource pool it reduces the size of the pool an equal amount.Your resource pool is available to you even outside of Druma, but in that case gaining a requested item takes 1 hour longer if below a community’s gp limit or 1 day longer if above.",
                          summary: "By utilizing your mercantile connections, when you gain this feat you acquire a resource pool worth 100 gp.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rugged",
                          featType: "General",
                          prerequisites: "Endurance, member of a Mammoth Lord’s following.",
                          benefit: "You gain a +2 bonus on saving throws made against magical and natural effects that deal cold damage. In addition, you may move across ice without a movement penalty.",
                          summary: "You gain a +2 bonus on saving throws made against magical and natural effects that deal cold damage. In addition, you may move across ice without a movement penalty.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ruincaster",
                          featType: "General",
                          prerequisites: "Wis 15, ability to cast spells, Mwangi Expanse affinity.",
                          benefit: "When you are standing upon or within a Mwangi ruin that covers at least 500 square feet, you may tap into the latent spiritual energies still held by the stones of that place to grant improve your own spellcasting abilities.Mwangi ruins possess varying degrees of power described by a power level, typically 1 to 5. As a move action, you may tap into a ruin’s spiritual energies for 1 round with a DC 10 Concentration check. Failure leaves you fatigued (or exhausted, if already fatigued; or unconscious, if already exhausted). The DC increases by 5 for each power level beyond 1. You may tap the spiritual energies of a ruin in one of three ways.Harm: Whenever you cast a spell that deals hit point damage, the spell deals additional damage equal to the ruin’s power level.Increase: The DC to resist a spell you cast increases by the ruin’s power level.Penetrate: A spell you cast that must penetrate spell resistance gains a bonus on your caster level check equal to the ruin’s power level.",
                          special: "Most Mwangi ruins are power level 1, with only a handful being power level 2. Holy Xatramba is the only power level 3 ruin, Doorway to the Red Star is the only power level 4 ruin, and Ruins of Kho is the only power level 5 ruin.It is up to your GM as to whether ruins outside of the Mwangi Expanse possess power levels and what levels they are.",
                          summary: "When you are standing upon or within a Mwangi ruin that covers at least 500 square feet, you may tap into the latent spiritual energies still held by the stones of that place to grant improve your…",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Secret of Steel-Shattering Spirit",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, base attack bonus +6, must be lawful.",
                          benefit: "You gain a pool of ki points equal to 1 + your Wisdom modifier (minimum of 1). As a swift action, you may focus your ki into strikes that can overcome the hardness of any substance. Each unarmed strike attack you make while in this focus expends 1 ki from your pool, whether or not it hit. You lose your focus automatically when you run out of ki, when the encounter ends, if you are reduced to fewer than 0 hit points or killed, or as a free action any time you wish.While focused in this way, your unarmed strikes are treated as adamantine weapons for the purpose of overcoming damage reduction or bypassing hardness.",
                          special: "You may gain this feat multiple times. For each additional time you gain the feat you add 1 to your ki pool and your unarmed strikes gain an additional property for overcoming damage reduction, in the following order: adamantine, cold iron, silver, magic, lawful, epic. If your unarmed strikes already count as one or more of those properties (from any source), they gain the next property in line.A monk trained at one of the Houses of Perfection may select Secret of Steel-Shattering Spirit as his 6th-level monk bonus feat.",
                          summary: "You gain a pool of ki points equal to 1 + your Wisdom modifier (minimum of 1). As a swift action, you may focus your ki into strikes that can overcome the hardness of any substance.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shrewd Liason",
                          featType: "General",
                          prerequisites: "Mediogalti affinity.",
                          benefit: "Opponents do not gain a +2 bonus on attack rolls for flanking you, although they can still sneak attack you. You also gain a +2 bonus on Sense Motive checks made to resist a foe’s feinting in combat Bluff checks.",
                          summary: "Opponents do not gain a +2 bonus on attack rolls for flanking you, although they can still sneak attack you.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sniper Shot",
                          featType: "General",
                          prerequisites: "Int 13, Wis 13, Far Shot, Focused Shot, Point-Blank Shot, Precise Shot, Kyonin affinity.",
                          benefit: "As a full-round action, you may make an attack that allows you to deal precision-based extra damage to a distance equal to your weapon’s range increment. You may only make this attack with bows and crossbows. Precision-based damage includes sneak attacks, a ranger’s favored weapon bonus, and the damage bonus from the Focused Shot feat. Creatures immune to critical hits and sneak attacks are immune to this extra damage.",
                          summary: "As a full-round action, you may make an attack that allows you to deal precision-based extra damage to a distance equal to your weapon’s range increment.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit Strike",
                          featType: "General",
                          prerequisites: "Knowledge (religion) 5 ranks, ability to turn undead, at least one favored enemy.",
                          benefit: "As a swift action, you can expend a use of your turn undead ability to imbue a weapon you touch with the bane property against your favored enemy (choose one if you have more than one favored enemy) until the beginning of your next turn. The affected weapon may be used by you or by someone else.",
                          summary: "As a swift action, you can expend a use of your turn undead ability to imbue a weapon you touch with the bane property against your favored enemy (choose one if you have more than one favored enemy)…",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit of the River",
                          featType: "General",
                          prerequisites: "Aquatic subtype, Knowledge (nature) 1 rank.",
                          benefit: "You gain the ability to breathe air or water interchangeably. You become fatigued if you remain out of the water for a number of days equal to your Constitution bonus plus your character level. This fatigue only goes away once you immerse yourself in water for 8 hours. Mundane or magical effects that remove fatigue have no effect on this condition.In addition, choose one of these skills: Knowledge (geography), Knowledge (history), Knowledge (local), or Knowledge (nature). That skill is always a class skill for you.",
                          summary: "You gain the ability to breathe air or water interchangeably. You become fatigued if you remain out of the water for a number of days equal to your Constitution bonus plus your character level.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Teleport Sense",
                          featType: "General",
                          prerequisites: "Wis 13, Mendev affinity.",
                          benefit: "Whenever a creature uses a spell or effect from the conjuration (teleportation) school to appear within 60 feet of you, you may make a Sense Motive check to detect the teleportation. The DC equals 10 + caster level of the effect. If you succeed on this check, you are automatically not surprised and can act in the surprise round if combat begins immediately. If combat against the creature that teleported near you begins within 1 minute of the teleportation you gain a +4 bonus on the initiative check in that battle. If the creature teleporting in is a demon, you gain a +5 bonus on the Sense Motive check to detect it.",
                          summary: "Whenever a creature uses a spell or effect from the conjuration (teleportation) school to appear within 60 feet of you, you may make a Sense Motive check to detect the teleportation.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Twisted Flesh",
                          featType: "General",
                          prerequisites: "Con 15, Worldwound affinity.",
                          benefit: "You gain a +1 natural armor bonus to your Armor Class and cold, electricity, and fire resistance 2. In addition, thanks to your corrupted and scarred flesh, you gain a +1 bonus on Intimidate checks.",
                          special: "You take a –1 penalty on all other Charisma-based skill checks, Charisma checks, and Fort saves.You may only gain this feat at 1st level.",
                          summary: "You gain a +1 natural armor bonus to your Armor Class and cold, electricity, and fire resistance 2. In addition, thanks to your corrupted and scarred flesh, you gain a +1 bonus on Intimidate checks.",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Veiled Vileness",
                          featType: "General",
                          prerequisites: "Half-orc.",
                          benefit: "You appear outwardly human, with no obvious signs of your orcish heritage (no Disguise check required). Your subtly menacing presence and strength grant a +1 bonus on Diplomacy and Intimidate checks and Will saves.",
                          summary: "You appear outwardly human, with no obvious signs of your orcish heritage (no Disguise check required).",
                          source: "Pathfinder Campaign Setting", isPremium: true)
        )
        try await db.insertFeat(
        .make("Warped Mind",
                          featType: "General",
                          prerequisites: "Wis 15, Worldwound affinity.",
                          benefit: "Anyone attempting to read your thoughts, communicate with you via telepathy, or otherwise contact your mind is dazed for 1d4 rounds (Will save DC 15 + your Cha modifier negates). In addition, you gain a +2 bonus on initiative checks and a +1 bonus on Will saves.",
                          special: "You take a –1 penalty on all Intelligence-based skill checks.You may only gain this feat at 1st level.",
                          summary: "Anyone attempting to read your thoughts, communicate with you via telepathy, or otherwise contact your mind is dazed for 1d4 rounds (Will save DC 15 + your Cha modifier negates).",
                          source: "Pathfinder Campaign Setting", isPremium: true),

                    // // MARK: - Pathfinder Society Primer
        )
        try await db.insertFeat(
        .make("Collective Recollection (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When an ally who also has this feat attempts a trained Knowledge skill check while within 30 feet of you, you may attempt an aid another check as a free action to improve that ally’s skill check. You must have at least 1 rank in the Knowledge skill to be aided in order to use this feat. If you succeed at the aid another check, you automatically know any information your ally gains from the Knowledge check as if you had rolled the Knowledge check. Whether or not your aid another check is successful, you cannot attempt a Knowledge check to determine the same information as your ally after using this feat.",
                          summary: "When an ally who also has this feat attempts a trained Knowledge skill check while within 30 feet of you, you may attempt an aid another check as a free action to improve that ally’s skill check.",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cut Your Losses",
                          featType: "General",
                          prerequisites: "Str 13, Acrobatics 1 rank.",
                          benefit: "Whenever you withdraw as a full-round action and have at least one free hand, you can pick up one unattended object or unconscious ally of your size or smaller at any point during your movement without provoking attacks of opportunity. Any additional movement performed on your turn still provokes attacks of opportunity as normal. In addition, you treat your Strength score as 2 higher for the purpose of determining your carrying capacity.",
                          summary: "Whenever you withdraw as a full-round action and have at least one free hand, you can pick up one unattended object or unconscious ally of your size or smaller at any point during your movement…",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Emergency Attunement",
                          featType: "General",
                          prerequisites: "Spellcraft 7 ranks.",
                          benefit: "As a standard action, you can alter one of your ongoing abjuration or transmutation spells. It must be currently affecting you and must grant a choice of options when cast. You change its benefit to a different one from the same list. In order to accomplish this, you must make a successful Spellcraft check (DC equal to 10 + the level of the spell to be altered). The duration of the spell is reduced to half of the spell’s remaining duration. For example, a 7th-level wizard could change her resist energy ( fire) spell with 50 minutes of its duration remaining into resist energy (cold), but the new duration would be 25 minutes. This ability does not change the benefit for any other creatures targeted by the original spell.",
                          summary: "As a standard action, you can alter one of your ongoing abjuration or transmutation spells. It must be currently affecting you and must grant a choice of options when cast.",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Esoteric Advantage",
                          featType: "General",
                          prerequisites: "Knowledge (arcana, dungeoneering, local, nature, planes, or religion) 3 ranks.",
                          benefit: "After identifying an individual creature with a successful Knowledge skill check, you can spend a move action to adapt your tactics to reduce that individual’s natural defenses. Choose one of the following abilities that you identified: damage reduction, energy resistance, or spell resistance. For the next 24 hours you treat the selected ability as if it were 2 lower, to a minimum of 0 (for instance, you would treat DR 5/magic as if it were DR 3/magic). You can only benefit from this feat against one single creature at a time. If you use this feat to adapt your tactics to another individual before 24 hours have passed since you last adapted to a creature, the benefit provided against the first individual ends and is replaced by the benefit against the second individual. You can switch which identified creature you have adapted your tactics to (including which special ability you wish to treat as lower) as a move action.",
                          summary: "After identifying an individual creature with a successful Knowledge skill check, you can spend a move action to adapt your tactics to reduce that individual’s natural defenses.",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Day Job",
                          featType: "General",
                          prerequisites: "Ability to attempt Day Job checks (see the Guide to Pathfinder Society Organized Play).",
                          benefit: "You gain a +3 bonus on Day Job checks using one skill you choose when you take this feat. This bonus stacks with other feats that grant a bonus to the chosen skill, including Skill Focus.",
                          summary: "You gain a +3 bonus on Day Job checks using one skill you choose when you take this feat. This bonus stacks with other feats that grant a bonus to the chosen skill, including Skill Focus.",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Underhanded Teamwork (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Improved Dirty Trick, Underhanded Teamwork, base attack bonus +6.",
                          benefit: "Whenever an ally who also has this feat performs the dirty trick combat maneuver against a foe that you both threaten, you may attempt a dirty trick combat maneuver against the same foe as an immediate action to inflict a second condition. If the foe uses an action to remove the first condition, it also removes the condition imposed by your immediate action.",
                          summary: "Whenever an ally who also has this feat performs the dirty trick combat maneuver against a foe that you both threaten, you may attempt a dirty trick combat maneuver against the same foe as an…",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Patient Strike (Combat)",
                          featType: "General",
                          prerequisites: "Int 13.",
                          benefit: "You can choose to ready an attack as a fullround action instead of a standard action. When you do so, you gain a +2 bonus on your attack roll when your readied action triggers.",
                          normal: "Readying an attack is a standard action and doesn’t grant a bonus on your attack roll.",
                          summary: "You can choose to ready an attack as a fullround action instead of a standard action. When you do so, you gain a +2 bonus on your attack roll when your readied action triggers.",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Planned Spontaneity",
                          featType: "General",
                          prerequisites: "Knowledge (arcana) 9 ranks, ability to prepare and cast 4th-level spells.",
                          benefit: "Once per day when you prepare spells, you can designate one spell slot from each of up to three different spell levels that are lower than the highest-level spell that you can cast. In each designated slot you can memorize two different spells of the respective level. You can cast either spell as normal, but when you do, the spell consumes both of the spells prepared in that spell slot.",
                          special: "A wizard can select this feat as one of his bonus feats.",
                          summary: "Once per day when you prepare spells, you can designate one spell slot from each of up to three different spell levels that are lower than the highest-level spell that you can cast.",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Quick Preparation",
                          featType: "General",
                          prerequisites: "Ability to prepare spells.",
                          benefit: "When preparing spells, you halve the time necessary to do so.",
                          normal: "Preparing all of your spells takes 1 hour.",
                          summary: "When preparing spells, you halve the time necessary to do so.",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Renown",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When in a settlement of 5,000 people or more, treat your Fame score as 2 higher for the purposes of qualifying for Prestige Awards or purchasing equipment. This feat doesn’t grant you any additional Prestige Points.",
                          normal: "Your Fame score is determined by the total number of Prestige Points earned over the course of your career.",
                          summary: "When in a settlement of 5,000 people or more, treat your Fame score as 2 higher for the purposes of qualifying for Prestige Awards or purchasing equipment.",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Steadfast Mind",
                          featType: "General",
                          prerequisites: "Cha 15, Int 15, or Wis 15 (see special).",
                          benefit: "Whenever you fail a concentration check while casting defensively and would normally lose a prepared spell or spell slot, you may attempt a Will save (DC = 15 + spell level) to retain the spell as though you had not attempted to cast it. The failed concentration check still results in the spell’s failure, even if the spell is retained.",
                          special: "To gain the benefits of this feat, you must meet the prerequisite that matches the ability score you use to determine your save DCs, bonus spells per day, and ability to cast spells of a given level. If you gain spells from multiple classes, you must meet the prerequisite ability score for each class to gain the benefits of this feat when casting spells from that class’s spell list.",
                          summary: "Whenever you fail a concentration check while casting defensively and would normally lose a prepared spell or spell slot, you may attempt a Will save (DC = 15 + spell level) to retain the spell as…",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tapestry Traveler",
                          featType: "General",
                          prerequisites: "Character level 5th.",
                          benefit: "You cast spells of the teleportation subschool as though your caster level were 2 higher, and you treat yourself as one step more familiar when teleporting to an established Pathfinder lodge with the teleport spell. If you can teleport as a supernatural ability, you treat your class level as if it were 2 higher when calculating the total distance that you can travel with this ability.",
                          summary: "You cast spells of the teleportation subschool as though your caster level were 2 higher, and you treat yourself as one step more familiar when teleporting to an established Pathfinder lodge with the…",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Uncanny Activation",
                          featType: "General",
                          prerequisites: "Use Magic Device 12 ranks.",
                          benefit: "If you exceed the Use Magic Device DC to activate a spell completion or spell trigger item by 5 or more, you can increase the item’s caster level by 1 for determining the spell’s effect. Alternatively, if you exceed the Use Magic Device DC by 10 or more when activating a magic item with charges, you can expend an additional charge to increase the caster level by 2 levels. Regardless, you can’t increase an item’s caster level to one that is higher than your own caster level.",
                          summary: "If you exceed the Use Magic Device DC to activate a spell completion or spell trigger item by 5 or more, you can increase the item’s caster level by 1 for determining the spell’s effect.",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Underhanded Teamwork (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Improved Dirty Trick.",
                          benefit: "Whenever an ally who also has this feat performs a dirty trick combat maneuver against a foe you both threaten, you can use an immediate action to increase the inflicted condition’s duration by 1 round.",
                          summary: "Whenever an ally who also has this feat performs a dirty trick combat maneuver against a foe you both threaten, you can use an immediate action to increase the inflicted condition’s duration by 1…",
                          source: "Pathfinder Society Primer", isPremium: true)
        )
        try await db.insertFeat(
        .make("Versatile Spontaneity",
                          featType: "General",
                          prerequisites: "Int 13 or Wis 13 (see Special), ability to spontaneously cast 2nd-level spells.",
                          benefit: "When you regain spell slots at the start of the day, you may opt to prepare one spell you don’t know in place of a daily spell slot 1 level higher than the prepared spell’s level. To do so, you must have access to the selected spell on a scroll or in a spellbook, and the spell must be on your spell list (even if it is not one of your spells known). This process takes 10 minutes per spell level of the selected spell. You can cast the selected spell a single time, expending the spell slot as though it were a known spell being cast by you. Preparing a spell in this manner expends a scroll but not a spellbook. A spell prepared in this way is considered its actual level rather than the level of the spell slot expended. You can apply metamagic feats to the spell as normal, as long as the spell’s actual level plus the increases from metamagic feats is 1 level lower than the highest-level spell you can cast. For example, a 12th-level sorcerer with this feat, a scroll of fireball, and the Empower Spell metamagic feat could prepare an empowered fireball spell in her 6th-level spell slot.",
                          special: "If you spontaneously cast arcane spells, you must have an Intelligence score of at least 13 to take this feat. If you spontaneously cast divine spells, you must have a Wisdom score of at least 13 to take this feat. If you have both arcane and divine spellcasting classes, you can use this feat to prepare a spell using a given class’s spell slot as long as you meet the associated ability score prerequisite.",
                          summary: "When you regain spell slots at the start of the day, you may opt to prepare one spell you don’t know in place of a daily spell slot 1 level higher than the prepared spell’s level.",
                          source: "Pathfinder Society Primer", isPremium: true),

                    // // MARK: - Pathfinder Unchained
        )
        try await db.insertFeat(
        .make("Champion of Anarchy (Alignment)",
                          featType: "General",
                          prerequisites: "10 Hit Dice, chaotic neutral alignment.",
                          benefit: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours. You can use an affirmation to cast lesser confusion as a spell-like ability as a standard action, with a caster level equal to your Hit Dice. The duration of this effect on a failed save is 1d4 rounds. Lastly, you gain a +2 bonus on weapon and spell damage rolls against lawful creatures. This is an alignment-based effect.Residual: If you have this feat but are no longer chaotic neutral, you continue to gain the +2 bonus on weapon and spell damage against lawful creatures.",
                          summary: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Champion of Balance (Alignment)",
                          featType: "General",
                          prerequisites: "10 Hit Dice, neutral alignment.",
                          benefit: "You gain a +2 bonus on weapon and spell damage rolls against good and evil creatures. You also gain a +2 bonus on weapon and spell damage rolls against lawful and chaotic creatures. These bonuses stack with each other. Residual: You gain no benefit from this feat if you are not of neutral alignment.",
                          summary: "You gain a +2 bonus on weapon and spell damage rolls against good and evil creatures. You also gain a +2 bonus on weapon and spell damage rolls against lawful and chaotic creatures.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Champion of Destruction (Alignment)",
                          featType: "General",
                          prerequisites: "10 Hit Dice, chaotic evil alignment.",
                          benefit: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours. You can also use an affirmation to treat an effect on you from a spell, magic item, or other alignment-based effect as if you were neither chaotic nor evil. You can choose to do so after any attack roll hits you with such an effect or you fail a saving throw against such an effect. Lastly, you gain a +2 bonus on weapon and spell damage rolls against lawful and good creatures (or +4 if the creature is both lawful and good). This is an alignment-based effect.Residual: If you have this feat but you are no longer chaotic evil, you continue to gain the +2 bonus on weapon and spell damage rolls against lawful and good creatures (or +4 if the creature is both lawful and good).",
                          summary: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Champion of Freedom (Alignment)",
                          featType: "General",
                          prerequisites: "10 Hit Dice, chaotic good alignment.",
                          benefit: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours. You can also use an affirmation to gain the effects of freedom of movement for 1 round. Lastly, you gain a +2 bonus on weapon and spell damage rolls against evil and lawful creatures (or +4 if the creature is both evil and lawful). This is an alignment-based effect.Residual: If you have this feat but you are no longer chaotic good, you continue to gain the +2 bonus on weapon and spell damage rolls against evil and lawful creatures (or +4 if the creature is both lawful and evil).",
                          summary: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Champion of Grace (Alignment)",
                          featType: "General",
                          prerequisites: "10 Hit Dice, neutral good alignment.",
                          benefit: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours. You can use an affirmation and touch a creature as a standard action to remove a single condition or harmful effect from the list of paladin mercies (using your Hit Dice as your paladin level to determine which mercies you can use and their effects). Lastly, you gain a +2 bonus on weapon and spell damage rolls against evil creatures. This is an alignment-based effect.Residual: If you have this feat but you are no longer neutral good, you continue to gain the +2 bonus on weapon and spell damage rolls against evil creatures.",
                          summary: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Champion of Malevolence (Alignment)",
                          featType: "General",
                          prerequisites: "10 Hit Dice, neutral evil alignment.",
                          benefit: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours. You can use an affirmation and touch a creature as a standard action to bestow a single condition or harmful effect from the list of antipaladin cruelties (using your Hit Dice as your antipaladin level to determine which cruelties you can use and their effects). Lastly, you gain a +2 bonus on weapon and spell damage rolls against good creatures. This is an alignment-based effect.Residual: If you have this feat but you are no longer neutral evil, you continue to gain the +2 bonus on weapon and spell damage rolls against good creatures.",
                          summary: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Champion of Righteousness (Alignment)",
                          featType: "General",
                          prerequisites: "10 Hit Dice, lawful good alignment.",
                          benefit: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours. You can use an affirmation to treat the effect of a spell, magic item, or other alignment-based effect on you as if you were neither lawful nor good. You can choose to do so after any attack roll hits you with such an effect or you fail a saving throw against such an effect. Lastly, you gain a +2 bonus on weapon and spell damage rolls against chaotic and evil creatures (or +4 if the creature is both chaotic and evil). This is an alignment-based effect.Residual: If you have this feat but you are no longer lawful good, you continue to gain the +2 bonus on weapon and spell damage rolls against chaotic and evil creatures (or +4 if the creature is both chaotic and evil).",
                          summary: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Champion of Tranquility (Alignment)",
                          featType: "General",
                          prerequisites: "10 Hit Dice, lawful neutral alignment.",
                          benefit: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours. You can use an affirmation to cast calm emotions as a spell-like ability as a standard action, with a caster level equal to your Hit Dice. Lastly, you gain a +2 bonus on weapon and spell damage rolls against chaotic creatures. This is an alignment-based effect.Residual: If you have this feat but you are no longer lawful neutral, you continue to gain the +2 bonus on weapon and spell damage rolls against chaotic creatures.",
                          summary: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Champion of Tyranny (Alignment)",
                          featType: "General",
                          prerequisites: "10 Hit Dice, lawful evil alignment.",
                          benefit: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours. You can use an affirmation to cast hold person as a spell-like ability as a standard action, with a caster level equal to your Hit Dice. You gain a +2 bonus on weapon and spell damage rolls against chaotic and good creatures (or +4 if the creature is both chaotic and good). This is an alignment-based effect.Residual: If you have this feat but you are no longer lawful evil, you continue to gain the +2 bonus on weapon and spell damage rolls against chaotic and good creatures (or a +4 bonus if the creature is both chaotic and good).",
                          summary: "You can store a number of affirmations up to your Charisma bonus (minimum 1) to use at any time, not just within the next 24 hours.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Combat Stamina (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "You gain a stamina pool. After you make an attack roll with a manufactured weapon, unarmed strike, or natural weapon attack with which you are proficient, but before the results are revealed, you can spend up to 5 stamina points. If you do, you gain a competence bonus on the attack roll equal to the number of stamina points you spent. If you miss with the attack, the stamina points you spent are still lost.",
                          special: "Since you have a stamina pool, you can spend your stamina points to use any combat tricks associated with combat feats you possess.",
                          summary: "You gain a stamina pool. After you make an attack roll with a manufactured weapon, unarmed strike, or natural weapon attack with which you are proficient, but before the results are revealed, you can…",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Esoteric Abjuration (Esoteric)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you cast an abjuration spell using geodes as an esoteric material component, you can grant a single target of that spell a +1 competence bonus on its Fortitude, Reflex, or Will saving throws for the duration of the spell. The spell must have a duration measured in rounds or minutes, and a creature can benefit from no more than one bonus from this feat at a time. When you gain geodes’ greater component effect with an abjuration spell, treat your caster level as an additional 1 higher for determining the duration.",
                          summary: "When you cast an abjuration spell using geodes as an esoteric material component, you can grant a single target of that spell a +1 competence bonus on its Fortitude, Reflex, or Will saving throws for…",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Esoteric Conjuration (Esoteric)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you cast a conjuration spell using prismatic sand as an esoteric material component, select one creature summoned, called, or moved from another plane by your spell. For 1 round, that creature hasn’t fully phased onto the current plane, causing all attacks against it to suffer a 20% miss chance (attacks without attack rolls deal 20% less damage). When you gain prismatic sand’s greater component effect with a conjuration spell, treat your caster level as an additional 2 higher for determining the range. This happens regardless of whether you chose to increase range or area with the greater component effect. This feat does not allow you to further increase the size of an area.",
                          summary: "When you cast a conjuration spell using prismatic sand as an esoteric material component, select one creature summoned, called, or moved from another plane by your spell.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Esoteric Divination (Esoteric)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you cast a divination spell using verdant salts as an esoteric material component, you’re more likely to get good information. You gain one of the following benefits, as appropriate to the spell: you increase the likelihood of a percentage-based divination to work correctly by 5% (giving a –5 penalty on the d% roll for contact other plane, for example), you gain a +2 competence bonus on Perception checks while perceiving through a divination (scrying) spell such as scrying, or you can ask one additional question (with contact other plane or speak with dead). When you gain verdant salts’ greater component effect with a divination spell, increase the DC by an additional 1.",
                          summary: "When you cast a divination spell using verdant salts as an esoteric material component, you’re more likely to get good information.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Esoteric Enchantment (Esoteric)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you cast an enchantment spell using verdant salts as an esoteric material component, one target affected by your spell takes a –2 penalty on your choice of ability checks, attack rolls, damage rolls, saving throws, or skill checks for 1 round. If your spell allows a saving throw and the target succeeds at its save, it doesn’t take this penalty. A creature can be affected by only one penalty from this feat at a time. This is a mind-affecting effect. When you gain verdant salts’ greater component effect with an enchantment spell, increase the DC by an additional 1.",
                          summary: "When you cast an enchantment spell using verdant salts as an esoteric material component, one target affected by your spell takes a –2 penalty on your choice of ability checks, attack rolls, damage…",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Esoteric Evocation (Esoteric)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you cast an evocation spell using entropic resin as an esoteric material component, you can damage one creature adjacent to you. The resin deals 1 point of damage per 2 caster levels of the spell (minimum 1), and matches the damage type of your spell. When you gain entropic resin’s greater component effect with an evocation spell, treat your caster level as an additional 1 higher for determining both the damage dice of the spell and the extra damage from Esoteric Evocation. This also increases the spell’s maximum damage dice if applicable.",
                          summary: "When you cast an evocation spell using entropic resin as an esoteric material component, you can damage one creature adjacent to you.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Esoteric Illusion (Esoteric)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you cast an illusion spell using prismatic sand as an esoteric material component, the DC to disbelieve the illusion increases by 2, as does the spell’s AC, if applicable. This benefit lasts for the duration of the spell, but doesn’t affect spells with a duration of instantaneous or permanent. When you gain prismatic sand’s greater component effect with an illusion spell, treat your caster level as an additional 2 higher for determining the range. This happens regardless of whether you chose to increase range or area with the greater component effect. This feat does not allow you to further increase the size of an area.",
                          summary: "When you cast an illusion spell using prismatic sand as an esoteric material component, the DC to disbelieve the illusion increases by 2, as does the spell’s AC, if applicable.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Esoteric Necromancy (Esoteric)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you cast a necromancy spell using entropic resin as an esoteric material component, one target of that spell becomes shaken. If your spell allows a saving throw and the target succeeds at its save, it is unaffected by this effect. If the spell causes the target to become shaken or frightened, this effect doesn’t increase the severity of that condition (so a spell that frightens a creature wouldn’t instead cause it to become panicked due to this feat). This is a mind-affecting fear effect. When you gain entropic resin’s greater component effect with a necromancy spell, treat your caster level as an additional 1 higher for determining the damage dice. (This also increases the spell’s maximum damage dice if applicable.)",
                          summary: "When you cast a necromancy spell using entropic resin as an esoteric material component, one target of that spell becomes shaken.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Esoteric Transmutation (Esoteric)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you cast a transmutation spell using geodes as an esoteric material component, you gain a +2 bonus on attack rolls, ability checks, and skill checks based on your choice of Strength, Dexterity, or Constitution (you make this choice each time). This bonus lasts until the end of your next turn. When you gain geodes’ greater component effect with a transmutation spell, treat your caster level as an additional 1 higher for determining the duration.",
                          summary: "When you cast a transmutation spell using geodes as an esoteric material component, you gain a +2 bonus on attack rolls, ability checks, and skill checks based on your choice of Strength, Dexterity,…",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Stamina (Combat)",
                          featType: "General",
                          prerequisites: "Combat Stamina, base attack bonus +5.",
                          benefit: "Your stamina pool increases by 3 points.",
                          special: "You can select this feat up to three times. Each time you do, your stamina pool grows by 3 points.",
                          summary: "Your stamina pool increases by 3 points.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Push the Limits (Combat)",
                          featType: "General",
                          prerequisites: "Con 13, Combat Stamina, base attack bonus +1.",
                          benefit: "You gain a secondary stamina pool with a number of stamina points equal to your Constitution modifier. You can spend these secondary stamina points only when you have 0 stamina points in your primary stamina pool or when you are fatigued, even though you normally can’t spend stamina points while fatigued. You can spend these secondary stamina points as normal, but if the secondary pool drops to 0 points, you become exhausted until you have at least 1 stamina point in your primary pool. Even if you have points in your secondary pool, you are still fatigued as long as you have 0 points in your primary pool. Your secondary pool refreshes only after a full night’s rest.",
                          summary: "You gain a secondary stamina pool with a number of stamina points equal to your Constitution modifier.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Signature Skill",
                          featType: "General",
                          prerequisites: "5 ranks in the chosen skill.",
                          benefit: "Choose one skill. You gain the ability listed in that skill’s 5 Ranks entry. As you gain more ranks in the chosen skill, you gain additional abilities. If you have 10 or more ranks in the chosen skill, you gain the appropriate abilities immediately. If your chosen skill is Craft, Knowledge, Perform, or Profession, you gain the listed powers only for one category of that skill, such as Craft (bows). This feat can be taken only once, but it stacks with the rogue’s edge ability and the cutting edge rogue talent.",
                          summary: "Choose one skill. You gain the ability listed in that skill’s 5 Ranks entry. As you gain more ranks in the chosen skill, you gain additional abilities.",
                          source: "Pathfinder Unchained", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unstoppable Esotery (Esoteric)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you use esoteric material components as part of casting a spell, you gain a +2 bonus on concentration checks to cast that spell, and the spell is treated as though its caster level were 2 higher against attempts to dispel it. This increase is in addition to any increases due to greater component or limited magic benefits.",
                          summary: "When you use esoteric material components as part of casting a spell, you gain a +2 bonus on concentration checks to cast that spell, and the spell is treated as though its caster level were 2 higher…",
                          source: "Pathfinder Unchained", isPremium: true),

                    // // MARK: - Pathfinder: Spiral of Bones #3
        )
        try await db.insertFeat(
        .make("Psychovore Master (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Psychovore Strike, Psychovore Style, Sense Motives 15 ranks.",
                          benefit: "When you score a critical hit against the creature you are gaining a dodge bonus to AC against from Psychovore Style with your unarmed strike, that target also takes 1 point of Intelligence and Wisdom damage and you gain 2d8 temporary hit points. These temporary hit points last for 1 hour and don't stack with other temporary hit points you might gain with this feat.",
                          summary: "When you score a critical hit against the creature you are gaining a dodge bonus to AC against from Psychovore Style with your unarmed strike, that target also takes 1 point of Intelligence and…",
                          source: "Pathfinder: Spiral of Bones #3", isPremium: true)
        )
        try await db.insertFeat(
        .make("Psychovore Strike (Combat)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Psychovore Style, Sense Motive 9 ranks.",
                          benefit: "When you strike the creature you are gaining a dodge bonus to AC against from Psychovore Style with your unarmed strike, you can force that creature to attempt a Will saving throw (DC = 10 + 1/2 your character level + your Wisdom modifier), in addition to dealing damage normally. A creature who fails its save is confused for 1d6 rounds. You must declare that you are using this feat before you make your attack roll (thus, a failed attack roll ruins the attempt). You can use this ability a number of times per day equal to 1 + your Wisdom bonus (minimum once per day), and no more than once per round. This is a mind-affecting effect, and a creature confused in this way never attacks you.",
                          summary: "When you strike the creature you are gaining a dodge bonus to AC against from Psychovore Style with your unarmed strike, you can force that creature to attempt a Will saving throw (DC = 10 + 1/2 your…",
                          source: "Pathfinder: Spiral of Bones #3", isPremium: true)
        )
        try await db.insertFeat(
        .make("Psychovore Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Improved Unarmed Strike, Sense Motive 3 ranks.",
                          benefit: "When using this style, you can attempt a Sense Motive check (DC = 15 + CR of target) as a move action against a creature with an Intelligence score of 3 or higher. If you succeed, you gain a +1 dodge bonus to your AC against attacks from the target creature until you are no longer using this style. You can have this bonus against only one creature at a time: if you succeed at this Sense Motive check against another creature, you lose the bonus against the first creature. This bonus increases to +2 when you have 8 ranks in Sense Motive, and to +3 when you have 13 ranks in Sense Motive.",
                          summary: "When using this style, you can attempt a Sense Motive check (DC = 15 + CR of target) as a move action against a creature with an Intelligence score of 3 or higher.",
                          source: "Pathfinder: Spiral of Bones #3", isPremium: true),

                    // // MARK: - Pathfinder: Worldscape #1
        )
        try await db.insertFeat(
        .make("Extra Death Vow",
                          featType: "General",
                          prerequisites: "Death vow class feature.",
                          benefit: "You gain two additional uses of death vow per day.",
                          summary: "You gain two additional uses of death vow per day.",
                          source: "Pathfinder: Worldscape #1", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vengeful Death Vow",
                          featType: "General",
                          prerequisites: "Death vow class feature.",
                          benefit: "Targets of your death vow take a -2 penalty on attacks made against you.",
                          summary: "Targets of your death vow take a -2 penalty on attacks made against you.",
                          source: "Pathfinder: Worldscape #1", isPremium: true),

                    // // MARK: - People of the River
        )
        try await db.insertFeat(
        .make("Call Out (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "As a standard action, you can make an Intimidate check against a hostile target within 30 feet that can clearly see and hear you. The DC of this check is equal to 10 + your opponent’s Hit Dice + its Wisdom modifier. If the target is trained in Sense Motive, the DC is instead equal to 10 + your opponent’s Sense Motive bonus, if higher. If you succeed at this check, the target enters a duel with you (Ultimate Combat 150). The target cannot withdraw from the duel for 1 round + 1 round for every 5 by which the check beat the DC.",
                          summary: "As a standard action, you can make an Intimidate check against a hostile target within 30 feet that can clearly see and hear you.",
                          source: "People of the River", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Parry (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise.",
                          benefit: "When you successfully parry a foe’s melee attack (with a dueling parry or the parry class feature), your next melee attack against the target does not allow the enemy to apply its Dexterity bonus to AC (if any). This attack must be made before the end of your next turn.",
                          summary: "When you successfully parry a foe’s melee attack (with a dueling parry or the parry class feature), your next melee attack against the target does not allow the enemy to apply its Dexterity bonus to…",
                          source: "People of the River", isPremium: true)
        )
        try await db.insertFeat(
        .make("Leapfrog (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Acrobatics 3 ranks.",
                          benefit: "When you spend a swift action to attempt a performance combat check after a successful charge attack or combat maneuver, you gain a +2 bonus on your performance combat check and gain a +4 bonus on your next Acrobatics, Climb, Fly, Ride, or Swim check attempted before the end of your next turn.",
                          summary: "When you spend a swift action to attempt a performance combat check after a successful charge attack or combat maneuver, you gain a +2 bonus on your performance combat check and gain a +4 bonus on…",
                          source: "People of the River", isPremium: true)
        )
        try await db.insertFeat(
        .make("Second Wind (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Endurance.",
                          benefit: "When you spend a swift action to attempt a performance combat check, you gain a +2 bonus on your performance combat check, and if you are shaken, sickened, or fatigued, these conditions are suppressed until the end of your next turn.",
                          summary: "When you spend a swift action to attempt a performance combat check, you gain a +2 bonus on your performance combat check, and if you are shaken, sickened, or fatigued, these conditions are…",
                          source: "People of the River", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sweeping Dodge (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge.",
                          benefit: "When you make a dueling dodge while wearing a cloak, you gain evasion (as the rogue ability). If a critical hit or sneak attack is scored on you, there is a 25% chance that the critical hit or sneak attack is negated and damage is instead rolled normally. This feat only applies until the attack that triggered the immediate action is resolved. This feat does not stack with the fortification armor special ability or similar effects.",
                          summary: "When you make a dueling dodge while wearing a cloak, you gain evasion (as the rogue ability).",
                          source: "People of the River", isPremium: true),

                    // // MARK: - People of the Sands
        )
        try await db.insertFeat(
        .make("Horn of the Criosphinx (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +6 or monk level 6th.",
                          benefit: "Whenever you make a successful charge attack while wielding a two-handed weapon in both hands, add two times your Strength bonus to the damage roll.",
                          normal: "A character wielding a two-handed weapon adds 1-1/2 times her Strength bonus to damage rolls.",
                          special: "A monk can use this feat as long as he is wielding a two-handed weapon or both his hands are empty.",
                          summary: "Whenever you make a successful charge attack while wielding a two-handed weapon in both hands, add two times your Strength bonus to the damage roll.",
                          source: "People of the Sands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Osirionology",
                          featType: "General",
                          prerequisites: "Knowledge (history) 1 rank, Knowledge (local) 1 rank, must be able to speak Osiriani and Ancient Osiriani.",
                          benefit: "Pick one Intelligence-based skill. You gain a +3 bonus on all checks made using that skill in relation to Osirion or its people. In addition, you gain a +1 bonus on all other Intelligence-based skill checks made in relation to Osirion or its people.",
                          summary: "Pick one Intelligence-based skill. You gain a +3 bonus on all checks made using that skill in relation to Osirion or its people.",
                          source: "People of the Sands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Thuvian Grenadier (Teamwork)",
                          featType: "General",
                          prerequisites: "Precise Shot or Throw Anything.",
                          benefit: "Whenever you hit a creature with a splash weapon, you may choose to exclude one creature within the weapon’s splash area from taking splash damage. If a creature within the splash area also has this feat, it automatically ignores splash damage from your splash weapons on a successful hit. In addition, if you miss with a splash weapon and the errant weapon lands in a square occupied or adjacent to an ally with this feat, your ally can attempt a DC 20 Reflex save. If the ally succeeds, he is able to catch the weapon. If your ally also has the Snatch Arrows feat, he can toss the splash weapon back to you as an immediate action.",
                          summary: "Whenever you hit a creature with a splash weapon, you may choose to exclude one creature within the weapon’s splash area from taking splash damage.",
                          source: "People of the Sands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Undermine (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you use a combat maneuver to move a creature into or through a square adjacent to an ally with this feat, your opponent treats all squares adjacent to that ally as difficult terrain during his next turn. In addition, the DC of any of your opponent’s Acrobatics checks in the affected squares increases by 2 for each of your allies with this feat who are adjacent to him.",
                          summary: "When you use a combat maneuver to move a creature into or through a square adjacent to an ally with this feat, your opponent treats all squares adjacent to that ally as difficult terrain during his…",
                          source: "People of the Sands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wings of the Androsphinx (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Reposition, base attack bonus +1 or monk level 1st.",
                          benefit: "You gain a +2 bonus to AC against charge attacks. If a creature charges you and fails its attack roll, as an immediate action you can attempt a reposition combat maneuver (Pathfinder RPG Advanced Player’s Guide 322) to reposition that foe. If you use a readied action to attack a creature charging you, you can roll to attack and then attempt to reposition that creature as a free action before it resolves its charge attack.",
                          summary: "You gain a +2 bonus to AC against charge attacks. If a creature charges you and fails its attack roll, as an immediate action you can attempt a reposition combat maneuver (Pathfinder RPG Advanced…",
                          source: "People of the Sands", isPremium: true),

                    // // MARK: - People of the Stars
        )
        try await db.insertFeat(
        .make("Astrological Timing",
                          featType: "General",
                          prerequisites: "Ability to cast augury as a spell or spell-like ability.",
                          benefit: "You can use a cosmogram or star chart as an optional focus component for augury. When you do, the augury can account for consequences up to 1 hour into the future, and your chance of a successful reading increases by 4%. If you also consult a calculating standard orrery or calculating grand orrery, the augury can see up to 1 day into the future and your chance of success increases by 8%.",
                          summary: "You can use a cosmogram or star chart as an optional focus component for augury.",
                          source: "People of the Stars", isPremium: true)
        )
        try await db.insertFeat(
        .make("Celestial Guidance",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +2 bonus on Knowledge (geography) skill checks to learn about the stars or planets. At night, as long as the sky is clear and you can see the stars, you cannot get lost. Once per night when the stars are visible, you can reroll a Knowledge check you failed earlier in the day. When you do so, you can choose to roll the appropriate Knowledge skill check again or you can instead use your Knowledge (geography) skill to gain the same information.",
                          summary: "You gain a +2 bonus on Knowledge (geography) skill checks to learn about the stars or planets. At night, as long as the sky is clear and you can see the stars, you cannot get lost.",
                          source: "People of the Stars", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nanite Disruption",
                          featType: "General",
                          prerequisites: "Nanite surge racial trait.",
                          benefit: "As long as you are adjacent to an android, a robot, or a creature primarily made of electronic components (GM’s discretion), you can use your nanite surge ability as an immediate action to short-circuit that creature’s hardware. If you succeed at a melee touch attack and the target fails a Will save (DC = 10 + 1/2 your character level + 1/2 your Constitution modifier), it takes a penalty equal to 1 + 1/2 your level (minimum 0) on its next d20 roll. This penalty lasts until the beginning of your next turn.",
                          summary: "As long as you are adjacent to an android, a robot, or a creature primarily made of electronic components (GM’s discretion), you can use your nanite surge ability as an immediate action to…",
                          source: "People of the Stars", isPremium: true),

                    // // MARK: - People of the Wastes
        )
        try await db.insertFeat(
        .make("Agent of Purity (Story)",
                          featType: "General",
                          prerequisites: "A friend or ally must have been significantly corrupted by a specific natural or supernatural blight, or you must have a regional background trait tied to a specific blight.",
                          benefit: "Choose one type of terrain affiliated with the relevant blight. You gain a +1 bonus on Knowledge (geography) and Knowledge (nature) checks regarding the blighted terrain and can attempt those Knowledge checks untrained. You also gain a +1 bonus on attack rolls against creatures corrupted by the relevant blight, and you gain a +1 bonus on saving throws against the abilities of such creatures.Goal: Slay or cure at least 50 creatures corrupted by the relevant blight, and then slay a challenging foe closely connected to spreading the blight.",
                          special: "Once per day, you can cast any one of the following spells as a spell-like ability, using your character level as your caster level: consecrate, neutralize poison, remove curse, or remove disease.",
                          summary: "Choose one type of terrain affiliated with the relevant blight.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aligned Crafting (Item Creation)",
                          featType: "General",
                          prerequisites: "Craft Magic Arms and Armor or Craft Wondrous Item.",
                          benefit: "When you craft a magic weapon, magic armor, a magic shield, or a wondrous item, you can infuse it with a bit of your convictions. Creatures that are more than one alignment step away from you are sickened while using or wearing this item. An item that has been infused with your alignment can never have an opposing special ability added to it later (for example, a longsword infused with your lawful good alignment cannot later gain the anarchic weapon special ability). Infusing the item with your alignment in this way increases the items total construction cost by 10%.",
                          summary: "When you craft a magic weapon, magic armor, a magic shield, or a wondrous item, you can infuse it with a bit of your convictions.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Battering Ram (Grit)",
                          featType: "General",
                          prerequisites: "Craft (alchemy) 3 ranks; grit class feature or Amateur Gunslinger; pistol-whip gunslinger deed; quick clear gunslinger deed.",
                          benefit: "You can ignore the broken condition of a firearm you’re wielding to perform the pistol-whip deed. If you hit a creature with this deed, you can spend 1 grit point as an immediate action to remove the broken condition from the firearm, but only if the firearm gained that condition from a misfire.",
                          summary: "You can ignore the broken condition of a firearm you’re wielding to perform the pistol-whip deed.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Create Enhanced Firearm (Item Creation)",
                          featType: "General",
                          prerequisites: "Craft Magic Arms and Armor; Craft (weapons) 1 rank or Gunsmithing.",
                          benefit: "When you craft a firearm or magical firearm, you can use reinforced components to make the weapon more reliable. This increases the item’s total construction cost by 10%. The misfire chance of the weapon is reduced by 1. This can never reduce a firearm’s misfire chance by more than 1.",
                          summary: "When you craft a firearm or magical firearm, you can use reinforced components to make the weapon more reliable. This increases the item’s total construction cost by 10%.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elemental Conversion",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Once per day, when you cast a spell that deals acid, cold, electricity, or fire damage, you can infuse the spell with primal magic and transform its elemental energy at random. After you cast the spell but before its effects are resolved, roll 1d4 to determine the new element (1 = acid, 2 = cold, 3 = electricity, 4 = fire). If you are in an area where primal magic is predominant, you can instead use this ability once per hour.",
                          summary: "Once per day, when you cast a spell that deals acid, cold, electricity, or fire damage, you can infuse the spell with primal magic and transform its elemental energy at random.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Primal Kineticist",
                          featType: "General",
                          prerequisites: "Kineticist level 1st.",
                          benefit: "When using a simple kinetic blast in an area where primal magic is either predominant or very common, you can accept 1 point of burn to cause your blast to become one of the following simple blasts instead. Roll 1d10 to determine the simple blast: 1 = air, 2 = cold, 3 = earth, 4 = electric, 5 = fire, 6 = gravity, 7 = negative, 8 = telekinetic, 9 = water, 10 = wood. You can apply any of your form or substance infusions that are allowed as choices for the random blast, accepting the typical burn cost.",
                          summary: "When using a simple kinetic blast in an area where primal magic is either predominant or very common, you can accept 1 point of burn to cause your blast to become one of the following simple blasts…",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Primal Strike (Combat)",
                          featType: "General",
                          prerequisites: "Wis 17, Improved Unarmed Strike, base attack bonus +8.",
                          benefit: "Before making an attack roll, you can declare a primal strike. If you do and the attack hits, it deals damage normally and your target must attempt a Fortitude saving throw (DC = 10 + half your character level + your Wisdom modifier). A target who fails this saving throw is confused for 1 round. If you are in an area of primal magic, the confused condition lasts for 1d4 rounds. You can attempt a primal strike attack once per day for every 4 character levels you have (see Special below if you have monk levels), but no more than once per round. A primal strike is a mind-affecting compulsion effect.",
                          special: "If you have levels in the monk class, you can make a primal attack a number of times per day equal to your monk level, plus one additional time per day for every 4 levels you have in classes other than monk, though still no more than once per round.",
                          summary: "Before making an attack roll, you can declare a primal strike.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reinforced Crafting (Item Creation)",
                          featType: "General",
                          prerequisites: "Craft Magic Arms and Armor, ability to cast make whole or mending.",
                          benefit: "When you craft a magic weapon, magic armor, or magic shield, you can add a fortifying element to the item. This increases the item’s total construction cost by 10%. If it’s a weapon, when it becomes broken, the penalty to attack and damage rolls is reduced to –1 (this can never reduce a broken weapon’s penalty to attack and damage to 0 or a positive number). If it’s a suit of armor or a shield, when it becomes broken, the bonus it grants to AC is reduced by one-quarter, rounding down. Other drawbacks of the broken condition to weapons, armor, and shields still apply as normal. Normal: A broken weapon imposes a –2 penalty on attack and damage rolls. The bonus a broken suit of armor or a broken shield grants to AC is halved.",
                          summary: "When you craft a magic weapon, magic armor, or magic shield, you can add a fortifying element to the item. This increases the item’s total construction cost by 10%.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Runic Charge (Combat)",
                          featType: "General",
                          prerequisites: "Caster level 5th.",
                          benefit: "As long as two of your hands are free, you can cast a spell with a range of touch and deliver the spell to a single target as part of a charge action. When you do so, you gain a +2 bonus on caster level checks to overcome the target’s spell resistance, and the critical threat range of that touch attack is 19–20. This increased threat range does not stack with similar abilities such as Improved Critical.",
                          summary: "As long as two of your hands are free, you can cast a spell with a range of touch and deliver the spell to a single target as part of a charge action.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Signature Strike Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Precise Shot; Weapon Focus; base attack bonus +7; Intimidate 7 ranks; Improved Called Shot, targeted strike swashbuckler deed, or targeting gunslinger deed.",
                          benefit: "Each creature you hit using a called shot (Pathfinder RPG Ultimate Combat 193), the targeted strike swashbuckler deed, or the targeting gunslinger deed must succeed at a Will save or be shaken for 1d3 rounds (DC = 10 + half your character level + your Charisma modifier). You must be using this style and attacking with a weapon for which you have Weapon Focus to gain this benefit. This is a fear effect that doesn’t stack with itself or with other fear effects. If a creature is already shaken and you make it shaken using this feat, the duration of the shaken condition is merely extended. If this attack deals damage, you can also have the injury leave a distinctive mark, such as a letter, shape, or other simple symbol. This mark heals naturally and disappears once the target has healed the damage dealt by your attack. As a free action after the attack, you can spend 1 grit point or 1 panache point to make the mark heal as a permanent scar unless the target succeeds at a Fortitude save (DC = 10 + half your character level + your Charisma modifier). You gain a +2 bonus on Perception checks to see through the disguises of creatures that bear your mark.",
                          summary: "Each creature you hit using a called shot (Pathfinder RPG Ultimate Combat 193), the targeted strike swashbuckler deed, or the targeting gunslinger deed must succeed at a Will save or be shaken for…",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Signature Strike Taunt (Combat)",
                          featType: "General",
                          prerequisites: "Precise Shot, Signature Strike Style, Weapon Focus, base attack bonus +9, Intimidate 9 ranks.",
                          benefit: "Creatures that gain the shaken condition as a result of Signature Strike Style also take a –2 penalty to AC for the duration of the shaken condition that feat causes. While the shaken condition persists, you do not provoke attacks of opportunity when performing combat maneuvers against that target.",
                          summary: "Creatures that gain the shaken condition as a result of Signature Strike Style also take a –2 penalty to AC for the duration of the shaken condition that feat causes.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Signature Strike Triumph (Combat)",
                          featType: "General",
                          prerequisites: "Precise Shot, Signature Strike Style, Signature Strike Taunt, Weapon Focus, base attack bonus +11, Intimidate 11 ranks.",
                          benefit: "When you use Signature Strike Style to give a creature the shaken condition, increase the duration to 1d4+1 rounds. When you confirm a critical hit against a creature marked by your Signature Strike Style, one ally within 60 feet who can see you can attempt a new saving throw against one ongoing effect with the emotion, fear, or mind-affecting descriptor caused by the marked creature. If the ally succeeds at this saving throw and the effect’s remaining duration is 24 hours or less, the effect ends; if the remaining duration is more than 24 hours, the effect is suppressed for 1 minute.",
                          summary: "When you use Signature Strike Style to give a creature the shaken condition, increase the duration to 1d4+1 rounds.",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sizzling Shot (Grit)",
                          featType: "General",
                          prerequisites: "Grit class feature or Amateur Gunslinger, base attack bonus +4.",
                          benefit: "As long as you have at least 1 grit point when using a firearm to fire bullets, pellets, or similar ammunition, you can choose for half of the attack’s damage to deal fire damage and the other half to deal bludgeoning and piercing damage. If you spend 1 grit point when you declare such an attack with a firearm, you can grant the bullet or pellets fired the flaming weapon special ability for that attack only.",
                          summary: "As long as you have at least 1 grit point when using a firearm to fire bullets, pellets, or similar ammunition, you can choose for half of the attack’s damage to deal fire damage and the other half…",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spell Drinker",
                          featType: "General",
                          prerequisites: "Con 13; Great Fortitude, Iron Will, or Lightning Reflexes.",
                          benefit: "Once per hour, as an immediate action after you succeed at a saving throw against a creature’s spell or spell-like ability, you gain a number of temporary hit points equal to 1d6 plus the spell’s level for 1 minute. While these temporary hit points last, you gain a +2 bonus on saving throws against spells and spell-like abilities cast by that creature. If you have 10 or more Hit Dice, the number of temporary hit points you gain from this feat doubles. These temporary hit points stack with those gained from other sources, but not with each other.",
                          summary: "Once per hour, as an immediate action after you succeed at a saving throw against a creature’s spell or spell-like ability, you gain a number of temporary hit points equal to 1d6 plus the spell’s…",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stock-Striker Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Pistol-whip gunslinger deed.",
                          benefit: "When you perform the pistol-whip deed while using this style, you gain a +1 bonus on the attack roll and on the combat maneuver check to knock the target prone; this increases to +2 when you use a two-handed firearm. If you successfully knock the target prone, you do not provoke attacks of opportunity from the target until the end of your next turn when you make ranged attacks with your firearm. You can treat one-handed firearms as light weapons for the purpose of abilities such as Weapon Finesse when performing the pistol-whip deed.",
                          summary: "When you perform the pistol-whip deed while using this style, you gain a +1 bonus on the attack roll and on the combat maneuver check to knock the target prone; this increases to +2 when you use a…",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stock-Striker Sweep (Combat)",
                          featType: "General",
                          prerequisites: "Stock-Striker Style, base attack bonus +7, pistol-whip gunslinger deed.",
                          benefit: "When you are using Stock-Striker Style and successfully knock a target prone with the pistol-whip deed, as a swift action you can either push the target 5 feet away from you or perform the pistol-whip deed a second time against a foe that is adjacent to the first and within your reach. This second use of pistol-whip costs 0 grit points.",
                          summary: "When you are using Stock-Striker Style and successfully knock a target prone with the pistol-whip deed, as a swift action you can either push the target 5 feet away from you or perform the…",
                          source: "People of the Wastes", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stock-Striker Takedown (Combat)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, Stock-Striker Style, Stock-Striker Sweep, base attack bonus +9, pistol-whip gunslinger deed.",
                          benefit: "After you knock a target prone with the pistol-whip deed while using Stock-Striker Style, you can fire one barrel of a loaded firearm you’re wielding at the target as a move action; if your firearm has the scatter weapon quality, you can instead make a scattering shot so long as you include the target in the area of effect. For this attack, you take no attack penalty for making a ranged attack against a prone target, and the critical multiplier of your weapon increases by 1 (to a maximum of ×5).",
                          summary: "After you knock a target prone with the pistol-whip deed while using Stock-Striker Style, you can fire one barrel of a loaded firearm you’re wielding at the target as a move action; if your firearm…",
                          source: "People of the Wastes", isPremium: true),

                    // // MARK: - Planar Adventures
        )
        try await db.insertFeat(
        .make("Apocalyptic Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can alter a spell with an area of effect and a duration of instantaneous to become an apocalyptic spell. When you cast the spell, the area affected by the spell’s instantaneous effect becomes ruined and devastated in appearance. All surfaces in the area are treated as difficult terrain, and Climb, Fly, and Swim checks attempted in the area take a penalty equal to the spell’s original spell level. The difficult terrain and skill penalties last for a number of rounds equal to the spell’s original spell level. An apocalyptic spell gains the evil descriptor. An apocalyptic spell uses a spell slot 1 level higher than the spell’s normal spell level. Spells with the good descriptor can’t be apocalyptic spells.",
                          summary: "You can alter a spell with an area of effect and a duration of instantaneous to become an apocalyptic spell.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Authoritative Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can alter any spell that targets a single creature to become an authoritative spell. When you cast an authoritative spell, choose one of the following activities to prohibit: move closer to you, move away from you, make a melee weapon attack, make a ranged weapon attack, cast an offensive spell, or cast a nonoffensive spell. A creature that is affected by the spell and fails its saving throw against that spell (if the spell allows a saving throw to resist) cannot perform any action of the selected type on its next turn. An authoritative spell gains the lawful descriptor, and the additional effect is a mind-affecting compulsion effect. An authoritative spell uses a spell slot 2 levels higher than the spell’s normal spell level. Spells with the chaotic descriptor can’t be authoritative spells.",
                          summary: "You can alter any spell that targets a single creature to become an authoritative spell.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Axiomatic Discourse (Conduit)",
                          featType: "General",
                          prerequisites: "Diplomacy 3 ranks, Knowledge (planes) 3 ranks.",
                          benefit: "You can activate this feat’s benefits as part of a Diplomacy check to influence a creature’s attitude (before determining the outcome). If you fail the Diplomacy check, the target’s attitude towards you does not decrease unless you fail the check by 10 or more. Also, you can attempt a Diplomacy check to influence creatures that do not understand your language, but you take a –4 penalty on the check. Once per day for every 5 ranks you have in Knowledge (planes), you can attempt a Diplomacy check twice and take the better result.",
                          summary: "You can activate this feat’s benefits as part of a Diplomacy check to influence a creature’s attitude (before determining the outcome).",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Azata Mischief (Combat)",
                          featType: "General",
                          prerequisites: "Agile Maneuvers, Azata Style, Dodge, Mobility, base attack bonus +6.",
                          benefit: "While using Azata Style, whenever an opponent misses you with an attack of opportunity provoked by your movement through its threatened squares, you can attempt a trip combat maneuver against that creature at the end of your turn as a swift action, provided you are still adjacent to the creature when you end your movement for the round. This trip attempt does not provoke attacks of opportunity. You gain a bonus on your combat maneuver check equal to any bonuses to AC you gain against attacks of opportunity provoked by movement (such as that granted by the Mobility feat).",
                          summary: "While using Azata Style, whenever an opponent misses you with an attack of opportunity provoked by your movement through its threatened squares, you can attempt a trip combat maneuver against that…",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Azata Sprint (Combat)",
                          featType: "General",
                          prerequisites: "Agile Maneuvers, Azata Mischief, Azata Style, Dodge, Mobility, Wind Stance, base attack bonus +10.",
                          benefit: "While using Azata Style, your base speed increases by 10 feet and you ignore the movement penalties applied by the first 10 feet of difficult terrain you move through in the round.",
                          summary: "While using Azata Style, your base speed increases by 10 feet and you ignore the movement penalties applied by the first 10 feet of difficult terrain you move through in the round.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Azata Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Dodge, Mobility, base attack bonus +2.",
                          benefit: "While using this style, during any round in which you move at least 15 feet, you gain a +1 dodge bonus to your AC. This bonus lasts until the beginning of your next turn.",
                          summary: "While using this style, during any round in which you move at least 15 feet, you gain a +1 dodge bonus to your AC. This bonus lasts until the beginning of your next turn.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blazing Aura (PA) (Combat, Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 3 ranks.",
                          benefit: "As a standard action, you can shroud yourself in fire. Until the end of your turn, whenever a creature makes a successful melee attack against you, that creature takes a number of points of fire damage equal to 1d6 plus half your ranks in Knowledge (planes); attacks made using reach weapons ignore this effect. A creature can halve this fire damage with a successful Reflex save (DC = 10 + half your level + your Constitution modifier). You can use this feat’s benefit a number of times per day equal to your ranks in Knowledge (planes). If you have at least 9 ranks in Knowledge (planes), activating this ability is a move action. If you have at least 15 ranks in Knowledge (planes), you can activate this ability as a move action or a swift action.",
                          summary: "As a standard action, you can shroud yourself in fire. Until the end of your turn, whenever a creature makes a successful melee attack against you, that creature takes a number of points of fire…",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blissful Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can alter any spell that targets a single creature to become a blissful spell, although the exact effects of the metamagic vary depending on whether the spell is beneficial or offensive. A creature successfully hit by an offensive blissful spell (if the spell requires an attack roll) or that fails its saving throw against an offensive blissful spell takes a –2 penalty on attack rolls and weapon damage rolls for 1 round. A beneficial blissful spell instead grants affected creatures a +2 morale bonus on skill checks and saving throws for 1 round in addition to its normal effects. A blissful spell gains the good descriptor, and the additional effect is a mind-affecting compulsion effect. A blissful spell uses a spell slot 1 level higher than the spell’s normal spell level. Spells with the evil descriptor can’t be blissful spells.",
                          summary: "You can alter any spell that targets a single creature to become a blissful spell, although the exact effects of the metamagic vary depending on whether the spell is beneficial or offensive.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channel Deific Essence",
                          featType: "General",
                          prerequisites: "Alignment Channel, channel energy 5d6, domain class feature, same alignment as patron deity.",
                          benefit: "As a standard action, you can expend a use of channel energy to select a domain you have. You gain the ability associated with that domain from the invoke deity spell for a number of rounds equal to your number of channel energy dice. While this ability is active, taking actions directly opposed to your deity’s teachings or alignment causes you to take the penalties listed in invoke deity and ends this effect. You can gain only one ability from this feat at a time, and its effects do not stack with invoke deity. If you instead expend two uses of channel energy, you can instead infuse a single willing target within 30 feet with deific essence. The target need not be a worshiper of your deity, but is subject to the same penalties if it takes actions directly opposed to your deity’s teachings or alignment.",
                          summary: "As a standard action, you can expend a use of channel energy to select a domain you have.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Chaos Reigns (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 3 ranks.",
                          benefit: "As a swift action, you can allow Abyssal wrath to overtake you. While in this state, you can use one of your hands as a slam natural attack that deals 1d6 points of damage (or 1d4 for Small creatures). A creature that does not have hands can instead use a different part of its body to make this slam attack. You can use this feat’s benefit for a number of minutes per day equal to your ranks in Knowledge (planes). These minutes need not be consecutive, but they must be spent in 1-minute increments.",
                          summary: "As a swift action, you can allow Abyssal wrath to overtake you.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crypt Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can enhance any spell that inflicts hit point damage to become a crypt spell. A creature that dies within 1 round of being damaged by a crypt spell is considered to have been killed by a death effect for the purpose of being returned to life. An undead creature damaged by a crypt spell gains the sickened condition for a number of rounds equal to the spell’s original spell level; this duration is halved if the undead creature succeeds at its saving throw against the spell. If the spell does not allow a save, the target can attempt a Will save to negate the sickened effect. A crypt spell gains the death descriptor. A crypt spell uses a spell slot 1 level higher than the spell’s normal spell level.",
                          summary: "You can enhance any spell that inflicts hit point damage to become a crypt spell.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Death Field (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 5 ranks.",
                          benefit: "As a move action, you can exude deadly energy from your body. While this death field is in effect, small plants wither and recoil from you, allowing you to ignore the effects of difficult terrain caused by plant life and ignore the effects of spells like entangle that compel vegetation to grasp at you, provided the spell’s level is 3rd or lower (the death field cannot affect more powerful plant magic). Any swarm that enters your space takes 1d6 points of negative energy damage; this damage is applied before you are affected by any swarm attacks, so if the damage is enough to destroy the swarm, it does not harm you. At the end of your turn each round the death field is active, you take 1 point of negative energy damage, and you cannot be healed by positive energy effects while the death field is in place. Magic items and spells that protect against negative energy damage do not protect against this damage, but if you are undead or have negative energy affinity (or a similar ability), the death field instead grants fast healing 1 while it is in effect. You can use this feat’s benefit for a number of rounds per day equal to your ranks in Knowledge (planes). These rounds need not be consecutive. If you have at least 11 ranks in Knowledge (planes), you can activate your death field as a swift action.",
                          summary: "As a move action, you can exude deadly energy from your body. While this death field is in effect, small plants wither and recoil from you, allowing you to ignore the effects of difficult terrain…",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Demonic Momentum (Combat)",
                          featType: "General",
                          prerequisites: "Demonic Style, Improved Bull Rush, Power Attack, base attack bonus +5.",
                          benefit: "While using Demonic Style, when you successfully bull rush an opponent as part of a charge, you gain a +2 bonus on melee weapon damage rolls against that opponent for every 5 feet it was moved by your bull rush. This bonus lasts until the end of your next turn, and it stacks with the damage bonus granted by Demonic Style.",
                          summary: "While using Demonic Style, when you successfully bull rush an opponent as part of a charge, you gain a +2 bonus on melee weapon damage rolls against that opponent for every 5 feet it was moved by…",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Demonic Slaughter (Combat)",
                          featType: "General",
                          prerequisites: "Cleave, Demonic Momentum, Demonic Style, Great Cleave, Improved Bull Rush, Power Attack, base attack bonus +9.",
                          benefit: "While using Demonic Style, when you successfully bull rush an opponent as part of a charge, you can immediately use Great Cleave as though you had used a standard action to do so. This occurs after the effect of your bull rush is fully resolved. The target of your bull rush must be the target of the first attack you make as part of Great Cleave.",
                          summary: "While using Demonic Style, when you successfully bull rush an opponent as part of a charge, you can immediately use Great Cleave as though you had used a standard action to do so.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Demonic Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Power Attack, base attack bonus +1.",
                          benefit: "While using this style, when you use the charge action, the bonus on your attack roll increases by 1 and you deal 2 additional points of damage with melee attacks made as part of the charge.",
                          special: "If you have the rage or bloodrage class feature, you can enter Demonic Style’s stance as part of the free action to enter a rage. If you do, the style stance ends when your rage ends.",
                          summary: "While using this style, when you use the charge action, the bonus on your attack roll increases by 1 and you deal 2 additional points of damage with melee attacks made as part of the charge.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Diabolic Humiliation (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes, Diabolic Style; Vital Strike; Improved Unarmed Strike or Weapon Focus (unarmed strike); base attack bonus +8 or monk level 7th.",
                          benefit: "When you successfully stagger a foe with an unarmed strike using Diabolic Style, the target becomes further humiliated. The target cannot gain the benefit of any morale bonus for 1 minute after being staggered in this way, and for the duration of that minute, any additional staggered effects it suffers from your attacks of opportunity last for 2 rounds rather than 1. The durations of multiple staggered effects administered in this way stack.",
                          special: "A monk of at least 10th level with this feat can select Improved Vital Strike as a monk bonus feat.",
                          summary: "When you successfully stagger a foe with an unarmed strike using Diabolic Style, the target becomes further humiliated.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Diabolic Judgement (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes; Diabolic Humiliation; Diabolic Style; Improved Vital Strike; Vital Strike; Improved Unarmed Strike or Weapon Focus (unarmed strike); base attack bonus +12 or monk level 11th.",
                          benefit: "While using Diabolic Style, the first time each round that you successfully hit with an attack of opportunity, you can apply the effects of any Vital Strike feat you have to that attack.",
                          special: "A monk of at least 14th level with this feat can select Greater Vital Strike as a monk bonus feat.",
                          summary: "While using Diabolic Style, the first time each round that you successfully hit with an attack of opportunity, you can apply the effects of any Vital Strike feat you have to that attack.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Diabolic Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Combat Reflexes; Improved Unarmed Strike or Weapon Focus (unarmed strike); base attack bonus +2 or monk level 1st.",
                          benefit: "While using this style, you can make an attack of opportunity with an unarmed strike to deliver a humiliating swat to the target. If you hit the target, you inflict 1 point of nonlethal damage and the target must succeed at a Will saving throw (DC = 10 + half your level + your Charisma modifier) or become staggered for 1 round.",
                          special: "A monk of at least 6th level with this feat can select Vital Strike as a monk bonus feat.",
                          summary: "While using this style, you can make an attack of opportunity with an unarmed strike to deliver a humiliating swat to the target.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flickering Step (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 9 ranks.",
                          benefit: "You can use dimension door as a spell-like ability with a caster level equal to your ranks in Knowledge (planes). You can’t teleport a distance greater than twice your base speed in this way, and you must have both line of sight and line of effect to your destination. You can use this feat’s benefit once per day, plus an additional time per day for every 5 ranks you have in Knowledge (planes).",
                          special: "A fighter with this feat treats Dimensional Agility and any feat that lists it as a prerequisite as though they were combat feats when selecting fighter bonus feats.",
                          summary: "You can use dimension door as a spell-like ability with a caster level equal to your ranks in Knowledge (planes).",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gloomstorm (Combat, Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 4 ranks, shadow weapon class feature.",
                          benefit: "As a swift action, you can thin the barriers between yourself and the Shadow Plane, allowing you to create shadow weapons more easily. While this effect is active, you can create new shadow weapons as a free action. This does not increase the number of shadow weapons you can maintain at a single time. You can use this feat’s benefit for a number of rounds per day equal to your ranks in Knowledge (planes). These rounds need not be consecutive.",
                          summary: "As a swift action, you can thin the barriers between yourself and the Shadow Plane, allowing you to create shadow weapons more easily.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gravitational Vital Strike (Combat)",
                          featType: "General",
                          prerequisites: "Vital Strike; Heavy Gravity Acclimation or Light Gravity Acclimation.",
                          benefit: "When using any Vital Strike feat in an area of light or heavy gravity, roll the weapon’s damage dice for the attack one additional time. For example, if using Improved Vital Strike, you would roll the weapon’s damage dice for the attack four times before adding other damage bonuses, instead of three times. You must have the appropriate prerequisite feat associated with the plane’s gravity trait to gain this benefit.",
                          summary: "When using any Vital Strike feat in an area of light or heavy gravity, roll the weapon’s damage dice for the attack one additional time.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Planar Infusion (Conduit)",
                          featType: "General",
                          prerequisites: "Improved Planar Infusion, Planar Infusion, character level 13th.",
                          benefit: "Choose a plane for which you’ve gained an improved infusion via Improved Planar Infusion. You gain that plane’s greater infusion as well.",
                          summary: "Choose a plane for which you’ve gained an improved infusion via Improved Planar Infusion. You gain that plane’s greater infusion as well.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Subjective Slam (Combat)",
                          featType: "General",
                          prerequisites: "Con 15; Wis 15; Subjective Mobility; Subjective Slam; base attack bonus +8 or monk level 7th.",
                          benefit: "When using Subjective Slam, you take only a –1 penalty on the combat maneuver check for every 100 feet of falling speed, and the maximum damage for such a slam increases to 12d6.",
                          summary: "When using Subjective Slam, you take only a –1 penalty on the combat maneuver check for every 100 feet of falling speed, and the maximum damage for such a slam increases to 12d6.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Healer's Hands (Conduit)",
                          featType: "General",
                          prerequisites: "Heal 1 rank, Knowledge (planes) 1 rank.",
                          benefit: "You can use the Heal skill to treat deadly wounds as a full-round action. You do not take a penalty for not using a healer’s kit when treating deadly wounds this way, and you can do so on a given creature more than once per day. When treating deadly wounds this way, if your result exceeds the DC by 10 or more, add your ranks in Knowledge (planes) to the damage healed. These benefits do not apply to creatures that are not healed by positive energy. You can use this feat’s benefit a number of times per day equal to your ranks in Knowledge (planes).",
                          summary: "You can use the Heal skill to treat deadly wounds as a full-round action.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Heaven's Light (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 1 rank.",
                          benefit: "As a standard action, you can emit an aura of bright light centered on a glowing halo above or behind your head. The illumination provided is equal in intensity to that of a torch. If you have at least 5 ranks in Knowledge (planes) the illumination is equivalent to that created by a daylight spell. If you have at least 15 ranks in Knowledge (planes), the light becomes further infused with Heavenly power, and each evil creature within 30 feet of you must succeed at a Fortitude save (DC = 10 + half your level + your Charisma modifier) or become sickened by the light for as long as it remains in range plus 1 additional round after leaving the area. You can use this feat’s benefit for a number of rounds per day equal to your ranks in Knowledge (planes). These rounds need not be consecutive.",
                          summary: "As a standard action, you can emit an aura of bright light centered on a glowing halo above or behind your head. The illumination provided is equal in intensity to that of a torch.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Heavy Gravity Acclimation",
                          featType: "General",
                          prerequisites: "Str 17 or Endurance.",
                          benefit: "You do not take the normal penalties for being on heavy gravity planes. At the GM’s discretion, this effect may apply to certain environments on the Material Plane, such as high-gravity planets. In addition, your Strength is considered to be 4 higher for the purpose of determining your carrying capacity.",
                          summary: "You do not take the normal penalties for being on heavy gravity planes. At the GM’s discretion, this effect may apply to certain environments on the Material Plane, such as high-gravity planets.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hollow Soul (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 9 ranks.",
                          benefit: "As a move action, you can enter a state of emotional and spiritual hollowness. While in this state, you react to positive and negative energy as if you were undead— positive energy harms you, while negative energy heals you. Whenever you are targeted by an effect that specifically affects living creatures or undead creatures, or that affects both in different ways, you have a 50% chance to count as an undead creature rather than a living creature. You are immune to effects that specifically target your soul (such as trap the soul). However, while under the effect of this feat, you cannot benefit from beneficial mind-affecting effects, morale bonuses, or bardic performances. You can use this feat’s benefit for a number of minutes per day equal to your ranks in Knowledge (planes). These minutes need not be consecutive, but they must be spent in 1-minute increments.",
                          summary: "As a move action, you can enter a state of emotional and spiritual hollowness.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Planar Infusion (Conduit)",
                          featType: "General",
                          prerequisites: "Planar Infusion, character level 7th.",
                          benefit: "Choose a plane you’ve gained an infusion from via Planar Infusion. You now gain that plane’s improved infusion as well.",
                          summary: "Choose a plane you’ve gained an infusion from via Planar Infusion. You now gain that plane’s improved infusion as well.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Plane Shift",
                          featType: "General",
                          prerequisites: "Wizard level 9th.",
                          benefit: "Add plane shift to your spell list and to your spellbook as a 5th-level wizard spell. The time required for you to identify a portal’s destination is reduced to 1 round. In addition, you automatically identify any plane on which you arrive.",
                          normal: "Plane shift is a 7th-level wizard spell.",
                          special: "A wizard can select this as a wizard bonus feat.",
                          summary: "Add plane shift to your spell list and to your spellbook as a 5th-level wizard spell. The time required for you to identify a portal’s destination is reduced to 1 round.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lashing Tail (Combat)",
                          featType: "General",
                          prerequisites: "Grasping Tail, you must have a tail.",
                          benefit: "You gain a tail slap natural attack that deals damage as appropriate for your size (1d6 points for a Medium creature, or 1d4 points for a small creature). When you first gain this feat, choose bludgeoning, piercing, or slashing; this is the type of damage your tail inflicts, and it cannot be later changed. Due to the inherent awkwardness of attacking with your tail, you can’t make a tail slap attack and other natural weapon attacks as part of the same full attack. Treat your tail slap attack as a secondary attack if you also attack with a manufactured weapon as part of a full-attack action.",
                          summary: "You gain a tail slap natural attack that deals damage as appropriate for your size (1d6 points for a Medium creature, or 1d4 points for a small creature).",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Last Rites (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 3 ranks, Knowledge (religion) 3 ranks.",
                          benefit: "As a standard action, you can make a melee touch attack against any haunt or against an undead creature with the resurrection vulnerability weakness. This touch attack deals 3d6 points of positive energy damage to the undead creature or haunt (ignoring damage reduction and hardness); a creature damaged this way is staggered for 1 round. You must have detected the haunt with a successful skill check or identified the undead creature with a successful Knowledge (religion) check to use this ability. You can use this feat’s benefit once per day, plus an additional time per day for every 5 ranks you have in Knowledge (planes). In addition, the amount of damage you deal with this ability increases by 1d6 for every 5 ranks you have in Knowledge (planes).",
                          summary: "As a standard action, you can make a melee touch attack against any haunt or against an undead creature with the resurrection vulnerability weakness.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Light Gravity Acclimation",
                          featType: "General",
                          prerequisites: "Dex 13, Acrobatics 3 ranks.",
                          benefit: "Your land speed increases by 10 feet while on a plane with light gravity, and other creatures do not gain a circumstance bonus on attack rolls against you from light gravity. At the GM’s discretion, these effects might apply to certain environments on the Material Plane, such as low-gravity planets. In addition, you gain a +2 bonus on Acrobatics checks; if you have 10 or more ranks in Acrobatics, this bonus increases to +4. This bonus does not stack with that provided by the Acrobatic feat.",
                          summary: "Your land speed increases by 10 feet while on a plane with light gravity, and other creatures do not gain a circumstance bonus on attack rolls against you from light gravity.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Malleable Form (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 7 ranks.",
                          benefit: "As a full-round action, you can infuse yourself with protoplasm, converting your body and equipment to a semi-gelatinous state. You gain the compression universal monster ability, which allows you to move through an area as small as one-quarter your space without squeezing or oneeighth your space when squeezing. You also gain a bonus to your CMD against grapple and trip combat maneuvers equal to half your ranks in Knowledge (planes). Due to your form’s softness and instability, your attacks with manufactured weapons, natural weapons, and unarmed strikes deal half damage while you are in malleable form. This effect offers no protection against critical hits or precision damage. You can use this feat’s benefit for a number of minutes per day equal to your ranks in Knowledge (planes). These minutes need not be consecutive, but they must be spent in 1-minute increments.",
                          summary: "As a full-round action, you can infuse yourself with protoplasm, converting your body and equipment to a semi-gelatinous state.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mischievous Tail",
                          featType: "General",
                          prerequisites: "Dex 15, Grasping Tail, you must have a tail.",
                          benefit: "You can use your tail for all purposes as though it were a free hand, though you cannot effectively wield weapons or shields with it (you can still carry such objects with your tail, as long as such an object could also be comfortably carried in a hand normally). In addition, you gain a +2 bonus on disarm and steal combat maneuvers and Sleight of Hand checks performed using only your tail, and combat maneuvers performed this way do not provoke attacks of opportunity.",
                          summary: "You can use your tail for all purposes as though it were a free hand, though you cannot effectively wield weapons or shields with it (you can still carry such objects with your tail, as long as such…",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Open Conduit",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 5 ranks or outsider with the native subtype.",
                          benefit: "Select a conduit feat you have. When determining the uses per day or the amount of time per day you can use this conduit feat, you are treated as though you had an additional 5 ranks in Knowledge (planes). This does not offer any other benefit or affect other uses of Knowledge (planes).",
                          special: "You can select this feat more than once. Its effects do not stack. Each time you select it, choose another conduit feat to gain its benefits.",
                          summary: "Select a conduit feat you have. When determining the uses per day or the amount of time per day you can use this conduit feat, you are treated as though you had an additional 5 ranks in Knowledge…",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Peace of Mind (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 3 ranks.",
                          benefit: "As an immediate action when you fail a saving throw against an emotion, fear, or pain effect, you can ignore the effect and instead become dazed for an amount of time equal to twice the duration of the original effect. Any nonlethal damage you would have taken from the original effect is reduced to its minimum value (as though a 1 had been rolled on all dice). You cannot activate this ability if you are currently dazed. You can use this feat’s benefit once per day, plus an additional time per day for every 5 ranks you have in Knowledge (planes).",
                          summary: "As an immediate action when you fail a saving throw against an emotion, fear, or pain effect, you can ignore the effect and instead become dazed for an amount of time equal to twice the duration of…",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Phase Strike (Combat, Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 10 ranks.",
                          benefit: "As a move action, you can phase out one manufactured weapon or piece of ammunition you are holding. The next melee attack or thrown ranged attack you make with that weapon before the end of your turn is resolved as a touch attack and ignores cover, but does not ignore armor bonuses from force effects. You can attack through total cover this way, although you must still select the correct square for your target. You can use this feat’s benefit once per day, plus an additional time per day for every 10 ranks you have in Knowledge (planes). This feat does not function on planes that are not coterminous with the Ethereal Plane.",
                          summary: "As a move action, you can phase out one manufactured weapon or piece of ammunition you are holding.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Planar Heritage",
                          featType: "General",
                          prerequisites: "Human.",
                          benefit: "Choose one type of native outsider (such as ganzi). You count as both human and that race for any effects related to race. For example, if you choose ganzi, you are considered both a human and a ganzi for the purposes of taking traits, meeting feat prerequisites, determining how spells and magic items affect you, and so on. You must have the requisite physical features to gain certain benefits, as determined by the GM (for example, you cannot gain feats that augment your tail’s abilities if you do not actually have a tail).",
                          special: "You cannot select Planar Heritage if you already have an ability or feat (like Racial Heritage) that adjusts your heritage in this way.",
                          summary: "Choose one type of native outsider (such as ganzi). You count as both human and that race for any effects related to race.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Planar Infusion (Conduit)",
                          featType: "General",
                          prerequisites: "You must spend a significant amount of time on a plane other than your home plane or the Material Plane. Typically, this amount of time should coincide with an adventure set on that plane, but at the GM’s discretion, you can qualify for this feat in other ways, such as by being subjected to a powerful planar effect via the influence of an artifact associated with that plane, being exposed to raw energies from the plane, or even by dying on another plane and being brought back to life in that reality.",
                          benefit: "Your body, mind, or soul gains a benefit of some sort as a result of your infusion with the plane of your choice for which you meet the prerequisite. Details on planar infusions can be found below. Planar infusions that take actions to activate are supernatural abilities unless they specifically allow for the use of a spell, in which case they are spell-like abilities. Your caster level for spell-like abilities granted by a planar infusion is equal to your Hit Dice (maximum CL 20th). All other planar infusions are extraordinary abilities.",
                          special: "You can take this feat multiple times. Each time you do, you must select another plane for which you qualify. In cases where the specific effects of Planar Infusion are identical, the effects do not stack.",
                          summary: "Your body, mind, or soul gains a benefit of some sort as a result of your infusion with the plane of your choice for which you meet the prerequisite. Details on planar infusions can be found below.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Planar Survivor",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 3 ranks, Survival 3 ranks.",
                          benefit: "You gain a +2 bonus on Survival checks on planes other than the Material Plane and a +2 bonus on saving throws against hazards encountered in such environments. If you have 10 or more ranks in Survival, the bonus on Survival checks increases to +4. This bonus does not stack with the bonus granted by the Self-Sufficient feat.",
                          summary: "You gain a +2 bonus on Survival checks on planes other than the Material Plane and a +2 bonus on saving throws against hazards encountered in such environments.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Planewalker's Insight",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +2 bonus on Knowledge (planes) checks and on Sense Motive checks against outsiders, and Knowledge (planes) is a class skill for you. If you have 10 or more ranks in either of these skills, the bonus for that skill increases to +4. These bonuses do not stack with those granted by the Alertness or Scholar feats.",
                          summary: "You gain a +2 bonus on Knowledge (planes) checks and on Sense Motive checks against outsiders, and Knowledge (planes) is a class skill for you.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Primal Bloom (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 10 ranks.",
                          benefit: "As a standard action, you can create a 50-foot-radius spread of primal fey influence centered on yourself. This area is stationary and lasts for 1 minute. The affected area gains the wild magic planar trait (see page 63), except that the DC of the caster level check increases by 5. If the area already has the wild magic planar trait, the DC of the caster level check increases by 10 instead. You can use this feat once per day, plus an additional time per day once you have 15 ranks in Knowledge (planes) and three times per day once you have 20 ranks in Knowledge (planes).",
                          summary: "As a standard action, you can create a 50-foot-radius spread of primal fey influence centered on yourself. This area is stationary and lasts for 1 minute.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Shadow's Shroud (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 5 ranks.",
                          benefit: "As a swift action, you can shroud yourself in shifting, camouflaging shadow. While shrouded in this fashion, you can attempt Stealth checks as though you had concealment, even in areas of normal or bright light. Creatures that can see normally in supernatural darkness can still see you normally. You can use this feat’s benefit for a number of rounds per day equal to your ranks in Knowledge (planes). These rounds need not be consecutive.",
                          special: "Unlike spells like shadow walk, which require you to be on a plane that is coterminous with the Shadow Plane, this feat functions even on planes that do not normally share a border with the Shadow Plane. Like all conduit feats, the effects are suppressed when planar travel is forbidden.",
                          summary: "As a swift action, you can shroud yourself in shifting, camouflaging shadow.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stony Rampart (Combat, Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 3 ranks.",
                          benefit: "As a standard action, you can call forth a low wall of unworked stone along any side of a square within 30 feet. This wall is 5 feet long, 3 feet high, 2 inches thick, and acts as a low obstacle, except that it provides only partial cover. A single 5-foot section of stone created by this feat has hardness 8 and 30 hp. You can only have one such wall in existence at a time for every 5 ranks in Knowledge (planes) you have (minimum 1); walls last for a number of rounds equal to your ranks in Knowledge (planes) before crumbling to dust. If you have 10 or more ranks in Knowledge (planes), you can create multiple walls as a single standard action by expending an equivalent number of uses of this ability. You can use this feat’s benefit a number of times per day equal to your ranks in Knowledge (planes).",
                          summary: "As a standard action, you can call forth a low wall of unworked stone along any side of a square within 30 feet.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stygian Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can enhance any spell with the water descriptor that targets at least one creature to become a Stygian spell. Any creature successfully hit by a Stygian spell (if the spell requires an attack roll) or that fails its saving throw against a Stygian spell must succeed at a Will save (using the save DC of the original spell) or suffer the fugue lesser madness in addition to the spell’s normal effects. If the attack is a confirmed critical hit or the original saving throw result is a natural 1, the creature must instead succeed at a Will save (again using the same DC) or suffer the amnesia greater madness. Madness gained this way lasts indefinitely, but can be treated using the normal methods for curing madness. This is a mind-affecting effect, and creatures native to the River Styx are immune to it. A spell modified by this feat gains the evil descriptor. A Stygian spell uses a spell slot 2 levels higher than the spell’s normal spell level. Spells with the good descriptor can’t be Stygian spells.",
                          summary: "You can enhance any spell with the water descriptor that targets at least one creature to become a Stygian spell.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Subjective Mobility",
                          featType: "General",
                          prerequisites: "Wis 13.",
                          benefit: "You automatically succeed at Wisdom checks to set a new direction of gravity. When you set a new direction of gravity, you can reduce your falling speed by up to twothirds (to a minimum of 50 feet on the first round and 100 feet per round thereafter) or increase it to a maximum of twice normal (300 feet on the first round and 600 feet per round thereafter). These effects only apply on planes with subjective directional gravity.",
                          summary: "You automatically succeed at Wisdom checks to set a new direction of gravity.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Subjective Slam (Combat)",
                          featType: "General",
                          prerequisites: "Con 13; Wis 13; Subjective Mobility; base attack bonus +4 or monk level 3rd.",
                          benefit: "While on a plane with subjective directional gravity, you halve all damage you take from impacts (such as falling damage). While on such a plane, if your “fall” would cause you to collide with a creature or object, you can slam into it with devastating force as a standard action. You must succeed at a touch attack to slam a creature or object, with a cumulative –1 penalty for every 50 feet of your current falling speed; at the GM’s discretion, you can automatically hit vast objects such as walls. A creature or object hit by this slam takes 1d6 points of bludgeoning damage for every 50 feet of current falling speed, to a maximum of 6d6, and begins falling at your current speed according to your current subjective directional gravity.",
                          summary: "While on a plane with subjective directional gravity, you halve all damage you take from impacts (such as falling damage).",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tempting Bargain",
                          featType: "General",
                          prerequisites: "Unchained summoner level 1st, eidolon class feature.",
                          benefit: "You can select an eidolon of any alignment, even if its alignment is more than one step away from your own. Your eidolon never refuses your call as a result of the differences between your respective alignments, though it still can refuse to follow commands that are against its ethos or alignment. Each time you gain a summoner level, you must attempt a Will saving throw (DC = 10 + half your eidolon’s Hit Dice + your eidolon’s Charisma modifier). On a failure, your alignment permanently shifts one step closer to that of your eidolon. Modifiers that are not permanent can’t be applied on this saving throw.",
                          special: "If your alignment becomes the same as that of your eidolon, you can immediately replace this feat with any other feat you would have qualified for at 1st level. The feat you choose for this must be one approved by the GM, depending on the nature of your eidolon and its influence over you.",
                          summary: "You can select an eidolon of any alignment, even if its alignment is more than one step away from your own.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tidal Swiftness (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 5 ranks.",
                          benefit: "As a standard action, you can call forth a tide of water that flows around your feet and enhances your speed, as per slipstream. You can use this feat’s benefit for a number of minutes per day equal to your ranks in Knowledge (planes). These minutes need not be consecutive, but they must be spent in 1-minute increments.",
                          summary: "As a standard action, you can call forth a tide of water that flows around your feet and enhances your speed, as per slipstream.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tumultuous Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can enhance any spell that targets a single creature to become a tumultuous spell. A creature hit by a tumultuous spell (if the spell requires an attack roll) or that fails its saving throw against a tumultuous spell immediately moves 1d4×5 feet in a random direction. This movement does not provoke attacks of opportunity. If this movement would force a creature into a solid object or another creature, the movement ends harmlessly just before impact. A tumultuous spell uses a spell slot 1 level higher than the spell’s normal spell level. Spells with the lawful descriptor can’t be tumultuous spells.",
                          summary: "You can enhance any spell that targets a single creature to become a tumultuous spell.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tyrant's Rebuke (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 5 ranks.",
                          benefit: "As a standard action, you can make a melee touch attack. A creature successfully hit by this touch attack must succeed at a Will save (DC = 10 + half your level + your Charisma modifier) or be staggered until the end of your next turn. If you use Tyrant’s Rebuke on a creature that is already staggered by this effect and it fails its Will save, it takes 1d4 points of Charisma damage in addition to being staggered. You can use this feat once per day for every 5 ranks you have in Knowledge (planes).",
                          summary: "As a standard action, you can make a melee touch attack. A creature successfully hit by this touch attack must succeed at a Will save (DC = 10 + half your level + your Charisma modifier) or be…",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wanderer's Fortune (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 3 ranks.",
                          benefit: "As a swift action, you gain the benefits of freedom of movement until the end of your turn or until you benefit from the effects to escape a grapple or magical restraint, whichever comes first. You can use this feat’s benefit once per day, plus an additional time per day for every 5 ranks you have in Knowledge (planes).",
                          summary: "As a swift action, you gain the benefits of freedom of movement until the end of your turn or until you benefit from the effects to escape a grapple or magical restraint, whichever comes first.",
                          source: "Planar Adventures", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wind Leaper (Conduit)",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 3 ranks.",
                          benefit: "As a swift action, you can wrap your body in airy energies. This reduces your effective weight by half. While this ability is active, you gain a circumstance bonus on Acrobatics checks equal to half your ranks in Knowledge (planes), you are always treated as having a running start when attempting Acrobatics checks to jump, and your Acrobatics checks to high jump are treated as long jumps for the purpose of determining the DC. You can use this feat’s benefit for a number of rounds per day equal to your ranks in Knowledge (planes). These rounds need not be consecutive.",
                          summary: "As a swift action, you can wrap your body in airy energies. This reduces your effective weight by half.",
                          source: "Planar Adventures", isPremium: true),

                    // // MARK: - Planar Adventures, Advanced Race Guide
        )
        try await db.insertFeat(
        .make("Grasping Tail",
                          featType: "General",
                          prerequisites: "You must have a tail.",
                          benefit: "You can use your tail to grab stowed items. While you cannot wield weapons with your tail, you can use it to retrieve small, stowed objects carried on your person as a swift action.",
                          special: "If you have the prehensile tail tiefling racial trait, you can use your tail to grab unattended items within 5 feet or stowed objects carried on your person as a swift action; you can hold such objects with your tail, though you cannot manipulate them with it (other than to put them in your hand).",
                          summary: "You can use your tail to grab stowed items. While you cannot wield weapons with your tail, you can use it to retrieve small, stowed objects carried on your person as a swift action.",
                          source: "Planar Adventures, Advanced Race Guide", isPremium: true),

                    // // MARK: - Plane-Hopper's Handbook
        )
        try await db.insertFeat(
        .make("Asura Sight (Combat)",
                          featType: "General",
                          prerequisites: "Asura Style, base attack bonus +9 or monk level 9th.",
                          benefit: "When using Asura Style, you gain improved uncanny dodge as a rogue of your character level.",
                          summary: "When using Asura Style, you gain improved uncanny dodge as a rogue of your character level.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Asura Spellrend (Combat)",
                          featType: "General",
                          prerequisites: "Asura Sight, Asura Style, base attack bonus +13 or monk level 13th.",
                          benefit: "You can replace one of your attacks at your highest base attack bonus each round with a spellrending strike. If your spellrending strike hits, it deals no damage, but you can attempt to dispel a harmless divine spell affecting this target as per dispel magic, with a caster level equal to your character level. If you succeed at your dispel check, the target is sickened as if you had interrupted the spell with Asura Style and receives no saving throw to reduce the sickened duration.",
                          summary: "You can replace one of your attacks at your highest base attack bonus each round with a spellrending strike.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Asura Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Wis 13, Improved Unarmed Strike, base attack bonus +5 or monk level 5th.",
                          benefit: "When you use a monk weapon or unarmed strike to attack a creature that is casting a divine spell, the target is sickened for 1d4 rounds. A target can attempt a Fortitude save (DC = 10 + half your character level + your Wisdom modifier) to reduce the duration of the sickened effect to 1 round.",
                          summary: "When you use a monk weapon or unarmed strike to attack a creature that is casting a divine spell, the target is sickened for 1d4 rounds.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blackfire Summoning",
                          featType: "General",
                          prerequisites: "Sacred Summons.",
                          benefit: "When you summon a single evil outsider, it appears in a flash of blackfire, harming all adjacent nonevil creatures. This deals an amount of damage equal to twice the CR of the summoned creature. An affected creature can attempt a Will save (DC = the DC of the spell used to summon the creature) to halve this damage. A spell augmented with blackfire summoning uses up a spell slot 1 level higher than the spell’s actual level. If you have the blackfire pact class feature, you can apply the benefits of this feat to summoned outsiders of the type or types you have selected for your blackfire pact without raising the spell’s effective level.",
                          summary: "When you summon a single evil outsider, it appears in a flash of blackfire, harming all adjacent nonevil creatures. This deals an amount of damage equal to twice the CR of the summoned creature.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cerberus Crush (Combat)",
                          featType: "General",
                          prerequisites: "Cerberus Snare, Cerberus Style, Vital Strike, base attack bonus +13 or monk level 13th.",
                          benefit: "You can apply the benefits of Vital Strike, Improved Vital Strike, and Greater Vital Strike to all attacks made using Cerberus Style.",
                          summary: "You can apply the benefits of Vital Strike, Improved Vital Strike, and Greater Vital Strike to all attacks made using Cerberus Style.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cerberus Snare (Combat)",
                          featType: "General",
                          prerequisites: "Cerberus Style, base attack bonus +9 or monk level 9th.",
                          benefit: "Whenever you damage an opponent with Cerberus Style, that opponent cannot take 5-foot steps until the beginning of your next turn. Additionally, it is barred from dimensional travel. This effect functions as dimensional anchor, except that its duration is 1 round. Spell resistance applies; for the purpose of checks to overcome spell resistance, your caster level is equal to your character level.",
                          summary: "Whenever you damage an opponent with Cerberus Style, that opponent cannot take 5-foot steps until the beginning of your next turn. Additionally, it is barred from dimensional travel.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cerberus Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Cleave, Improved Unarmed Strike, base attack bonus +6 or monk level 6th.",
                          benefit: "As a standard action, you can make a single unarmed strike at your full base attack bonus against a foe within reach. If you hit, you deal damage normally and can make an additional attack (using your full base attack bonus) against up to two other foes that are also within reach. You take a –2 penalty to your Armor Class until the start of your next turn for each additional attack you make with this feat.",
                          summary: "As a standard action, you can make a single unarmed strike at your full base attack bonus against a foe within reach.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Chance Death (Origin)",
                          featType: "General",
                          prerequisites: "Duskwalker.",
                          benefit: "Once per day, if you would die as a result of an attack or failing a saving throw, as an immediate action you can reroll the attack or saving throw. You must use the result of the second roll, even if it is worse. At 11th level, you can use this feat a second time per day.",
                          summary: "Once per day, if you would die as a result of an attack or failing a saving throw, as an immediate action you can reroll the attack or saving throw.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cosmic Gate",
                          featType: "General",
                          prerequisites: "Lady Luck’s Guidance, Knowledge (planes) 10 ranks.",
                          benefit: "Once per day, you can briefly enter Cynosure and use the pools located there to instantly travel to a nearby location on the Material Plane; this functions as teleport except you are always considered very familiar with your destination.",
                          summary: "Once per day, you can briefly enter Cynosure and use the pools located there to instantly travel to a nearby location on the Material Plane; this functions as teleport except you are always…",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Crystalline Cloud",
                          featType: "General",
                          prerequisites: "Aphorite, character level 5th, crystalline dust racial trait.",
                          benefit: "When you use your crystalline dust supernatural racial trait, you can instead create a cloud of crystalline dust in a 10-foot radius centered on you. The cloud does not obscure sight, but allies within the cloud receive the benefit of your crystalline dust. The cloud can be maintained each round as a free action as long as you remain within the cloud’s area. A moderate wind (11+ mph), such as from a gust of wind spell, disperses the cloud immediately. Each round that the crystalline cloud is active expends 2 rounds of your crystalline dust racial trait. If you have the Gilded Weapons feat, any creature with the chaotic subtype that enters the cloud must succeed at a Fortitude save (DC = 10 + half your character level + your Charisma modifier) or be sickened for 1 round.",
                          summary: "When you use your crystalline dust supernatural racial trait, you can instead create a cloud of crystalline dust in a 10-foot radius centered on you.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dark Affinity",
                          featType: "General",
                          prerequisites: "Character level 3rd, must have visited the Hao Jin Tapestry.",
                          benefit: "You can cast darkness once per day as a spell-like ability using your character level as your caster level. At 7th level, you can also cast deeper darkness once per day as a spell-like ability using your character level as your caster level.",
                          summary: "You can cast darkness once per day as a spell-like ability using your character level as your caster level.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deconstruct Spell",
                          featType: "General",
                          prerequisites: "Improved Counterspell or ability to cast dispel magic or greater dispel magic, aphorite, crystalline dust racial trait.",
                          benefit: "Once per day when you successfully counterspell or dispel a spell, you can instead deconstruct the spell to regain a number of rounds of your crystalline dust racial trait equal to half the level of the spell. You can’t use this feat to gain more than your maximum number of rounds of your crystalline dust racial trait.",
                          summary: "Once per day when you successfully counterspell or dispel a spell, you can instead deconstruct the spell to regain a number of rounds of your crystalline dust racial trait equal to half the level of…",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Deliberate Death (Origin)",
                          featType: "General",
                          prerequisites: "Duskwalker.",
                          benefit: "Once per day, if you are reduced below 0 hit points as a result of an attack or ability used by another character, as an immediate action you can take a single standard action. You must use this action to attack or harm the creature that damaged you. At 11th level, you can use this feat a second time per day.",
                          summary: "Once per day, if you are reduced below 0 hit points as a result of an attack or ability used by another character, as an immediate action you can take a single standard action.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dreamwalker",
                          featType: "General",
                          prerequisites: "Cha 17, Lucid Dreamer, Practiced Dreamer, Knowledge (planes) 10 ranks.",
                          benefit: "Your experience in the Dimension of Dreams allows you to enter the demiplane with ease. You no longer have to attempt a Charisma check when entering the Dimension of Dreams to determine whether or not you are at a disadvantage, instead automatically arriving unhindered.",
                          summary: "Your experience in the Dimension of Dreams allows you to enter the demiplane with ease.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ephemeral Tread",
                          featType: "General",
                          prerequisites: "Cha 15, Lucid Dreamer, Knowledge (planes) 5 ranks.",
                          benefit: "Once per day, when you are in the Dimension of Dreams in your physical body, you can attempt an impossible action as a standard action as though you were in a lucid body. No positive modifiers can be applied to this roll other than your Charisma modifier.",
                          summary: "Once per day, when you are in the Dimension of Dreams in your physical body, you can attempt an impossible action as a standard action as though you were in a lucid body.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Experienced Ghost Hunter",
                          featType: "General",
                          prerequisites: "Character level 7th, duskwalker, ghost hunter racial trait.",
                          benefit: "You can use your ghost hunter ability to grant your weapons the ghost touch special ability as a swift action. You can activate ghost hunter an additional time each day.",
                          summary: "You can use your ghost hunter ability to grant your weapons the ghost touch special ability as a swift action. You can activate ghost hunter an additional time each day.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Crystalline Dust",
                          featType: "General",
                          prerequisites: "Aphorite, crystalline dust racial trait.",
                          benefit: "You can use your crystalline dust ability 3 additional rounds per day.",
                          special: "You can select Extra Crystalline Dust up to two additional times. Its effects stack.",
                          summary: "You can use your crystalline dust ability 3 additional rounds per day.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Find the Flaw",
                          featType: "General",
                          prerequisites: "Str 13, Improved Sunder, Power Attack, base attack bonus +1, Craft (armor or weapons) 5 ranks, aphorite.",
                          benefit: "When performing a sunder combat maneuver, you ignore a number of points of hardness equal to your Intelligence modifier.",
                          summary: "When performing a sunder combat maneuver, you ignore a number of points of hardness equal to your Intelligence modifier.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ghost Hunting Team",
                          featType: "General",
                          prerequisites: "Duskwalker, ghost hunter racial trait.",
                          benefit: "When you use your ghost hunter ability to grant your weapons the ghost touch special ability, you can also affect the weapons of allies within 30 feet of you. You can activate ghost hunter an additional time each day.",
                          summary: "When you use your ghost hunter ability to grant your weapons the ghost touch special ability, you can also affect the weapons of allies within 30 feet of you.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Gilded Weapons",
                          featType: "General",
                          prerequisites: "Aphorite, crystalline dust racial trait, nonchaotic alignment.",
                          benefit: "As a swift action, you can expend 1 round of your crystalline dust ability to coat up to two of your natural weapons or held manufactured weapons in a layer of crystalline dust. The weapons remain coated for 1 round and deal an additional 1d6 points of damage to creatures with the chaotic subtype. This extra damage does not stack with other features that add alignment-based damage to weapons, such as the axiomatic weapon special ability.",
                          summary: "As a swift action, you can expend 1 round of your crystalline dust ability to coat up to two of your natural weapons or held manufactured weapons in a layer of crystalline dust.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Planar Mentor",
                          featType: "General",
                          prerequisites: "Improved Planar Mentor, Planar Mentor, character level 13th.",
                          benefit: "You can benefit from your Planar Mentor feat one additional time per day. You add the following to the list of spell-like abilities you can cast using Improved Planar Mentor for their respective alignments, each of which affects only a single target within 30 feet: blasphemy (evil), dictum (lawful), holy word (good), slay living (neutral), and word of chaos (chaotic). Once per week you can cast greater planar ally as a spell-like ability, but only to conjure your planar mentor. Your mentor requires only half the normal payment for its services.",
                          summary: "You can benefit from your Planar Mentor feat one additional time per day.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Planar Mentor",
                          featType: "General",
                          prerequisites: "Planar Mentor, character level 7th.",
                          benefit: "You can benefit from your Planar Mentor feat one additional time per day. While your mentor’s boon is active, weapons and natural weapons you wield overcome damage reduction as though they were weapons of that alignment (e.g., as good weapons for earning good approval). For neutral approval, your weapons and natural weapons overcome damage reduction as cold iron and silver weapons. Once per day while benefiting from your mentor’s boon, you can cast one of the following spell-like abilities based on the active boon’s alignment (CL = your character level). Once you cast the spell-like ability, your mentor’s boon ends immediately. Chaotic: Chaos hammer, magic circle against law, summon monster IV (chaotic outsiders only). Evil: Magic circle against good, summon monster IV (evil outsiders only), unholy blight. Good: Holy smite, magic circle against evil, summon monster IV (good outsiders only). Lawful: Magic circle against chaos, order’s wrath, summon monster IV (lawful outsiders only). Neutral: Bestow curse, prayer, summon monster IV (outsiders without alignment subtypes only).",
                          summary: "You can benefit from your Planar Mentor feat one additional time per day.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Stellar Wanderer",
                          featType: "General",
                          prerequisites: "Stellar Wanderer, Knowledge (planes) 15 ranks.",
                          benefit: "When using the Stellar Wanderer feat for planar travel, you can choose up to eight creatures to be transported with you. You now appear 1 to 100 miles (1d%) from your intended destination rather than 5 to 500 miles.",
                          summary: "When using the Stellar Wanderer feat for planar travel, you can choose up to eight creatures to be transported with you.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ineffable Count of the Clock (Gathlain Court Title)",
                          featType: "General",
                          prerequisites: "Fey creature type or Fey Obedience (Shyka), you must have either visited or interacted with an outsider from the Dimension of Time.",
                          benefit: "Three times per day as a free action, you can increase your speed by any amount up to your base speed until the end of your turn. On the subsequent round, your speed is reduced by the same amount.",
                          summary: "Three times per day as a free action, you can increase your speed by any amount up to your base speed until the end of your turn. On the subsequent round, your speed is reduced by the same amount.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Knight of the Twisted Word (Gathlain Court Title)",
                          featType: "General",
                          prerequisites: "Fey creature type or Fey Obedience (Count Ranalc), character level 7th, you must have betrayed or deceived in a major fashion a demon with a CR at least 2 higher than your level when you took the feat.",
                          benefit: "Once per day, you can cast glibness as a spell-like ability with a caster level equal to your Hit Dice.",
                          summary: "Once per day, you can cast glibness as a spell-like ability with a caster level equal to your Hit Dice.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lady Luck's Guidance",
                          featType: "General",
                          prerequisites: "Knowledge (geography) 5 ranks, Knowledge (planes) 5 ranks.",
                          benefit: "Once per day during overland travel, you can attempt a DC 25 Knowledge (geography) check to follow the stars. On a success, you and up to eight other creatures use Desna’s mystical guidance to travel twice the usual distance during overland travel.",
                          summary: "Once per day during overland travel, you can attempt a DC 25 Knowledge (geography) check to follow the stars.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lonely Death (Origin)",
                          featType: "General",
                          prerequisites: "Duskwalker.",
                          benefit: "Twice per day, if you are reduced below 0 hit points, as an immediate action you can move up to twice your base speed. If this brings you into cover or concealment, you can also attempt a Stealth check to hide. At 11th level, you can use this feat two additional times per day.",
                          summary: "Twice per day, if you are reduced below 0 hit points, as an immediate action you can move up to twice your base speed.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Marcher-Lord of the Cerulean Abyss (Gathlain Court Title)",
                          featType: "General",
                          prerequisites: "Fey creature type or Fey Obedience (Ragadahn), you must have carved your name and Ragadahn's holy symbol on the hide of a living dragon or outsider with either the aquatic or water subtype and a CR at least 2 higher than your level when you took the feat.",
                          benefit: "You claim ownership of that which you strike. If you have dealt hit point damage to a creature this round, that creature takes a –2 penalty on combat maneuver checks and to its CMD until the beginning of your next round.",
                          summary: "You claim ownership of that which you strike. If you have dealt hit point damage to a creature this round, that creature takes a –2 penalty on combat maneuver checks and to its CMD until the…",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Personal Chronicler",
                          featType: "General",
                          prerequisites: "Duskwalker.",
                          benefit: "You gain a fledgling nosoi familiar as per the arcane bond class feature, using your character level as your wizard level. Treat this as either a raven or a whippoorwill familiar (a whippoorwill uses the statistics for a thrush, but grants a +3 bonus to Intimidate instead of Diplomacy). If you have the ability to gain a familiar through other means and you are at least 5th level, the bird is instead treated as a nosoi as though you had taken the Improved Familiar feat. You can have only one familiar. This feat can be taken a second time by a character of 7th level or higher if that character doesn’t otherwise have access to a familiar. Such characters treat their familiars as nosoi, as described above.",
                          special: "If you ever willingly consort with sahkils or undead, your familiar abandons you and reports your actions to the nearest psychopomps. To regain your familiar, you must atone for your deeds via the atonement spell.",
                          summary: "You gain a fledgling nosoi familiar as per the arcane bond class feature, using your character level as your wizard level.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Planar Mentor",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you take this feat, choose one non-unique outsider with 18 Hit Dice or fewer and whose alignment is within one step of your own along either the law/chaos axis or the good/evil axis. Twice per day (three times per day for an outsider with only neutral alignment components) when you fulfill the condition associated with either component of your mentor’s alignment, you can gain your mentor’s boon for that alignment as an immediate action. This grants you resistance equal to your level to a particular energy type as well as a special benefit associated with that alignment. These benefits last for a number of rounds equal to your Charisma modifier + 1 (minimum 1). Chaotic: To earn chaotic approval, you must provoke an attack of opportunity from a creature whose CR is at least half your level. You gain acid resistance as well as a 10% miss chance due to concealment. Evil: To earn evil approval, you must damage a flat-footed foe, hit a foe you’re flanking, or confirm a critical hit. You gain fire resistance, and your attacks deal an amount of bleed damage equal to half your level. Good: To earn good approval, you must heal another creature or deal nonlethal damage to a foe using an ability that has no additional effects beyond nonlethal damage. You gain electricity resistance and a +2 bonus on your saving throws. Lawful: To earn lawful approval, you must perform the aid another action for an ally whose level is equal to or greater than your own, or you must benefit from the aid another action from such an ally. You gain cold resistance and the benefits of the light fortification armor special ability. Neutral: To earn neutral approval, you must succeed at a saving throw prompted by a source with a CR of at least half your level. You gain resistance to any one energy type (your choice) and a +2 bonus on skill checks. If your mentor is killed or imprisoned, you lose the benefits of this feat and any feats for which it is a prerequisite. When you gain a level, you can secure a new mentor by performing a ritual that takes 8 hours and expends components worth 200 gp × the new mentor’s Hit Dice.",
                          special: "At the GM’s discretion, a PC can select an outsider of any alignment. This represents a relationship in which the outsider is attempting to corrupt, redeem, or otherwise influence the PC.",
                          summary: "When you take this feat, choose one non-unique outsider with 18 Hit Dice or fewer and whose alignment is within one step of your own along either the law/chaos axis or the good/evil axis.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Practiced Dreamer",
                          featType: "General",
                          prerequisites: "Cha 15, Lucid Dreamer, Knowledge (planes) 5 ranks.",
                          benefit: "Once per day, you can reroll a failed attempt to perform an impossible action, such as casting a spell you can’t normally cast, gaining an effect of a spell as if it had been cast, or conjuring a magic item. You also gain an additional +2 bonus on Charisma checks to determine your initial condition when entering a dream with your lucid body.",
                          summary: "Once per day, you can reroll a failed attempt to perform an impossible action, such as casting a spell you can’t normally cast, gaining an effect of a spell as if it had been cast, or conjuring a…",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Reflexive Crystalline Dust",
                          featType: "General",
                          prerequisites: "Swift Crystalline Dust, aphorite, crystalline dust racial trait.",
                          benefit: "You can activate your crystalline dust ability as an immediate action when you are targeted by an attack.",
                          summary: "You can activate your crystalline dust ability as an immediate action when you are targeted by an attack.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Retributive Summoning",
                          featType: "General",
                          prerequisites: "Spell Focus (conjuration) or counter-summons class feature.",
                          benefit: "When you successfully counter a summoning spell with dispel magic or your own summon monster spell, you can immediately summon nonevil creatures as if you had just finished casting a summon monster spell of 2 levels lower than the countered summoning spell.",
                          summary: "When you successfully counter a summoning spell with dispel magic or your own summon monster spell, you can immediately summon nonevil creatures as if you had just finished casting a summon monster…",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scribe Spell Equation",
                          featType: "General",
                          prerequisites: "Scribe Scroll, aphorite, caster level 5th, crystalline dust racial trait.",
                          benefit: "You manipulate the runes and glyphs of your crystalline dust into an equation that describes a specific spell. This process is identical to scribing a scroll, except that the spell is stored as a specific pattern in your crystalline dust, visible only to you. You can activate the spell in the same way you would activate a scroll, except that you need only one hand free to trace the final glyph in the equation, releasing the spell. The cost of materials to store a spell equation is the same price as scribing an equivalent scroll. You can have one spell equation stored at a time, plus one additional spell when your character level reaches 10th, 15th, and 20th levels.",
                          summary: "You manipulate the runes and glyphs of your crystalline dust into an equation that describes a specific spell.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spell Praxis",
                          featType: "General",
                          prerequisites: "Scribe Scroll, Scribe Spell Equation, aphorite, caster level 5th, crystalline dust racial trait.",
                          benefit: "When you hit a creature with a melee weapon, you can immediately solve one of your spell equations to cast the spell and target that creature as an immediate action. The spell stored in the spell equation must be a spell of up to 3rd level that targets one or more creatures and has a casting time of 1 standard action. The spell can target only the creature you hit, even if the spell would normally allow multiple targets.",
                          summary: "When you hit a creature with a melee weapon, you can immediately solve one of your spell equations to cast the spell and target that creature as an immediate action.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stellar Wanderer",
                          featType: "General",
                          prerequisites: "Character level 15, Knowledge (planes) 10 ranks.",
                          benefit: "Once per week, you can use the pools of Cynosure to instantly transport yourself from Cynosure to any plane, as per plane shift.",
                          summary: "Once per week, you can use the pools of Cynosure to instantly transport yourself from Cynosure to any plane, as per plane shift.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swamp Dweller",
                          featType: "General",
                          prerequisites: "Str 13, must have visited the Hao Jin Tapestry.",
                          benefit: "You gain a +2 bonus on Swim checks. If you have 10 or more ranks in Swim, the bonus increases to +4. This bonus doubles while you’re in marshy terrain. In addition, you can move normally into squares with a shallow bog, and it costs you only 2 squares of movement to move into a square with a deep bog.",
                          summary: "You gain a +2 bonus on Swim checks. If you have 10 or more ranks in Swim, the bonus increases to +4. This bonus doubles while you’re in marshy terrain.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swift Crystalline Dust",
                          featType: "General",
                          prerequisites: "Aphorite, crystalline dust racial trait.",
                          benefit: "You can activate your crystalline dust ability as a swift action instead of as a move action.",
                          summary: "You can activate your crystalline dust ability as a swift action instead of as a move action.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Triple-Baron (Gathlain Court Title)",
                          featType: "General",
                          prerequisites: "Fey creature type or Fey Obedience (Magdh), you must have collected three gifts worth at least 100 gp each from three different planes across the Great Beyond. At least two of the planes must be diametrically opposed to one another in terms of planar traits.",
                          benefit: "Three times per day as an immediate action, when you are about to roll for an attack, saving throw, or skill check, you can roll three d20s and use the middle of the three results. This ability cannot be combined with other effects that involve rerolling dice or involve rolling twice and taking either the higher or lower result.",
                          summary: "Three times per day as an immediate action, when you are about to roll for an attack, saving throw, or skill check, you can roll three d20s and use the middle of the three results.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Waking Dream",
                          featType: "General",
                          prerequisites: "Cha 17, Ephemeral Tread, Lucid Dreamer, Knowledge (planes) 10 ranks.",
                          benefit: "When in the Dimension of Dreams in your physical body, you gain an additional attempt at an impossible action per day, for a total of two attempts. However, as a result of your meddling with the fabric of the realm, when you travel to the Dimension of Dreams in your physical body, you must succeed at a DC 15 Charisma check or arrive at a disadvantage.",
                          summary: "When in the Dimension of Dreams in your physical body, you gain an additional attempt at an impossible action per day, for a total of two attempts.",
                          source: "Plane-Hopper's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Willing Death (Origin)",
                          featType: "General",
                          prerequisites: "Duskwalker.",
                          benefit: "Twice per day, when an ally within 30 feet would die as a result of an attack or failing a saving throw, as an immediate action you can redirect the damage and effects to yourself. This functions as paladin's sacrifice. At 11th level, you can use this feat two additional times per day.",
                          summary: "Twice per day, when an ally within 30 feet would die as a result of an attack or failing a saving throw, as an immediate action you can redirect the damage and effects to yourself.",
                          source: "Plane-Hopper's Handbook", isPremium: true),

                    // // MARK: - Ranged Tactics Toolbox
        )
        try await db.insertFeat(
        .make("Channel Ray",
                          featType: "General",
                          prerequisites: "Channel energy class feature.",
                          benefit: "When you channel energy, you can project a ray from your holy symbol instead of creating a burst. You must succeed at a ranged touch attack to hit an unwilling target; your target is then affected by the channeled energy as normal and receives a saving throw. You need not make an attack roll to affect a willing creature with the ray. The ray has a range of 30 feet per channel energy die, and its save DC is increased by 2.",
                          summary: "When you channel energy, you can project a ray from your holy symbol instead of creating a burst.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Combat Advice",
                          featType: "General",
                          prerequisites: "",
                          benefit: "As a move action, you can offer useful advice to an ally engaged in combat at just the right moment. Designate an enemy; your ally gains a +2 competence bonus on her next attack roll against that enemy. For your ally to benefit from this feat, you must be able to clearly see your ally and the designated enemy, and your ally must be able to hear you.",
                          summary: "As a move action, you can offer useful advice to an ally engaged in combat at just the right moment.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Concentrated Splash (Combat)",
                          featType: "General",
                          prerequisites: "Precise Shot or Throw Anything.",
                          benefit: "When you deal a direct hit to a creature with a splash weapon that normally also deals splash damage, you can choose to forgo dealing splash damage. If you do, the damage dealt to the target of the direct hit increases by 50%. This damage is multiplied on a critical hit. This feat cannot be used with an alchemist’s bombsAPG.",
                          summary: "When you deal a direct hit to a creature with a splash weapon that normally also deals splash damage, you can choose to forgo dealing splash damage.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Covering Fire (RTT) (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot.",
                          benefit: "You can use the aid another action with a ranged attack against an opponent, regardless of whether the opponent threatens an ally. Range penalties apply to this attack roll. Choose one ally when making the attack. If the attack is successful, that ally gains a +2 bonus to AC against that opponent’s next attack, as long as the attack comes before the beginning of your next turn. All allies with this feat also gain this bonus against that opponent.",
                          summary: "You can use the aid another action with a ranged attack against an opponent, regardless of whether the opponent threatens an ally. Range penalties apply to this attack roll.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Directed Disarm (Combat)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Greater Disarm, Improved Disarm, base attack bonus +11.",
                          benefit: "Whenever you successfully use a combat maneuver to disarm an opponent, the disarmed weapon lands up to 15 feet away from its wielder, in the direction you choose. Alternatively, you can make a ranged attack as an immediate action with the disarmed weapon against another opponent, as long as the disarmed weapon is a light or one-handed weapon. If the weapon is not a thrown weapon, you take a –4 penalty on the attack roll. You take a –4 penalty on your attack roll if you do not have a free hand.",
                          summary: "Whenever you successfully use a combat maneuver to disarm an opponent, the disarmed weapon lands up to 15 feet away from its wielder, in the direction you choose.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Distant Spell Link",
                          featType: "General",
                          prerequisites: "Enlarge Spell or Reach SpellAPG; animal companion, eidolon, familiar, or other allied creature with the share spells ability (Pathfinder RPG Core Rulebook 52).",
                          benefit: "The range of your allied creature’s share spells ability increases to close (25 feet + 5 feet for every 2 levels) as long as you have line of effect to the creature when you cast the shared spell. If your allied creature has the deliver touch spells ability, you can designate your allied creature as the spell’s source when you cast a touch spell as long as you are within close range of it. The creature must still deliver the touch spell at its touch range.",
                          normal: "You must be adjacent to your familiar to share spells with it or designate touch spells for it to deliver.",
                          summary: "The range of your allied creature’s share spells ability increases to close (25 feet + 5 feet for every 2 levels) as long as you have line of effect to the creature when you cast the shared spell.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Exceptional Pull (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Deadly Aim, base attack bonus +3.",
                          benefit: "When you wield a ranged weapon that you are proficient with and that has a strength rating, add 2 to the weapon’s strength rating. You don’t take a penalty on attack rolls for having a Strength modifier lower than the strength rating of a weapon, provided you’re proficient with that weapon.",
                          summary: "When you wield a ranged weapon that you are proficient with and that has a strength rating, add 2 to the weapon’s strength rating.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expansive Trap Ability",
                          featType: "General",
                          prerequisites: "Ability to use ranger traps (Pathfinder RPG Ultimate Magic 64) or land mines (Pathfinder Player Companion: Dungeoneer’s Handbook 23).",
                          benefit: "You can designate any ranger trap or land mine you lay to occupy up to 4 contiguous squares of your choice. When the trap is activated, the effect is centered on whichever square the triggering creature first entered. If more than one square is entered simultaneously, choose at random.",
                          summary: "You can designate any ranger trap or land mine you lay to occupy up to 4 contiguous squares of your choice.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Friendly Fire Maneuvers (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, Precise Shot.",
                          benefit: "Allies who also have this feat cannot provide soft cover to enemies, allowing you to make attacks of opportunity against an enemy even if those allies grant you soft cover against that foe’s attacks. If an ally who also has this feat casts a spell that targets the area you are in as it allows a Reflex saving throw to avoid the effect (such as fireball), you gain a +4 dodge bonus on that saving throw.",
                          summary: "Allies who also have this feat cannot provide soft cover to enemies, allowing you to make attacks of opportunity against an enemy even if those allies grant you soft cover against that foe’s attacks.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lie Low",
                          featType: "General",
                          prerequisites: "",
                          benefit: "If you have been prone since the end of your last turn, the penalty on Perception checks for others to notice you increases by 1 for every 20 feet between you and the observer, to a maximum increase of 5 at 100 feet. This stacks with the normal modifier for distance.",
                          summary: "If you have been prone since the end of your last turn, the penalty on Perception checks for others to notice you increases by 1 for every 20 feet between you and the observer, to a maximum increase…",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lob Shot (Combat)",
                          featType: "General",
                          prerequisites: "Far Shot, Point-Blank Shot.",
                          benefit: "While making a ranged attack, you can ignore any cover bonuses to AC, including total cover, unless the target also has cover from above, such as a roof or forest canopy. When using this feat, treat your target as if it were one range increment farther away. You can’t use this feat unless you have headroom equal to at least half the attack’s range.",
                          summary: "While making a ranged attack, you can ignore any cover bonuses to AC, including total cover, unless the target also has cover from above, such as a roof or forest canopy.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Proxy Summoning",
                          featType: "General",
                          prerequisites: "Ability to cast conjuration (summoning) spells or a conjuration (summoning) spell-like ability, caster level 5th.",
                          benefit: "Whenever you cast a touch spell while adjacent to a creature you summoned (including an eidolon), you can have the summoned creature carry the spell’s charge. Once the spell is cast, you and any creature you summon gain the share spells ability (Core Rulebook 52). This feat doesn’t qualify you for feats or other rules options that require you to have an animal companion, familiar, or similar allied creature with the share spells ability.",
                          summary: "Whenever you cast a touch spell while adjacent to a creature you summoned (including an eidolon), you can have the summoned creature carry the spell’s charge.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ranged Disarm (Combat, Targeting)",
                          featType: "General",
                          prerequisites: "Dex 13, Deadly Aim, base attack bonus +1.",
                          benefit: "As a full-round action, you can attempt to perform a disarm combat maneuver with any ranged weapon at a –2 penalty. Add your Dexterity modifier to your CMB in place of your Strength modifier and apply range penalties to your combat maneuver check, doubling the penalties from range increments. If your target is more than 30 feet away, you take an additional –2 penalty. If the disarm attempt is successful, the target also takes damage as if you had made a successful attack with that weapon. You cannot be disarmed by failing this disarm attempt.",
                          summary: "As a full-round action, you can attempt to perform a disarm combat maneuver with any ranged weapon at a –2 penalty.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ranged Trip (Combat, Targeting)",
                          featType: "General",
                          prerequisites: "Dex 13, Deadly Aim, base attack bonus +1.",
                          benefit: "As a full-round action, you can attempt to perform a trip combat maneuver with any ranged weapon at a –2 penalty. Add your Dexterity modifier to your CMB in place of your Strength modifier and apply range penalties to your combat maneuver check, doubling the penalties from range increments. If your target is more than 30 feet away, you take an additional –2 penalty. If the trip attempt is successful, the target also takes damage as if you had made a successful attack with that weapon. You can’t be knocked prone by failing the trip attempt.",
                          summary: "As a full-round action, you can attempt to perform a trip combat maneuver with any ranged weapon at a –2 penalty.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Relentless Shot (Combat)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, base attack bonus +6.",
                          benefit: "When you successfully trip an opponent within 30 feet with a ranged attack, you threaten that opponent until your next turn. You can make attacks of opportunity against that opponent with ranged weapons. This effect ends if you attack another target or the opponent moves from its current square.",
                          normal: "While wielding a ranged weapon, you threaten no squares and cannot make attacks of opportunity with that weapon.",
                          summary: "When you successfully trip an opponent within 30 feet with a ranged attack, you threaten that opponent until your next turn.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Seeking Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "A seeking spell’s range can bend around obstacles to reach the intended target. You can define the route yourself or unambiguously identify a target and allow the spell to determine its own path. However, the spell fails if it would have to travel farther than its maximum range to reach the identified target. A ranged attack roll made to deliver a seeking spell is not subject to cover or concealment. In order to benefit from this feat, the selected spell must have a range greater than touch and target one or more creatures, or it must require the caster to make a ranged touch attack. A seeking spell uses up a spell slot 2 levels higher than the spell’s actual level.",
                          summary: "A seeking spell’s range can bend around obstacles to reach the intended target. You can define the route yourself or unambiguously identify a target and allow the spell to determine its own path.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Throw Back Arrows (Combat)",
                          featType: "General",
                          prerequisites: "Dex 17, Deflect Arrows, Improved Unarmed Strike, Snatch Arrows.",
                          benefit: "When using the Snatch Arrows feat, you can throw a caught piece of ranged ammunition (such as an arrow, bolt, or sling bullet, but not a firearm bullet) as though it were a thrown weapon with a range increment of 20 feet (even though it isn’t your turn). The thrown ammunition deals the normal amount of damage for its type plus your Strength modifier, and you don’t take a penalty for throwing a weapon that isn’t designed to be thrown. This attack provokes attacks of opportunity as normal. You must have at least one hand free (holding nothing) to use this feat.",
                          summary: "When using the Snatch Arrows feat, you can throw a caught piece of ranged ammunition (such as an arrow, bolt, or sling bullet, but not a firearm bullet) as though it were a thrown weapon with a range…",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Trick Shooter (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Deadly Aim, base attack bonus +1.",
                          benefit: "You gain a +2 bonus on ranged combat maneuvers. When you attempt to perform a ranged combat maneuver, you can refrain from damaging the target at no penalty.",
                          summary: "You gain a +2 bonus on ranged combat maneuvers. When you attempt to perform a ranged combat maneuver, you can refrain from damaging the target at no penalty.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Volley Fire (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot.",
                          benefit: "You gain a +1 bonus on ranged attack rolls for each ally with this feat who made a ranged attack since the end of your last turn against a target within 15 feet of your target, to a maximum of +4. These allies don’t provide cover against your attacks.",
                          summary: "You gain a +1 bonus on ranged attack rolls for each ally with this feat who made a ranged attack since the end of your last turn against a target within 15 feet of your target, to a maximum of +4.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Warning Shot (Combat)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, Precise Shot, Weapon Focus, proficiency with the selected weapon.",
                          benefit: "As a standard action, you can make a ranged touch attack using a ranged weapon with which you have Weapon Focus. If successful, instead of dealing damage or applying any other effects of the attack, you may attempt an Intimidate check to demoralize the target as a free action. The target doesn’t need to be within 30 feet, nor does it need to be able to see or hear you.",
                          summary: "As a standard action, you can make a ranged touch attack using a ranged weapon with which you have Weapon Focus.",
                          source: "Ranged Tactics Toolbox", isPremium: true)
        )
        try await db.insertFeat(
        .make("Weathered Warrior (Combat)",
                          featType: "General",
                          prerequisites: "Endurance.",
                          benefit: "In areas of strong or severe wind (Pathfinder RPG Core Rulebook 439) or when affected by wind effects or spells that penalize ranged attacks, you take only half the ranged attack penalty. You can make ranged attacks in windstorm-level winds at a –4 penalty.",
                          normal: "Strong and severe winds impose –2 and –4 penalties on ranged attack rolls, respectively. Making ranged attacks in windstorms is impossible.",
                          summary: "In areas of strong or severe wind (Pathfinder RPG Core Rulebook 439) or when affected by wind effects or spells that penalize ranged attacks, you take only half the ranged attack penalty.",
                          source: "Ranged Tactics Toolbox", isPremium: true),

                    // // MARK: - Revenge of the Kobold King, Pathfinder Campaign Setting
        )
        try await db.insertFeat(
        .make("Vermin Companion",
                          featType: "General",
                          prerequisites: "Vermin Heart, animal companion class feature, wild empathy class feature.",
                          benefit: "Add the following monsters to your list of potential animal companions at the indicated druid levels. 1st—giant ant (worker), giant fire beetle, medium monstrous centipede, medium monstrous scorpion, medium monstrous spider; 4th—giant ant (soldier), giant bee, giant bombardier beetle, Large monstrous centipede, Large monstrous scorpion, Large monstrous spider; 7th—giant praying mantis, giant stag beetle, giant wasp, huge monstrous centipede; 10th—gargantuan monstrous centipede, huge monstrous spider; 13th—huge monstrous scorpion; 16th—gargantuan monstrous spider.",
                          summary: "Add the following monsters to your list of potential animal companions at the indicated druid levels.",
                          source: "Revenge of the Kobold King, Pathfinder Campaign Setting", isPremium: true),

                    // // MARK: - Rise of the Runelords Anniversary Edition, Pathfinder #1: Burnt Offerings
        )
        try await db.insertFeat(
        .make("Lamashtu's Mark",
                          featType: "General",
                          prerequisites: "Con 13, Lamashtu as patron deity.",
                          benefit: "Your abdomen bears several ugly scars, as if your belly had been torn open by a clawed hand. Lamashtu’s Mark identifies you as favored worshiper of the Mother of Monsters, and if it is visible, you gain a +2 bonus on Intimidate checks but a –2 penalty on Diplomacy checks. Once per day as a free action, you may invoke Lamashtu’s name as you strike a nonevil foe with any melee attack. As you do, you cause the creature struck to become temporarily deformed in some hideous manner. Common deformities caused by this attack include cloven hooves, horns, forked tongues, vestigial limbs like wings and tails, organs inexplicably forming on the outside of the skin, additional (and useless) eyes, and skin that hardens into pus-weeping plates. The deformity reduces the target’s Charisma score by 1d4 points for 1 hour; the target can resist this effect by making a Fortitude save (DC 10 + your character level + your Charisma modifier). The physical deformity vanishes as soon as the Charisma penalty fades. In addition, any offspring you sire or give birth to gain the fiendish template.",
                          summary: "Your abdomen bears several ugly scars, as if your belly had been torn open by a clawed hand.",
                          source: "Rise of the Runelords Anniversary Edition, Pathfinder #1: Burnt Offerings", isPremium: true),

                    // // MARK: - Rise of the Runelords Player's Guide
        )
        try await db.insertFeat(
        .make("Big Game Hunter",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +1 bonus on attack rolls and a +2 bonus on weapon damage rolls against Large or larger creatures.",
                          summary: "You gain a +1 bonus on attack rolls and a +2 bonus on weapon damage rolls against Large or larger creatures.",
                          source: "Rise of the Runelords Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("City Born",
                          featType: "General",
                          prerequisites: "1st-level character, cannot have Country Born or Lone Wolf.",
                          benefit: "Choose Magnimar, Korvosa, or Riddleport as your home city. The frantic bustle of the city has honed your reactions — you gain a +1 bonus on Reflex saves. If you’re from Magnimar, you gain a +2 bonus on Diplomacy checks. If you’re from Korvosa, you gain a +2 bonus on Intimidate checks. And ifyou’re from Riddleport, you gain a +2 bonus on Bluff checks.",
                          summary: "Choose Magnimar, Korvosa, or Riddleport as your home city. The frantic bustle of the city has honed your reactions — you gain a +1 bonus on Reflex saves.",
                          source: "Rise of the Runelords Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Country Born",
                          featType: "General",
                          prerequisites: "1st-level character, cannot have City Born or Lone Wolf.",
                          benefit: "childhood of farm work, apprenticeship, or similar toil has granted you reserves of endurance. Once per day, when an effect would normally leave you fatigued or exhausted, you may ignore the fatigue or exhaustion effect. This ability activates the first time you are affected by fatigue or exhaustion in a day — you cannot “save” it to apply it to a specific effect. Your traditional upbringing has sharpened your willpower as well, granting a +1 bonus on Will saves.",
                          summary: "childhood of farm work, apprenticeship, or similar toil has granted you reserves of endurance.",
                          source: "Rise of the Runelords Player's Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lone Wolf",
                          featType: "General",
                          prerequisites: "1st-level character, cannot have City Born or Country Born.",
                          benefit: "Whenever you are dying, your chance of stabilizing is 50%. Your vigorous health also grants you a +1 bonus on Fortitude saves.",
                          summary: "Whenever you are dying, your chance of stabilizing is 50%. Your vigorous health also grants you a +1 bonus on Fortitude saves.",
                          source: "Rise of the Runelords Player's Guide", isPremium: true),

                    // // MARK: - Rival Guide
        )
        try await db.insertFeat(
        .make("Circling Offense (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Dodge, Mobility, base attack bonus +3.",
                          benefit: "You receive a +1 dodge bonus to your Armor Class against attacks of opportunity provoked by moving through a creature’s reach, provided the creature is of a larger size category than you and provided at least one other ally with Circling Offense is within the creature’s reach. If a creature that you’re receiving this dodge bonus against attacks you and misses with the attack, it provokes attacks of opportunity from any of your allies who possess Circling Offense.",
                          summary: "You receive a +1 dodge bonus to your Armor Class against attacks of opportunity provoked by moving through a creature’s reach, provided the creature is of a larger size category than you and provided…",
                          source: "Rival Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Footslasher (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "If you damage a foe that is of a larger size category than you with a weapon that does piercing or slashing damage, you can attempt to damage the creature’s feet in a way that impedes its movement. Attacking a foe in this way is a standard action—you cannot use Footslasher as part of a full-attack action. When you use Footslasher, you take a –2 penalty on your attack roll, but if you hit and deal at least 1 point of damage to the target, it is affected as if by caltrops—its speed is reduced by half. This penalty lasts for 24 hours, or until the creature is successfully treated with a DC 15 Heal check or receives at least 1 point of magical healing. Footslasher does not stack with itself—once a foe has been wounded by this attack, its speed cannot be further reduced by additional attacks (or by damage from caltrops).",
                          summary: "If you damage a foe that is of a larger size category than you with a weapon that does piercing or slashing damage, you can attempt to damage the creature’s feet in a way that impedes its movement.",
                          source: "Rival Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Serpent Lash (Combat)",
                          featType: "General",
                          prerequisites: "Serpent Lash, base attack bonus +4.",
                          benefit: "When you make a successful disarm or trip maneuver using the Serpent Lash feat, you can make your additional disarm or trip attempt against any target within your whip’s reach. With a reposition maneuver, you can move the target creature to any point within your whip’s reach.",
                          summary: "When you make a successful disarm or trip maneuver using the Serpent Lash feat, you can make your additional disarm or trip attempt against any target within your whip’s reach.",
                          source: "Rival Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Jackal Heritage",
                          featType: "General",
                          prerequisites: "Humanoid, must be taken at 1st level.",
                          benefit: "You gain a +2 racial bonus on saving throws against mind-affecting effects, and a +2 racial bonus on Perception checks.",
                          summary: "You gain a +2 racial bonus on saving throws against mind-affecting effects, and a +2 racial bonus on Perception checks.",
                          source: "Rival Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Slaying Sprint",
                          featType: "General",
                          prerequisites: "Dodge, Mobility, Spring Attack, base attack bonus +13.",
                          benefit: "You can move up to half your speed instead of taking a 5-foot step when taking a full-round action to perform a coup de grace. Performing a coup de grace does not provoke attacks of opportunity.You can use this feat only when wielding a light or onehanded weapon.",
                          summary: "You can move up to half your speed instead of taking a 5-foot step when taking a full-round action to perform a coup de grace.",
                          source: "Rival Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Topple Foe (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Combat Expertise, Improved Trip.",
                          benefit: "If you attempt to trip a foe that is larger than you, you gain a +1 bonus on your CMB check to trip the foe as long as an ally with Topple Foe is flanking the foe with you. If multiple allies with Topple Foe are flanking the foe with you, you gain an additional +2 bonus on your CMD check for each additional ally that’s flanking the target. The bonuses granted by this feat stack with those granted by Improved Trip and Greater Trip.Each time you attempt to trip the same foe in consecutive rounds, the bonus granted to your trip attempt increases by +1 per ally, to a maximum bonus of +4 per flanking ally on the 4th round of consecutive trip attempts.",
                          summary: "If you attempt to trip a foe that is larger than you, you gain a +1 bonus on your CMB check to trip the foe as long as an ally with Topple Foe is flanking the foe with you.",
                          source: "Rival Guide", isPremium: true)
        )
        try await seedFeatsI()
    }
}
