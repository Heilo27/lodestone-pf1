import Foundation

extension SeedDataBuilder {
    func seedFeatsE() async throws {
        try await db.insertFeat(
        .make("Bloodstone Manhunter (Faction)",
                          featType: "General",
                          prerequisites: "Bloodstone Swords 10 TPA.",
                          benefit: "You gain a +1 bonus on Bluff, Knowledge, Perception, Sense Motive, and Survival checks against humans, and a +1 bonus on weapon attack and damage rolls against humans. If you have a favored enemy bonus against humans, this feat does not stack with that bonus.",
                          summary: "You gain a +1 bonus on Bluff, Knowledge, Perception, Sense Motive, and Survival checks against humans, and a +1 bonus on weapon attack and damage rolls against humans.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Calm Disposition (Faction)",
                          featType: "General",
                          prerequisites: "Prophets of Kalistrade 10 TPA.",
                          benefit: "You gain +2 bonus on saving throws against effects that affect your composure. This includes all mind-affecting spells, as well as any spell or ability that would cause you to behave in an out-of-control manner, such as fear effects and nausea. This does not include physical effects such as fatigue, and does not reduce any damage taken from concurrent effects.",
                          summary: "You gain +2 bonus on saving throws against effects that affect your composure.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Death's Suitor (Faction)",
                          featType: "General",
                          prerequisites: "Risen Guard 20 TPA.",
                          benefit: "Once per day, you may reroll a save or skill check if failure has a chance of killing you (whether from hit point damage, ability damage, or some instant effect). You must decide to use this ability before the results are revealed. You must take the second roll, even if it is worse.",
                          summary: "Once per day, you may reroll a save or skill check if failure has a chance of killing you (whether from hit point damage, ability damage, or some instant effect).",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disassemble Magic Item (Faction)",
                          featType: "General",
                          prerequisites: "Any item creation feat, Aspis Consortium 20 TPA.",
                          benefit: "You can break a magic item down into component pieces. These pieces are nonmagical and may have little resemblance to the original item other than being of the same material (a magical sword may be three recognizable metal pieces or simply a collection of metal scraps). Disassembling a magic item takes 1 hour per 1,000 gp of the item’s price and requires you to concentrate as if crafting an item. You can only use this feat on items your item creation feat would let you craft (for example, if you have Craft Wondrous Item, you can disassemble wondrous items but not magic weapons or armor).You may reassemble a dismantled item as long as all the pieces are present; this takes the same amount of time as taking it apart did. There is a 10% chance the reconstruction fails and the item is permanently destroyed.",
                          summary: "You can break a magic item down into component pieces. These pieces are nonmagical and may have little resemblance to the original item other than being of the same material (a magical sword may be…",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Divine Deception",
                          featType: "General",
                          prerequisites: "Knowledge (religion) 5 ranks, Use Magic Device 5 ranks.",
                          benefit: "You gain a +5 bonus on Use Magic Device checks to use divine spell-trigger or spell completion items or to emulate a divine class feature.",
                          summary: "You gain a +5 bonus on Use Magic Device checks to use divine spell-trigger or spell completion items or to emulate a divine class feature.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fast Crawl",
                          featType: "General",
                          prerequisites: "",
                          benefit: "While prone, you can move at half speed. This movement provokes attacks of opportunity as normal. You can take a 5-foot step while crawling. This benefit does not stack with the rogue crawl talent.",
                          normal: "You can crawl 5 feet as a move action. You cannot take a 5-foot step while crawling.",
                          summary: "While prone, you can move at half speed. This movement provokes attacks of opportunity as normal. You can take a 5-foot step while crawling. This benefit does not stack with the rogue crawl talent.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fearsome Barricade (Combat, Faction)",
                          featType: "General",
                          prerequisites: "Intimidate 5 ranks, Ulfen Guard TPA 20.",
                          benefit: "Choose an adjacent ally as a free action on your turn. Once per round, when an opponent attacks that ally, you may make an Intimidate check to demoralize the opponent as an immediate action. This action counts as an attack of opportunity.",
                          summary: "Choose an adjacent ally as a free action on your turn. Once per round, when an opponent attacks that ally, you may make an Intimidate check to demoralize the opponent as an immediate action.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grand Master Performer (Faction)",
                          featType: "General",
                          prerequisites: "Bardic performance class feature, Extra Performance, Master Performer, bard level 8th, Kitharodian Academy 20 TPA.",
                          benefit: "When any of your bardic performance abilities grant your allies a bonus, that bonus increases by +1. This bonus stacks with the bonus from the Master Performer feat.",
                          summary: "When any of your bardic performance abilities grant your allies a bonus, that bonus increases by +1. This bonus stacks with the bonus from the Master Performer feat.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ki Diversity (Combat, Faction)",
                          featType: "General",
                          prerequisites: "Ki pool class feature, Wis 13, Kusari-Gama 25 TPA.",
                          benefit: "You learn how to channel your ki in a new ability. Choose one of the following ki powers:Bone Crusher: When you succeed at a trip or disarm combat maneuver, you may spend 1 point from your ki pool as a swift action to deal damage to your opponent as if you had hit them with an unarmed strike.Dim Mak: You may spend 1 point from your ki pool as a swift action to execute your next Stunning Fist attack as a melee touch attack rather than a normal melee attack.Mind of the Kensai: You may spend 1 point from your ki pool as a swift action to imbue a single melee weapon in your hands with the ki focus weapon special ability until your next turn.Wings of the Crane: If you have the Deflect Arrows feat, you may spend 1 point from your ki pool as an immediate action to use that feat to deflect a second missile weapon that round. If you have the Snatch Arrows feat, you may use this ability to catch a second weapon, but not throw it back.Zen Combatant: You may spend 1 point from your ki pool as a swift action to substitute your Wisdom score for your Strength or Dexterity for all melee or ranged attacks you make that round.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, you may choose an additional ability from the list above. Monks can select this feat as a monk bonus feat.",
                          summary: "You learn how to channel your ki in a new ability. Choose one of the following ki powers:Bone Crusher: When you succeed at a trip or disarm combat maneuver, you may spend 1 point from your ki pool as…",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Let Them Come (Combat, Faction)",
                          featType: "General",
                          prerequisites: "Dwarf, Ninth Battalion TPA 25.",
                          benefit: "You treat all one- or two-handed melee weapons as if they had the brace special feature.",
                          normal: "Only weapons with the brace special feature can be readied against charges.",
                          summary: "You treat all one- or two-handed melee weapons as if they had the brace special feature.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Master Performer (Faction)",
                          featType: "General",
                          prerequisites: "Bardic performance class feature, Extra Performance, Kitharodian Academy 15 TPA.",
                          benefit: "When any of your bardic performance abilities grant your allies a bonus, that bonus is increased by +1.",
                          summary: "When any of your bardic performance abilities grant your allies a bonus, that bonus is increased by +1.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nameless Servitor (Faction)",
                          featType: "General",
                          prerequisites: "Risen Guard rank, Risen Guard 10 TPA.",
                          benefit: "Anyone who attempts to use magic in order to learn personal information about you, such as through divination, scrying, or similar magic, must make a caster level check with a DC equal to 10 plus your level to succeed. You are immune to spells that require the use of your name in order to function (such as trap the soul).Most members of the Risen Guard with this feat are addressed by their rank.",
                          special: "If you ever choose a real name, you lose all benefits of this feat.",
                          summary: "Anyone who attempts to use magic in order to learn personal information about you, such as through divination, scrying, or similar magic, must make a caster level check with a DC equal to 10 plus…",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Old Cults Awakener (Faction)",
                          featType: "General",
                          prerequisites: "Old Cults 20 TPA.",
                          benefit: "You can attempt a DC 25 Heal check upon an unconscious but stable intelligent creature. The ritual takes 1 hour to complete. If it’s successful, the victim must make a DC 25 Will save or he gains a false memory of a vision that he has personally been chosen by the Great Old Ones to serve them (treat as an implanted memory from modify memory, except this is a nonmagical effect). If the ritual is unsuccessful, the victim takes 1d2 points of Intelligence and Wisdom drain; you may attempt the ritual again.",
                          summary: "You can attempt a DC 25 Heal check upon an unconscious but stable intelligent creature. The ritual takes 1 hour to complete.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ominous Mien (Faction)",
                          featType: "General",
                          prerequisites: "Hellknight rank, Hellknight 10 TPA.",
                          benefit: "Whenever you cast a spell or use a spell-like ability from the compulsion, fear, phantasm, or shadow sub-schools, add +1 to the DC of the saving throw against that spell or effect.",
                          summary: "Whenever you cast a spell or use a spell-like ability from the compulsion, fear, phantasm, or shadow sub-schools, add +1 to the DC of the saving throw against that spell or effect.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Silent Performer (Faction)",
                          featType: "General",
                          prerequisites: "Bardic performance class feature, Extra Performance, Master Performer, bard level 12th, Kitharodian Academy 15 TPA.",
                          benefit: "You can use your audible-component bardic performance as visual-component bardic performances. Any bardic ability used in this manner expends 4 times as many bardic performance rounds as normal.",
                          summary: "You can use your audible-component bardic performance as visual-component bardic performances. Any bardic ability used in this manner expends 4 times as many bardic performance rounds as normal.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Touched by Sacred Fire (Faction)",
                          featType: "General",
                          prerequisites: "Endurance, Risen Guard rank, Risen Guard 15 TPA.",
                          benefit: "You gain fire resistance 5 and a +2 bonus on all saving throws to resist the effects of fire or heat. As a swift action, you can increase your fire resistance to 10 and your save bonus to +4 until your next turn; this causes you to lose your Dexterity bonus to Armor Class until your next turn (which leaves you vulnerable to sneak attacks).",
                          summary: "You gain fire resistance 5 and a +2 bonus on all saving throws to resist the effects of fire or heat.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Verbose Performer (Faction)",
                          featType: "General",
                          prerequisites: "Bardic performance class feature, Extra Performance, Master Performer, bard level 8th, Kitharodian Academy 15 TPA.",
                          benefit: "Double the range of any bardic performance ability that possesses a range in the ability description.",
                          summary: "Double the range of any bardic performance ability that possesses a range in the ability description.",
                          source: "Faction Guide", isPremium: true)
        )
        try await db.insertFeat(
        .make("Whispered Knowledge (Faction)",
                          featType: "General",
                          prerequisites: "Corporeal undead, Whispering Way 15 TPA.",
                          benefit: "Choose one of the following secrets:Secret of Blood: After successfully dealing damage to a living creature with a melee attack, you can consume that creature’s blood from your weapon as a swift action, gaining 1d8 temporary hit points, a +2 enhancement bonus to Strength, and a +1 bonus to your caster level. This lasts 10 minutes per Hit Die of your target, and otherwise acts as a death knell spell.Secret of Bone: Your bones harden and calcify. You gain DR 5/bludgeoning.Secret of Brains: As secret of blood, but you gain a +2 enhancement bonus to your Intelligence instead of Strength. This ability has no effect on mindless targets.Secret of the Grave: You can designate an unholy container for your remains, such as a coffin, canopic jar, or burial urn. When in this container and not taking any actions, you gain fast healing 5.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, you learn a new secret.",
                          summary: "Choose one of the following secrets:Secret of Blood: After successfully dealing damage to a living creature with a melee attack, you can consume that creature’s blood from your weapon as a swift…",
                          source: "Faction Guide", isPremium: true),

                    // // MARK: - Faiths of Corruption
        )
        try await db.insertFeat(
        .make("Firebrand (Combat)",
                          featType: "General",
                          prerequisites: "Worshiper of Asmodeus",
                          benefit: "You treat a torch as a light weapon that deals bludgeoning damage equal to that of a light mace of its size, plus 1 point of fire damage, and you do not incur penalties as you would for using it as an improvised weapon.",
                          normal: "A torch used in combat is treated as a one-handed improvised weapon that deals bludgeoning damage equal to that of a gauntlet of its size, plus 1 point of fire damage.",
                          summary: "You treat a torch as a light weapon that deals bludgeoning damage equal to that of a light mace of its size, plus 1 point of fire damage, and you do not incur penalties as you would for using it as…",
                          source: "Faiths of Corruption", isPremium: true)
        )
        try await db.insertFeat(
        .make("Welcome Pain",
                          featType: "General",
                          prerequisites: "Iron Will, worshiper of Zon-Kuthon.",
                          benefit: "Whenever you would be reduced to 0 or fewer hit points because of an ongoing or repeating damage effect (such as bleed), you may make a last-ditch effort to shed the condition. If you succeed at a DC 25 Will save, you ignore the damage that would reduce you to 0 or fewer hit points that turn. The DC of each subsequent save made in this manner increases by 1. In addition, spells or abilities that have the pain descriptor deal only half damage to you (if any).",
                          summary: "Whenever you would be reduced to 0 or fewer hit points because of an ongoing or repeating damage effect (such as bleed), you may make a last-ditch effort to shed the condition.",
                          source: "Faiths of Corruption", isPremium: true),

                    // // MARK: - Faiths of Golarion, Inner Sea Gods, Inner Sea Faiths
        )
        try await db.insertFeat(
        .make("Deific Obedience",
                          featType: "General",
                          prerequisites: "Knowledge (religion) 3 ranks, must worship a deity.",
                          benefit: "Each deity requires a different daily obedience, but all obediences take no more than 1 hour per day to perform. Once you’ve performed the obedience, you gain the benefit of a special ability or resistance as indicated in the Obedience entry for the god to whom you performed the obedience. If you have at least 12 Hit Dice, you also gain the first boon granted by your deity upon undertaking your obedience. If you have at least 16 Hit Dice, you also gain the second boon. If you have 20 Hit Dice or more, you also gain the third boon. Unless a specific duration or number of uses per day is listed, a boon’s effects are constant. If you have levels in the evangelist, exalted, or sentinel prestige classes, you gain access to these boons at lower levels as a benefit of your prestige class. If you have no levels in one of these prestige classes, you gain the boons marked as exalted boons. If you later take levels in sentinel or evangelist, you lose access to the exalted boons and gain access to the new boons appropriate to your class. If you ever fail to perform a daily obedience, you lose all access to the benefits and boons granted by this feat until you next perform the obedience.",
                          summary: "Each deity requires a different daily obedience, but all obediences take no more than 1 hour per day to perform.",
                          source: "Faiths of Golarion, Inner Sea Gods, Inner Sea Faiths", isPremium: true),

                    // // MARK: - Familiar Folio
        )
        try await db.insertFeat(
        .make("Decoy's Misdirection (Familiar)",
                          featType: "General",
                          prerequisites: "Must have a familiar with the decoy archetype (see page 10).",
                          benefit: "As long as your familiar is within 30 feet of you, anytime you succeed at a Will save to negate a scrying effect (including scrying and greater scrying), you become aware of the scrying attempt as though you succeeded at the Spellcraft check to identify it, and you can choose to let the spell function as normal instead of causing it to fail. If you do, you can choose to redirect the scrying effect toward your familiar, causing the familiar to immediately change shape (as its secret sharer spell-like ability, except the duration is as long as the scrying effect lasts). The creator of the scrying effect observes the familiar as though it were you, though spells such as detect magic detect the alter self effect as normal.",
                          summary: "As long as your familiar is within 30 feet of you, anytime you succeed at a Will save to negate a scrying effect (including scrying and greater scrying), you become aware of the scrying attempt as…",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Emissary's Emboldening (Familiar)",
                          featType: "General",
                          prerequisites: "Must have a familiar with the emissary archetype (see page 10).",
                          benefit: "As long as your familiar is adjacent to you, you gain a +1 morale bonus against fear effects. This bonus increases by 1 at 4th level and every 4 levels thereafter (to a maximum of +5 at 16th level). At 20th level, you become immune to fear effects as long as your familiar is adjacent to you.",
                          summary: "As long as your familiar is adjacent to you, you gain a +1 morale bonus against fear effects. This bonus increases by 1 at 4th level and every 4 levels thereafter (to a maximum of +5 at 16th level).",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Familiar Bond",
                          featType: "General",
                          prerequisites: "Iron Will.",
                          benefit: "You gain a familiar, as the wizard arcane bond class feature. You do not gain the special ability the familiar normally grants its master, and the familiar does not gain the deliver touch spells, scry on familiar, share spells, speak with animals of its kind, or spell resistance special abilities. Otherwise, your total Hit Dice are used as your wizard level for determining the familiar’s abilities.",
                          special: "If you have (or later gain) levels in a class that grants a familiar, whenever you select a familiar, you can either base your familiar’s abilities on your total Hit Dice per this feat (including the restrictions on its special abilities), or choose to apply only your levels in classes that grant a familiar (and thus gain all the special abilities that familiar would grant based on those class levels). You can never have more than one familiar.",
                          summary: "You gain a familiar, as the wizard arcane bond class feature. You do not gain the special ability the familiar normally grants its master, and the familiar does not gain the deliver touch spells,…",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Far-Roaming Familiar",
                          featType: "General",
                          prerequisites: "Intelligence 13, must have a familiar.",
                          benefit: "You retain your empathic link to your familiar regardless of distance, though lead blocks the link at distances greater than 1 mile (similar to the way lead blocks detect magic effects).",
                          summary: "You retain your empathic link to your familiar regardless of distance, though lead blocks the link at distances greater than 1 mile (similar to the way lead blocks detect magic effects).",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Figment's Fluidity (Familiar)",
                          featType: "General",
                          prerequisites: "Must have a familiar with the figment archetype (see page 10).",
                          benefit: "Once per day, your familiar can spend a full-round action to manually reshape itself, reassigning 1 evolution point of eidolon evolutions. The evolution it loses can’t be a prerequisite for any other evolutions it has. It can use this ability twice per day at 7th level, and three times per day at 13th level.",
                          summary: "Once per day, your familiar can spend a full-round action to manually reshape itself, reassigning 1 evolution point of eidolon evolutions.",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater School Familiar",
                          featType: "General",
                          prerequisites: "School Familiar, wizard level 10th, specialized arcane school class feature.",
                          benefit: "Your school familiar gains the greater school power from the school familiar archetype.",
                          summary: "Your school familiar gains the greater school power from the school familiar archetype.",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Group Deliver Touch Spells (Teamwork)",
                          featType: "General",
                          prerequisites: "Group Shared Spells, must have a familiar with the share spells and deliver touch spells abilities.",
                          benefit: "You and any allies with this feat can cast spells through one another’s familiars as though each ally had the share spells ability with each other familiar. This feat otherwise functions as the share spells ability.",
                          summary: "You and any allies with this feat can cast spells through one another’s familiars as though each ally had the share spells ability with each other familiar.",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Guardian's Return (Familiar)",
                          featType: "General",
                          prerequisites: "Must have a familiar with the protector archetype (see page 11).",
                          benefit: "Once per day when you take damage from a melee attack, as long as your familiar is within empathic link range, it can teleport back to your square as an immediate action. It can bring no more than 5 pounds of items with it when it teleports in this way. This ability otherwise functions as dimension door.",
                          summary: "Once per day when you take damage from a melee attack, as long as your familiar is within empathic link range, it can teleport back to your square as an immediate action.",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Familiar Bond",
                          featType: "General",
                          prerequisites: "Familiar Bond, Iron Will.",
                          benefit: "Your familiar gains all the normal abilities available to a familiar of a wizard with a level equal to your total Hit Dice. You also gain the special ability normally gained by a master of your type of familiar.",
                          summary: "Your familiar gains all the normal abilities available to a familiar of a wizard with a level equal to your total Hit Dice.",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mascot's Affection (Familiar)",
                          featType: "General",
                          prerequisites: "Must have a familiar with the mascot archetype (see page 11).",
                          benefit: "The maximum number of team members your familiar can have increases by two.",
                          summary: "The maximum number of team members your familiar can have increases by two.",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mauler's Endurance (Familiar)",
                          featType: "General",
                          prerequisites: "Must have a familiar with the mauler archetype (see page 11).",
                          benefit: "Your familiar gains 2 hit points per level you possess.",
                          summary: "Your familiar gains 2 hit points per level you possess.",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Polyglot Familiar (Familiar)",
                          featType: "General",
                          prerequisites: "Must have a familiar.",
                          benefit: "Choose a category of creature: amphibians, birds, felines, invertebrates, reptiles, rodents, simians, or vermin. Your familiar can speak with creatures of that kind.",
                          special: "This feat can be taken multiple times, choosing a different category of creature each time. The first time you take this feat, if your familiar can’t already speak with creatures of its kind, you must choose that category of creature. If your familiar later gains the ability to speak with creatures of its kind, you can choose to apply this feat’s benefits to a different category of creature instead.",
                          summary: "Choose a category of creature: amphibians, birds, felines, invertebrates, reptiles, rodents, simians, or vermin. Your familiar can speak with creatures of that kind.",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sage's Guidance (Familiar)",
                          featType: "General",
                          prerequisites: "Must have a familiar with the sage archetype (see page 11).",
                          benefit: "When your familiar succeeds at a Knowledge check to identify a hazard or an opponent’s weaknesses and abilities, you gain a +2 insight bonus on attacks and skill checks against the opponent or hazard for 1 round. If your familiar is sharing a space with the opponent or hazard, this bonus is granted to all allies who can see and understand the familiar.",
                          summary: "When your familiar succeeds at a Knowledge check to identify a hazard or an opponent’s weaknesses and abilities, you gain a +2 insight bonus on attacks and skill checks against the opponent or hazard…",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("School Familiar",
                          featType: "General",
                          prerequisites: "Familiar effective level 5th, specialized arcane school class feature.",
                          benefit: "You can apply the school familiar archetype to your familiar.",
                          summary: "You can apply the school familiar archetype to your familiar.",
                          source: "Familiar Folio", isPremium: true)
        )
        try await db.insertFeat(
        .make("Telepathic Link",
                          featType: "General",
                          prerequisites: "Must have a familiar with the speak with master ability.",
                          benefit: "You and your familiar can communicate with each other telepathically at a range of up to 1 mile.",
                          summary: "You and your familiar can communicate with each other telepathically at a range of up to 1 mile.",
                          source: "Familiar Folio", isPremium: true),

                    // // MARK: - Gallows of Madness, Advanced Class Guide
        )
        try await db.insertFeat(
        .make("Undersized Mount (Combat)",
                          featType: "General",
                          prerequisites: "Ride 1 rank.",
                          benefit: "You can ride creatures of your size category, although encumbrance or other factors might limit how you can use this ability.",
                          normal: "Typically a mount suited for you is at least one size category larger than you.",
                          summary: "You can ride creatures of your size category, although encumbrance or other factors might limit how you can use this ability.",
                          source: "Gallows of Madness, Advanced Class Guide", isPremium: true),

                    // // MARK: - Giant Hunter's Handbook
        )
        try await db.insertFeat(
        .make("Arcing Lob",
                          featType: "General",
                          prerequisites: "Dex 15, Point-Blank Shot, Precise Shot, Throw Anything.",
                          benefit: "When you hit a target that is Large or larger with a splash weapon, you can choose to deal splash damage to all creatures within 5 feet of the target, splash damage to no creatures, or splash damage as normal.",
                          normal: "If you hit a target that is Large or larger with a splash weapon, choose one of its squares—the splash damage affects creatures within 5 feet of that square.",
                          summary: "When you hit a target that is Large or larger with a splash weapon, you can choose to deal splash damage to all creatures within 5 feet of the target, splash damage to no creatures, or splash damage…",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cry Challenge",
                          featType: "General",
                          prerequisites: "Antagonize UM .",
                          benefit: "When you take a 5-foot step, you can choose for that step to provoke attacks of opportunity from all opponents that threaten you after the step. You gain a +4 dodge bonus to AC against attacks of opportunity provoked in this manner.",
                          normal: "A 5-foot step doesn’t provoke an attack of opportunity.",
                          summary: "When you take a 5-foot step, you can choose for that step to provoke attacks of opportunity from all opponents that threaten you after the step.",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Darting Retrieval (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Int 13, Combat Expertise, Improved Disarm.",
                          benefit: "When an ally who also has this feat disarms an opponent and the disarmed item lands within your melee reach, as an immediate action you can move the disarmed item to another square within your melee reach. If you have at least one hand free and could carry the disarmed item, you can instead pick it up. Using this feat does not provoke an attack of opportunity.",
                          summary: "When an ally who also has this feat disarms an opponent and the disarmed item lands within your melee reach, as an immediate action you can move the disarmed item to another square within your melee…",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Giant Vendetta (Story)",
                          featType: "General",
                          prerequisites: "You must have been knocked unconscious in an encounter with a challenging giant foe or have a regional background trait tied to giants (such as those presented in this section).",
                          benefit: "Choose one kind of giant (such as hill or stone); you must choose a kind of giant that allows you to qualify for this feat. You gain a +1 bonus on attack rolls against giants of that kind. You also gain a +1 bonus on Knowledge (local) checks regarding giants of that kind and can attempt those Knowledge checks untrained. In addition, you gain a +1 dodge bonus to AC against all giants.Goal: Defeat a giant of the chosen kind that is a challenging foe.Completion Benefit: You gain a +1 bonus on initiative checks when facing a giant of any kind, which increases to +2 against giants of the selected kind. Whenever you defeat a giant of any kind that is a challenging foe, the benefits of this feat that apply only to a specific kind of giant now also apply to giants of the kind you defeated.",
                          summary: "Choose one kind of giant (such as hill or stone); you must choose a kind of giant that allows you to qualify for this feat. You gain a +1 bonus on attack rolls against giants of that kind.",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Giant-Bane Caster",
                          featType: "General",
                          prerequisites: "Caster level 4th, favored enemy (giants) class feature.",
                          benefit: "Add 1/2 your favored enemy bonus against giants to the DC of all saving throws against spells you cast against creatures with the giant subtype, as well as to caster level checks made to overcome the spell resistance of creatures with the giant subtype.",
                          summary: "Add 1/2 your favored enemy bonus against giants to the DC of all saving throws against spells you cast against creatures with the giant subtype, as well as to caster level checks made to overcome the…",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Giant-Killer Stance (Combat)",
                          featType: "General",
                          prerequisites: "Power Attack.",
                          benefit: "You can treat any reach weapon you wield as having the brace property against creatures that are Large or larger. If your readied attack hits, the creature takes a –2 penalty on melee attack rolls for 1 round.",
                          summary: "You can treat any reach weapon you wield as having the brace property against creatures that are Large or larger.",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ground-Grabber (Combat)",
                          featType: "General",
                          prerequisites: "Con 13.",
                          benefit: "You gain a +2 competence bonus to your Combat Maneuver Defense against awesome blow, bull rush, drag, reposition, or trip combat maneuvers from opponents larger than you.",
                          summary: "You gain a +2 competence bonus to your Combat Maneuver Defense against awesome blow, bull rush, drag, reposition, or trip combat maneuvers from opponents larger than you.",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mountain-Splitting Strike (Combat)",
                          featType: "General",
                          prerequisites: "Wis 13, Improved Unarmed Strike.",
                          benefit: "When you make a charge attack against an opponent at least one size category larger than you, your unarmed attacks deal damage as though you were one size category larger. In addition, you gain a +2 bonus to the DC of any Stunning Fist effect you deliver with this charge attack.",
                          summary: "When you make a charge attack against an opponent at least one size category larger than you, your unarmed attacks deal damage as though you were one size category larger.",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Pernicious Stab (Combat)",
                          featType: "General",
                          prerequisites: "Sneak attack +2d6.",
                          benefit: "When you hit an opponent with a poisoned weapon and would deal sneak attack damage, you can choose to forgo some or all of the sneak attack damage to increase the poison’s chance of success. For every 2d6 points of sneak attack damage you forgo, add 1 to the saving throw DC of the poison delivered with your attack. This increase to the poison save DC does not apply to creatures that are immune to precision damage.",
                          summary: "When you hit an opponent with a poisoned weapon and would deal sneak attack damage, you can choose to forgo some or all of the sneak attack damage to increase the poison’s chance of success.",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Scuttle",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can crawl at half your normal speed and can take a 5-foot step when crawling. When crawling, you don’t provoke attacks of opportunity from opponents that are one or more size categories larger than you.",
                          normal: "You can crawl 5 feet as a move action, and crawling provokes attacks of opportunity.",
                          summary: "You can crawl at half your normal speed and can take a 5-foot step when crawling.",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stone Dodger (Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you are able to see and hear at least one ally with this feat, you receive a +4 dodge bonus to AC against attacks from hurled rocks (or projectiles of similar shape, including bludgeoning ranged attacks from siege weapons). If you are hit by such an attack while you have this bonus, you can attempt a Reflex save to take only half damage from the attack. The DC for this save is equal to the bonus of the ranged attack used to hurl the rock.",
                          summary: "Whenever you are able to see and hear at least one ally with this feat, you receive a +4 dodge bonus to AC against attacks from hurled rocks (or projectiles of similar shape, including bludgeoning…",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Suppress Regeneration (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you make a successful attack that causes a creature’s regeneration ability to cease functioning for at least 1 round (such as by hitting a troll with alchemist’s fire), any ally who also has this feat and is currently threatening the creature can make an attack of opportunity against it. This attack of opportunity deals no damage, but instead extends the time that the creature’s regeneration is suppressed by 1 additional round. If multiple allies with this feat hit the creature with this attack of opportunity, the additional rounds of suppression stack.",
                          summary: "When you make a successful attack that causes a creature’s regeneration ability to cease functioning for at least 1 round (such as by hitting a troll with alchemist’s fire), any ally who also has…",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Swing About (Teamwork)",
                          featType: "General",
                          prerequisites: "Escape Route UC .",
                          benefit: "If you have a free hand, as a move action you can grab a willing adjacent ally who also has this feat and place her in any other space adjacent to you. This movement does not provoke attacks of opportunity. You can do this only with allies who are able to move freely (not grappled, held, prone, slowed, or otherwise suffering restricted movement) and who are of your size or smaller.",
                          summary: "If you have a free hand, as a move action you can grab a willing adjacent ally who also has this feat and place her in any other space adjacent to you.",
                          source: "Giant Hunter's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Yai-Mimic Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Int 15, Still Spell.",
                          benefit: "You can modify a ray spell to issue from the center of your forehead, where the third eye would be on a yai. This spell doesn’t require somatic components. When the spell is cast, you gain regeneration 1 for a number of rounds equal to the original level of the spell. This regeneration can’t regrow lost body parts or reattach severed limbs. Fire or acid damage suppresses this regeneration for 1 round, which counts against the total duration of the regeneration effect. A yai-mimic spell uses up a spell slot 3 levels higher than the spell’s actual level.",
                          summary: "You can modify a ray spell to issue from the center of your forehead, where the third eye would be on a yai. This spell doesn’t require somatic components.",
                          source: "Giant Hunter's Handbook", isPremium: true),

                    // // MARK: - Giants Revisited
        )
        try await db.insertFeat(
        .make("Blasting Boulder",
                          featType: "General",
                          prerequisites: "Smoking Boulder, base attack bonus +13, heat rock special attack.",
                          benefit: "You can infuse rocks thrown as part of an attack action with volatile fire energies, adding one of the following effects to a thrown rock affected by your Smoking Boulder feat.",
                          summary: "You can infuse rocks thrown as part of an attack action with volatile fire energies, adding one of the following effects to a thrown rock affected by your Smoking Boulder feat.",
                          source: "Giants Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Earthtouched",
                          featType: "General",
                          prerequisites: "Cha 15, stone giant.",
                          benefit: "You have a distinguishing feature such as small stature, odd coloration, or crystalline growths on your skin that mark your sorcerous potential. You gain a +1 racial bonus to your caster level when casting sorcerer spells with the earth descriptor. For every 3 sorcerer levels you attain, you add a new spell known of a spell level you can cast. This spell must either be from the abjuration or divination schools or have the earth descriptor.",
                          summary: "You have a distinguishing feature such as small stature, odd coloration, or crystalline growths on your skin that mark your sorcerous potential.",
                          source: "Giants Revisited", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stone Awareness",
                          featType: "General",
                          prerequisites: "Wis 13, Perception 10 ranks, stone giant.",
                          benefit: "You gain tremorsense 15 feet when in contact with earth or stone, including worked stone, and gain all the benefits of the tremorsense universal monster ability.",
                          summary: "You gain tremorsense 15 feet when in contact with earth or stone, including worked stone, and gain all the benefits of the tremorsense universal monster ability.",
                          source: "Giants Revisited", isPremium: true),

                    // // MARK: - Giants Revisited, Pathfinder #4: Fortress of the Stone Giants
        )
        try await db.insertFeat(
        .make("Stone Magic",
                          featType: "General",
                          prerequisites: "Cha 17, stone giant elder (age 700 years or older).",
                          benefit: "In addition to the usual spell-like abilities of a stone giant elder, you gain the ability to use passwall, spike stones, statue, stoneskin, and wall of stone once per day as spell-like abilities (caster level 10th, the save DCs are Charisma-based).",
                          summary: "In addition to the usual spell-like abilities of a stone giant elder, you gain the ability to use passwall, spike stones, statue, stoneskin, and wall of stone once per day as spell-like abilities…",
                          source: "Giants Revisited, Pathfinder #4: Fortress of the Stone Giants", isPremium: true),

                    // // MARK: - Gnomes of Golarion
        )
        try await db.insertFeat(
        .make("Arcane School Spirit",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, arcane school class feature, gnome.",
                          benefit: "As a full-round action, you extol the virtues of your school of magic to one creature within 30 feet. Make a Bluff check opposed by a target’s Sense Motive check; if you win the check, the target takes a –2 penalty on saving throws made to resist the next spell of this school that you cast. If your chosen school is universalist, choose a specific school each time you use this ability. If your Bluff check succeeds, however, your lack of true commitment to the school means the target takes only a –1 penalty on its saving throw.",
                          summary: "As a full-round action, you extol the virtues of your school of magic to one creature within 30 feet.",
                          source: "Gnomes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Babble-Peddler",
                          featType: "General",
                          prerequisites: "Appraise 5 ranks, Bluff 5 ranks, gnome.",
                          benefit: "Make a Bluff check to praise the value and worth of an object in your hand while denigrating an object held by a nearby creature; this takes anywhere from 1 round to 1 minute depending on the appearance and nature of the items. If the creature fails its check, it agrees to exchange your object for its own. Obvious differences in the value between the exchanged items give your roll a +4 or –4 modifier, at the GM’s discretion (offering a clay cup for a jeweled dagger gives your roll a –4 penalty). The GM may rule that some items are too obviously valuable or worthless for this feat to apply (a king wouldn’t trade his crown for any item, and no normal person would trade an item for a piece of garbage). If you fail the check by 5 or more, the target is insulted and his attitude toward you worsens by one category.Once the exchange happens, make an Appraise roll opposed by the target’s Appraise or Sense Motive roll. If the target wins, it immediately realizes the true value of the object you offered it and behaves accordingly. If you succeed, it believes your false assessment for 1 round; for every 5 by which your check exceeds your opponent’s check, the deception lasts 1 more round. As with disbelieving illusions, the target’s ally can point out the true value of the object, giving the target another check with a +2 bonus.You cannot use this ability in combat, against a creature whose attitude toward you is hostile or unfriendly, against a creature that does not understand you, or against a creature that has an Intelligence score of 3 or less.",
                          summary: "Make a Bluff check to praise the value and worth of an object in your hand while denigrating an object held by a nearby creature; this takes anywhere from 1 round to 1 minute depending on the…",
                          source: "Gnomes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bewildering Koan",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, ki pool class feature, gnome.",
                          benefit: "As a swift action, spend 1 point from your ki pool and make a Bluff check by asking a creature one of the impossible questions you ponder when meditating. If the creature fails its check, you choose whether it loses its next action or you gain a +2 bonus on all damage rolls you make against that creature for 1 round.",
                          summary: "As a swift action, spend 1 point from your ki pool and make a Bluff check by asking a creature one of the impossible questions you ponder when meditating.",
                          source: "Gnomes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blood Ties",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, bloodline class feature, gnome.",
                          benefit: "When attempting a Diplomacy check to influence a creature with a plausible connection to your sorcerous bloodline, you may instead make a Bluff check. For example, a gnome sorcerer with the draconic bloodline may use this feat against dragons and their kin, but no other creatures.",
                          summary: "When attempting a Diplomacy check to influence a creature with a plausible connection to your sorcerous bloodline, you may instead make a Bluff check.",
                          source: "Gnomes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Caustic Slur",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, favored enemy class feature, gnome.",
                          benefit: "As a standard action, you can make a Bluff check against one sort of favored enemy. Any creature of that type within 60 feet of you must make a Will saving throw or become angered. If an affected creature attacks you, it's treated as if it were using Power Attack (taking a penalty on attack rolls but gaining a bonus on damage rolls). If the creature already has the power attack feat, the attack penalty increases by 1 and the damage bonus increases by 2. These modifiers end when combat ends.This ability does not work on creatures that cannot understand you, though sometimes a simple gesture is sufficient for an intelligent opponent to catch your gist regardless of any language barrier.",
                          summary: "As a standard action, you can make a Bluff check against one sort of favored enemy. Any creature of that type within 60 feet of you must make a Will saving throw or become angered.",
                          source: "Gnomes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Effortless Trickery",
                          featType: "General",
                          prerequisites: "Gnome.",
                          benefit: "You can maintain concentration on one spell of the illusion school as a swift action. This has no effect on spells of other schools or on illusion spells with durations that don’t depend on your active concentration. While you may only maintain one spell as a swift action, you may take your move and standard actions to maintain other spells normally, if you wish.",
                          normal: "Concentrating to maintain a spell is a standard action that does not provoke attacks of opportunity.",
                          summary: "You can maintain concentration on one spell of the illusion school as a swift action.",
                          source: "Gnomes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Gnome Magic",
                          featType: "General",
                          prerequisites: "Cha 13, Gnome.",
                          benefit: "You gain an additional three uses per day of your gnome spell-like abilities (dancing lights, ghost sound, prestidigitation). You can use these in any combination; for example, you can use dancing lights four times in one day (taking all three additional uses for the same spell), or you can cast ghost sound twice, prestidigitation twice, speak with animals twice, and dancing lights once. If you have a feat, trait, or other ability that changes your racial 0-level spell-like abilities to other 0-level spells, this feat applies to them instead.",
                          summary: "You gain an additional three uses per day of your gnome spell-like abilities (dancing lights, ghost sound, prestidigitation).",
                          source: "Gnomes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Helpless Prisoner",
                          featType: "General",
                          prerequisites: "Bluff 5 ranks, Escape Artist 1 rank, gnome.",
                          benefit: "When you are restrained or imprisoned, you can make a Bluff check against any one creature within 30 feet in which you emphasize both your own harmlessness and the pain or inconvenience of your current condition. If the creature knows you are dangerous, it adds a +4 bonus to its Sense Motive check. If you win the check, the target does something intended to make you a little more comfortable—or at least shut you up—that gives you a +5 bonus on your next Escape Artist check.",
                          special: "At the GM’s discretion, an especially evil or cruel creature may gain a +2 bonus to its Sense Motive check to resist this ability. If it succeeds, it does something to make your bindings even more secure and less comfortable, giving you a –5 penalty on all Escape Artist checks made in those particular bonds.",
                          summary: "When you are restrained or imprisoned, you can make a Bluff check against any one creature within 30 feet in which you emphasize both your own harmlessness and the pain or inconvenience of your…",
                          source: "Gnomes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Invoke Primal Instinct",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, wild shape class feature, gnome.",
                          benefit: "As a standard action, you can pantomime or describe predator- or prey-like behavior, expend one of your uses of wild shape, and make a Bluff check. All creatures within 30 feet that fail a Will save against your Bluff check DC regard you as a figure of either fear or contempt (your choice applies to all affected creatures). If you choose fear, the targets are frightened for 1 round per druid level. If you choose contempt, the targets consider you harmless for 1 minute, ignoring you unless you attack them or take a threatening action.",
                          summary: "As a standard action, you can pantomime or describe predator- or prey-like behavior, expend one of your uses of wild shape, and make a Bluff check.",
                          source: "Gnomes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Master of Wonders",
                          featType: "General",
                          prerequisites: "Iron Will, Wonderseeker faction, gnome.",
                          benefit: "When you activate a rod of wonder, roll d% to determine what effect the rod would create. If you desire to do so, you can roll d% again and use this second result. You can only use this ability once per round.",
                          summary: "When you activate a rod of wonder, roll d% to determine what effect the rod would create. If you desire to do so, you can roll d% again and use this second result.",
                          source: "Gnomes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tantrum",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, rage class feature, gnome.",
                          benefit: "You may use the Bluff skill to feint while raging. The effect of the feint lasts only until the first time you hit the target.",
                          summary: "You may use the Bluff skill to feint while raging. The effect of the feint lasts only until the first time you hit the target.",
                          source: "Gnomes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Threatening Illusion (Metamagic)",
                          featType: "General",
                          prerequisites: "Spell Focus (illusion), Gnome.",
                          benefit: "You can use this metamagic feat only on illusion (figment) spells.A threatening illusion spell causes one target to believe your illusion is a threat. Choose one 5-foot square within the area of your illusion; that square threatens the target as long as it is adjacent. Thus, if you or an ally is on the opposite side of the target, it is considered flanking.Normally the area must contain an illusory creature of Small or Medium size. However, you can select one square of a larger illusory creature to threaten the target. For example, an illusory Large ogre takes up four 5-foot squares; you select one square to be the source of the threat, and its other three squares do not threaten anyone.If the target has reason to believe there is an invisible creature in the vicinity, even an auditory illusion with no visual elements (such as ghost sound) is sufficient to convince the target that the selected square contains an actual threat. As long as you maintain the illusion, you can change the location of the threatening square as a swift action.When you threaten a target with this spell, the foe may make a Will save to disbelieve (DC 10 + threatening spell’s level + your spellcasting ability score modifier). If the target makes this save, the threatening effect of this feat no longer applies to it.A threatening illusion takes up a spell slot one level higher than normal.",
                          summary: "You can use this metamagic feat only on illusion (figment) spells.A threatening illusion spell causes one target to believe your illusion is a threat.",
                          source: "Gnomes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Witty Feint",
                          featType: "General",
                          prerequisites: "Bluff 1 rank, weapon training class feature, gnome.",
                          benefit: "When you successfully feint against an opponent in combat, instead of denying the opponent his Dexterity bonus, you may gain a dodge bonus to your AC against his attacks. This bonus is equal to your weapon training bonus for your current weapon. The bonus lasts until combat ends, you switch opponents, or you switch to a different weapon, whichever comes first.",
                          summary: "When you successfully feint against an opponent in combat, instead of denying the opponent his Dexterity bonus, you may gain a dodge bonus to your AC against his attacks.",
                          source: "Gnomes of Golarion", isPremium: true),

                    // // MARK: - Goblins of Golarion
        )
        try await db.insertFeat(
        .make("Ankle Biter (Combat)",
                          featType: "General",
                          prerequisites: "Goblin, Escape Artist 1 rank.",
                          benefit: "If you are the target of a combat maneuver you can, as an immediate action, attempt to bite your opponent in addition to any attacks of opportunity or other consequences your opponent might incur from attacking you. This bonus natural attack does not provoke an attack of opportunity itself and deals base damage appropriate for a creature of your current size (usually 1d4 for Small creatures). If grappled or pinned, you can continue to make this additional bite attack each round as swift action on your turn. You gain a bonus on any attempt to break the grapple equal to the damage you dealt with your bite that round.",
                          special: "You cannot make this bite attack when you are the aggressor, including if you manage to reverse a grapple or make any other attack of opportunity.",
                          summary: "If you are the target of a combat maneuver you can, as an immediate action, attempt to bite your opponent in addition to any attacks of opportunity or other consequences your opponent might incur…",
                          source: "Goblins of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Battle Singer",
                          featType: "General",
                          prerequisites: "Goblin, bardic performance class feature.",
                          benefit: "When using bardic performance to inspire courage in allies, you can choose to sing in Goblin—allies who do not speak Goblin gain no benefits from this performance. Allied goblins who hear your battle songs become more energetic and brave, and thus add the bonus granted by your inspire courage ability to all saving throws as a morale bonus.",
                          summary: "When using bardic performance to inspire courage in allies, you can choose to sing in Goblin—allies who do not speak Goblin gain no benefits from this performance.",
                          source: "Goblins of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Combat Distraction",
                          featType: "General",
                          prerequisites: "Goblin, Acrobatics 1 rank, Escape Artist 1 rank.",
                          benefit: "As a full-round action, you can choose to do something that seems to serve no useful purpose. Example actions could include laughing at another creature’s misfortune, rooting in your pockets for a snack, bending over to pick up what looks like a weird bug, or trying to fly into the air by flapping your arms like a sea gull.Although you’re acting like a lunatic, your unpredictable actions are distracting. Any creature other than a goblin within 5 feet of you takes a –2 penalty on Perception checks and concentration checks for as long as you continue to be a distraction and remain in range. This penalty stacks with other goblins performing combat distractions, as long as you’re both adjacent to the distracted target.",
                          summary: "As a full-round action, you can choose to do something that seems to serve no useful purpose.",
                          source: "Goblins of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dog Killer, Horse Hunter",
                          featType: "General",
                          prerequisites: "Goblin, Handle Animal 1 rank.",
                          benefit: "You gain a +2 morale bonus on all attack and damage rolls made against dogs and horses (including doglike and horse-like targets such a nightmares or worgs). Additionally, you gain a +2 bonus on rolls to confirm critical hits against these foes.",
                          summary: "You gain a +2 morale bonus on all attack and damage rolls made against dogs and horses (including doglike and horse-like targets such a nightmares or worgs).",
                          source: "Goblins of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lead from the Back (Combat)",
                          featType: "General",
                          prerequisites: "Goblin, Intimidate 1 rank.",
                          benefit: "During any round in which you gain the benefit of cover or concealment against at least one opponent, and you are not threatened by any opponent, you can bark orders and encouragement to your allies as a standard action. Doing so grants all allies within 30 feet a +1 bonus on all weapon damage rolls for 1 round.",
                          summary: "During any round in which you gain the benefit of cover or concealment against at least one opponent, and you are not threatened by any opponent, you can bark orders and encouragement to your allies…",
                          source: "Goblins of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Letter Fury",
                          featType: "General",
                          prerequisites: "Goblin, rage class feature.",
                          benefit: "If someone reads or writes in your presence (including casting spells like glyph of warding or symbol) you can, as an immediate action, choose to activate your rage class ability for 1 round. This round of rage does not count toward the total number of rounds which you can rage each day, but if you wish to continue your rage beyond that single round you must expend rounds from your daily rage allotment as normal. Once you use this feat you must wait at least 1 minute after you cease raging before you can use it again.",
                          summary: "If someone reads or writes in your presence (including casting spells like glyph of warding or symbol) you can, as an immediate action, choose to activate your rage class ability for 1 round.",
                          source: "Goblins of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Roll With It (Combat)",
                          featType: "General",
                          prerequisites: "Goblin, Acrobatics 1 rank.",
                          benefit: "If you are struck by a melee weapon you can try to convert some or all of that damage into movement that sends you off in an uncontrolled bouncing roll. To do so, you must make an Acrobatics check (DC = 5 + the damage dealt from the attack) as an immediate action. If you succeed in this check, you take no damage from the actual attack but instead convert that damage into movement with each point equating to 1 foot of movement. For example, if you would have taken 6 points of damage, you would convert that into 6 feet of movement. You immediately move in a straight line in a direction of your choice this number of feet (rounded up to the nearest 5-foot-square), halting if you reach a distance equal to your actual speed. If this movement would make you strike an object or creature of your size or larger, the movement immediately ends, you take 1d4 points of damage, and fall prone in that square. This involuntary movement provokes attacks of opportunity normally if you move through threatened squares, but does not provoke an attack of opportunity from the creature that struck you in the first place.You are staggered for 1 round after you attempt to use this feat, whether or not you succeed.",
                          summary: "If you are struck by a melee weapon you can try to convert some or all of that damage into movement that sends you off in an uncontrolled bouncing roll.",
                          source: "Goblins of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Saddle Shrieker (Combat)",
                          featType: "General",
                          prerequisites: "Goblin, Ride 1 rank.",
                          benefit: "You can choose to take a –1 penalty on all attack rolls and combat maneuver checks to grant your mount a +1 bonus on all attack rolls and damage rolls made with natural weapons. These effects affect you and your mount for 1 round. When your base attack bonus reaches +4, and every 4 points thereafter, this penalty increases by –1 and the bonus to your mount’s attack and damage increases by +1 to a maximum of +5. You must choose to use this feat before making an attack roll.",
                          summary: "You can choose to take a –1 penalty on all attack rolls and combat maneuver checks to grant your mount a +1 bonus on all attack rolls and damage rolls made with natural weapons.",
                          source: "Goblins of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vandal",
                          featType: "General",
                          prerequisites: "Goblin, sneak attack class feature.",
                          benefit: "You treat unattended objects as if they were vulnerable to your sneak attack, but you only deal half as much damage as you would against an actual creature. For instance, if you rolled 12 extra damage from the sneak attack you would deal an extra 6 damage to the object. This only applies when attacking unattended objects.",
                          summary: "You treat unattended objects as if they were vulnerable to your sneak attack, but you only deal half as much damage as you would against an actual creature.",
                          source: "Goblins of Golarion", isPremium: true),

                    // // MARK: - Guide to Darkmoon Vale
        )
        try await db.insertFeat(
        .make("Strength of the Diamond",
                          featType: "General",
                          prerequisites: "Con 13, Wisdom 13, character level 3rd, member of the Diamond Regiment.",
                          benefit: "Any effect that would normally make you panicked instead makes you frightened. Any effect that would make you frightened instead makes you shaken. Any effect that would make you shaken has no effect on you. Note that you can still become increasingly frightened by multiple fear effects from different sources, but that each source is modified before it is applied to you. In addition, you gain a +2 bonus on any saving throw versus fear effects.",
                          summary: "Any effect that would normally make you panicked instead makes you frightened. Any effect that would make you frightened instead makes you shaken.",
                          source: "Guide to Darkmoon Vale", isPremium: true),

                    // // MARK: - Guide to Korvosa, Curse of the Crimson Throne Player's Guide
        )
        try await db.insertFeat(
        .make("Sable Company Marine",
                          featType: "General",
                          prerequisites: "Ride 6 ranks, ranger level 4th.",
                          benefit: "You gain a hippogriff as your animal companion. You gain a +2 bonus on Ride checks made while riding your hippogriff animal companion. Whenever you are within 20 feet of your hippogriff, it gains a +2 bonus on saving throws made against fear effects.",
                          summary: "You gain a hippogriff as your animal companion. You gain a +2 bonus on Ride checks made while riding your hippogriff animal companion.",
                          source: "Guide to Korvosa, Curse of the Crimson Throne Player's Guide", isPremium: true),

                    // // MARK: - Guide to the River Kingdoms
        )
        try await db.insertFeat(
        .make("Touvette Defender",
                          featType: "General",
                          prerequisites: "Touvette affinity.",
                          benefit: "Once per day, you may attempt to smite an enemy of Touvette with one normal melee attack. You gain a +4 morale bonus on your attack roll and deal 1 extra point of damage per level. For the purpose of this feat, an enemy of Touvette is any person or creature that is not a citizen of Touvette. You can only use this ability within the borders of Touvette.",
                          summary: "Once per day, you may attempt to smite an enemy of Touvette with one normal melee attack. You gain a +4 morale bonus on your attack roll and deal 1 extra point of damage per level.",
                          source: "Guide to the River Kingdoms", isPremium: true),

                    // // MARK: - Halflings of Golarion
        )
        try await db.insertFeat(
        .make("Ammo Drop (Combat)",
                          featType: "General",
                          prerequisites: "Sleight of Hand 1 rank, proficient with sling.",
                          benefit: "You can load a sling or one end of a double sling with one hand as a swift action or move action. This does not provoke an attack of opportunity.",
                          summary: "You can load a sling or one end of a double sling with one hand as a swift action or move action. This does not provoke an attack of opportunity.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Arcane Jinxer",
                          featType: "General",
                          prerequisites: "Arcane spellcaster, Halfling Jinx trait.",
                          benefit: "When you attempt to jinx a creature, you can expend one of your prepared arcane spells or available arcane spell slots to give your target a penalty on its jinx save equal to the level of the expended spell or spell slot. This does not alter the effect of the jinx, only the saving throw to resist the jinx.",
                          summary: "When you attempt to jinx a creature, you can expend one of your prepared arcane spells or available arcane spell slots to give your target a penalty on its jinx save equal to the level of the…",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Area Jinx",
                          featType: "General",
                          prerequisites: "Widen Spell, Halfling Jinx trait.",
                          benefit: "When you use your jinx, you create an instantaneous invisible burst with a maximum radius of 10 feet anywhere within the normal range of your jinx, affecting multiple targets. Any creature within this burst, regardless of whether or not you can see it, must make a saving throw to resist your jinx. If you use your jinx again, all of your current jinxes immediately end.",
                          special: "You can gain this feat multiple times. Each time you do, the maximum area of your jinx burst increases by an additional 10 feet.",
                          summary: "When you use your jinx, you create an instantaneous invisible burst with a maximum radius of 10 feet anywhere within the normal range of your jinx, affecting multiple targets.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bolster Jinx",
                          featType: "General",
                          prerequisites: "Great Fortitude, Iron Will, or Lightning Reflexes; Halfling Jinx trait.",
                          benefit: "A jinxed target’s penalty on Fortitude, Reflex, or Will saves increases by 2 if you have the Great Fortitude, Lightning Reflexes, or Iron Will feat, respectively. If you have more than one of these feats, the additional penalties apply to all of the corresponding saves.",
                          summary: "A jinxed target’s penalty on Fortitude, Reflex, or Will saves increases by 2 if you have the Great Fortitude, Lightning Reflexes, or Iron Will feat, respectively.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Distant Jinx",
                          featType: "General",
                          prerequisites: "Halfling Jinx trait.",
                          benefit: "The range of your jinx increases by 30 feet.",
                          special: "You can gain this feat multiple times. Its effects stack.",
                          summary: "The range of your jinx increases by 30 feet.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fascination Jinx",
                          featType: "General",
                          prerequisites: "Bardic performance class feature, Halfling Jinx trait.",
                          benefit: "If you jinx a creature under the effect of a bard’s fascinate ability, it also takes a –10 penalty on initiative checks while affected by the jinx. A creature under the effect of your fascinate ability has a –2 penalty on its save against your jinx.",
                          summary: "If you jinx a creature under the effect of a bard’s fascinate ability, it also takes a –10 penalty on initiative checks while affected by the jinx.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Halfling Slinger (Combat)",
                          featType: "General",
                          prerequisites: "Halfling.",
                          benefit: "You gain a +1 racial bonus on attack rolls made using a sling.",
                          summary: "You gain a +1 racial bonus on attack rolls made using a sling.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Jinx Alchemy",
                          featType: "General",
                          prerequisites: "Swift alchemy class feature, Halfling Jinx trait.",
                          benefit: "A jinxed creature cannot benefit from the effects of potions, elixirs, or any other substance that he must ingest in order to activate. This includes alchemical substances such as antitoxin, but not extracts, mutagens, or other alchemist class abilities that only affect the alchemist. A jinxed creature still takes any penalties and detrimental effects from ingested compounds or poisons.",
                          summary: "A jinxed creature cannot benefit from the effects of potions, elixirs, or any other substance that he must ingest in order to activate.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Jinxed Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Any two metamagic feats, Halfling Jinx trait.",
                          benefit: "Any creature that fails its saving throw against a jinxed spell also suffers the effects of your jinx. This feat has no effect on spells that do not allow a saving throw. If the spell affects an area or multiple creatures, you must select one creature to take the jinx, unless you have the Area Jinx feat; if you have the Area Jinx feat, choose a jinx burst area within the spell’s area or among its targets and apply the jinx to those in the burst that failed their save. A jinxed spell uses up a spell slot one level higher than the spell’s actual level.",
                          summary: "Any creature that fails its saving throw against a jinxed spell also suffers the effects of your jinx. This feat has no effect on spells that do not allow a saving throw.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Juggle Load (Combat)",
                          featType: "General",
                          prerequisites: "Ammo Drop, Sleight of Hand 1 rank, proficient with sling.",
                          benefit: "You can load a sling or double sling as a free action. This does not provoke attacks of opportunity. This feat allows you to fire your sling as many times in a full-attack action as you could attack if you were using a bow.",
                          summary: "You can load a sling or double sling as a free action. This does not provoke attacks of opportunity.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Large Target (Combat)",
                          featType: "General",
                          prerequisites: "Proficient with sling.",
                          benefit: "Your attacks with all kinds of slings add a +1 bonus on damage rolls for every size category your opponent is larger than you. For example, if you are Small and your opponent Large (a difference of two sizes), you gain a +2 damage bonus. This is considered precision damage and is not multiplied on a critical hit.",
                          summary: "Your attacks with all kinds of slings add a +1 bonus on damage rolls for every size category your opponent is larger than you.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Malicious Eye",
                          featType: "General",
                          prerequisites: "Evil eye witch hex, Halfling Jinx trait.",
                          benefit: "When a creature fails its save against your evil eye hex, add the effect of your jinx to the effect of the hex. The save penalties from the hex and jinx stack. Using your jinx on another creature does not end the hex or the jinx effect on the hexed target.",
                          summary: "When a creature fails its save against your evil eye hex, add the effect of your jinx to the effect of the hex. The save penalties from the hex and jinx stack.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sluggish Jinx",
                          featType: "General",
                          prerequisites: "Halfling Jinx trait.",
                          benefit: "Your jinx’s penalty on saving throws also applies to the target’s initiative and attack rolls.",
                          summary: "Your jinx’s penalty on saving throws also applies to the target’s initiative and attack rolls.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Versatile Jinx",
                          featType: "General",
                          prerequisites: "Iron Will, Halfling Jinx trait.",
                          benefit: "Choose either Intelligence or Wisdom. The DC of your jinx is based on this ability score instead of on Charisma.",
                          summary: "Choose either Intelligence or Wisdom. The DC of your jinx is based on this ability score instead of on Charisma.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Whip-Slinger (Combat)",
                          featType: "General",
                          prerequisites: "Proficient with sling.",
                          benefit: "When wielding a sling, double sling, or halfling sling staff, you threaten areas around you as normal and can make attacks of opportunity with the sling into these threatened areas. The sling deals 1d4 nonlethal bludgeoning damage (1d6 for a Medium wielder), threatens a critical hit on a 20, and deals ×2 damage on a critical hit. If the sling isn’t loaded with ammunition when you make an attack of opportunity, you take a –4 penalty on the attack roll.",
                          normal: "Slings and double slings are ranged weapons, do not threaten areas, and cannot make attacks of opportunity. A halfling sling staff can be used as a simple melee weapon that deals bludgeoning damage equal to that of a club its size; as a melee weapon, it threatens areas normally and its wielder can make attacks of opportunity with it.",
                          summary: "When wielding a sling, double sling, or halfling sling staff, you threaten areas around you as normal and can make attacks of opportunity with the sling into these threatened areas.",
                          source: "Halflings of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Worst Case Jinx",
                          featType: "General",
                          prerequisites: "Knowledge (arcana) 5 ranks, Halfling Jinx trait.",
                          benefit: "Beneficial variable effects on a jinxed target (such as aid, cure spells, false life, the variable ability damage cured by lesser restoration, and so on) always result in the minimum possible amount for the effect. For example, a 5th-level cleric casting cure serious wounds on the target only heals 8 hit points (the minimum for 3d8+5).",
                          summary: "Beneficial variable effects on a jinxed target (such as aid, cure spells, false life, the variable ability damage cured by lesser restoration, and so on) always result in the minimum possible amount…",
                          source: "Halflings of Golarion", isPremium: true),

                    // // MARK: - Haunted Heroes Handbook
        )
        try await db.insertFeat(
        .make("Banish Possessor",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever you cast a spell or use a spell-like ability or supernatural ability that allows a creature that is being possessed by another creature to attempt a new saving throw to end the spell or effect (such as protection from evil), the possessed creature can roll the new saving throw twice and take the better of the two results as the actual result.",
                          summary: "Whenever you cast a spell or use a spell-like ability or supernatural ability that allows a creature that is being possessed by another creature to attempt a new saving throw to end the spell or…",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channel Spirit",
                          featType: "General",
                          prerequisites: "Spirit Ridden or spirit class feature.",
                          benefit: "Select one of the spirit legends available to a medium (see pages 33–37 of Pathfinder RPG Occult Adventures for more information about these spirits). You can trade control of your body to a spirit of this type for power. You must perform a seance, taking 1 hour and requiring your concentration. At the end of the seance, you invite a spirit of the chosen type to inhabit your body. You do not require an appropriate location to channel the spirit. You gain the benefits of the spirit’s spirit bonus and seance boon, but no spirit powers. Your spirit bonus is +1, or equal to your spirit bonus from any medium class levels you have (whichever is higher). You don’t select a taboo and the spirit gains no influence over you. You can continue to gain the benefits of the spiritual possession for up to 1 hour per character level you have. At the end of the duration, the spirit takes over your body, and you become an NPC under the GM’s control for a duration equal to the amount of time the spirit possessed you. You can end the duration prematurely as a free action, but the spirit still takes over your body. If you have the spirit class feature, you can’t use this feat and act as a vessel for a second spirit simultaneously, but you gain spirit powers as normal for your medium level.",
                          special: "You can gain this feat multiple times. Its effects do not stack. Each time you take this feat, you gain a new spirit you can channel.",
                          summary: "Select one of the spirit legends available to a medium (see pages 33–37 of Pathfinder RPG Occult Adventures for more information about these spirits).",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Death's Host",
                          featType: "General",
                          prerequisites: "Spell Focus (necromancy).",
                          benefit: "Whenever you are possessed by an undead creature that you do not directly control, you gain a +4 bonus on saving throws against death effects. You don’t fall unconscious at negative hit points, and if you or the undead possessing you is forced to attempt a saving throw to resist ending the possession effect, you or your possessor gains a +4 bonus on the saving throw.",
                          summary: "Whenever you are possessed by an undead creature that you do not directly control, you gain a +4 bonus on saving throws against death effects.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ghostslayer (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1, Knowledge (religion) 1 rank.",
                          benefit: "As a swift action, you can imbue a weapon you wield with spiritual energies for 1 round. An imbued weapon damages incorporeal creatures as though it were magical. If the imbued weapon has an enhancement bonus of +2 or greater, it functions as a ghost touch weapon. A weapon imbued in this way can deal precision damage (such as sneak attack damage) to incorporeal creatures.",
                          summary: "As a swift action, you can imbue a weapon you wield with spiritual energies for 1 round. An imbued weapon damages incorporeal creatures as though it were magical.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hand's Autonomy",
                          featType: "General",
                          prerequisites: "Possessed Hand.",
                          benefit: "You reduce the penalties for fighting with two weapons (including fighting with double weapons or when throwing weapons from each hand) by 2, to a minimum penalty of –1. This benefit stacks with the Two-Weapon Fighting feat. When you are unconscious, paralyzed, asleep, or stunned, your possessed hand can still act on your behalf in a limited fashion. The hand uses your statistics when performing any action in this manner. The hand can’t take attacks of opportunity, but can draw attacks of opportunity from actions it takes. The hand can perform the following actions each turn on your initiative count.The hand can retrieve or pick up an item or weapon as a standard action. The hand can attempt any of the following skill checks at a –4 penalty: Disable Device, Escape Artist, Heal, Sleight of Hand, or Use Magic Device. The hand can knock you prone as a free action, and drag you while you’re prone at a speed of 5 feet as a fullround action. The hand can perform any other action appropriate for a hand and an arm, such as pouring a held potion into your mouth or awakening you from a sleep spell. The hand can make a single melee or ranged attack with a light or one-handed weapon as a full-round action.",
                          summary: "You reduce the penalties for fighting with two weapons (including fighting with double weapons or when throwing weapons from each hand) by 2, to a minimum penalty of –1.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hand's Detachment",
                          featType: "General",
                          prerequisites: "Hand’s Autonomy, Possessed Hand.",
                          benefit: "You can remove your possessed hand, allowing the possessing spirit to animate and control its motion. Removing or reattaching your possessed hand is a fullround action. This deals no damage to you, but you can’t use the hand while it is removed. The hand acts as a wizard’s familiar, using your character level as your effective wizard level, except it doesn’t gain the alertness, share spells, deliver touch spells, spell resistance, or scry on familiar abilities. Use the statistics for a crawling hand (Pathfinder RPG Bestiary 2 59) to represent the detached hand, save that the hand isn’t undead, doesn’t have the mark quarry ability, and shares your alignment. If the hand is destroyed, the spirit regenerates your missing hand in 2d4 days. This process can be accelerated by regenerate or similar magic. You cannot use the Possessed Hand feat or any feat with the Possessed Hand feat as a prerequisite until the hand is fully regenerated. If you have the familiar class feature, you can choose for your possessed hand to become your familiar, granting it all familiar abilities as normal. If selected as a familiar, your possessed hand grants you a +3 bonus on Sleight of Hand checks.",
                          summary: "You can remove your possessed hand, allowing the possessing spirit to animate and control its motion. Removing or reattaching your possessed hand is a fullround action.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hand's Knowledge",
                          featType: "General",
                          prerequisites: "Possessed Hand.",
                          benefit: "Select one Knowledge skill; this skill becomes a class skill for you. Additionally, select one of the following skills: Disable Device, Escape Artist, Heal, Sleight of Hand, or Use Magic Device. This skill becomes a class skill for you and you can attempt checks with the skill untrained. Once per day as a swift action, you can gain a bonus to any of the above skill checks equal to 1/2 your character level.",
                          summary: "Select one Knowledge skill; this skill becomes a class skill for you. Additionally, select one of the following skills: Disable Device, Escape Artist, Heal, Sleight of Hand, or Use Magic Device.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hand's Sight",
                          featType: "General",
                          prerequisites: "Possessed Hand.",
                          benefit: "While your possessed hand isn’t carrying anything, you gain darkvision with a range of 60 feet and cannot be flanked.",
                          summary: "While your possessed hand isn’t carrying anything, you gain darkvision with a range of 60 feet and cannot be flanked.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Haunt Scavenger (Item Creation)",
                          featType: "General",
                          prerequisites: "Any one item creation feat or Craft (alchemy) 3 ranks.",
                          benefit: "You can harvest the ectoplasmic remains of haunts, incorporeal undead, or the like to craft magic items. Whenever you encounter a recently neutralized haunt, the remains of an incorporeal undead creature, or the remains of a creature that has the ability to possess another creature using a racial spell-like ability or supernatural ability (such as a ghost or a shadow demon), you can attempt to extract material components from those remains that are suitable for crafting magic items. You must have access to an alchemist’s lab (Pathfinder RPG Ultimate Equipment 76) in order to extract components from a haunt or creature, and you must begin extracting these components within 10 minutes of the haunt or creature’s death or destruction. After 10 minutes, the components have degraded too much to be of any use to you. Harvesting components with this feat can take several hours. Performing at least 1 minute of work extracting components from a haunt or creature prevents its material components from degrading further for 24 hours, allowing you to safely suspend and resume harvesting these components without fear of subsequent degradation. This ectoplasmic residue is portable once the extraction work begins, provided you have a vial to contain the source residue (the actual amount of residue is never much, physically, but the value of the components you can extract from the residue increases with the power of the original haunt or creature). Each hour, attempt a Craft (alchemy) or a Knowledge (religion) check to successfully handle the residue and extract useful material. The DC for this check is equal to 15 + the CR of the haunt or creature being harvested. If you succeed at the check, you harvest 50 gp worth of components. If you fail the check by 4 or less, you can attempt to harvest those components again. If you fail the check by 5 or more, the residue spoils and you cannot scavenge any more from that particular source. A single source can yield an amount of components up to a maximum value of 50 gp per point of CR before it is depleted. Material components harvested with Haunt Scavenger can be used in place of the material components of enchantment or necromancy spells and extracts, provided they are of equal or greater value compared to the spell’s normal material components. Additionally, they can be used in place of actual gold to fund the construction of a magic item with an enchantment or necromancy aura.",
                          summary: "You can harvest the ectoplasmic remains of haunts, incorporeal undead, or the like to craft magic items.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Phantom Ally",
                          featType: "General",
                          prerequisites: "Phantom class feature.",
                          benefit: "The abilities of your phantom are calculated as though you were 4 class levels higher, to a maximum effective spiritualist level equal to your character level.",
                          summary: "The abilities of your phantom are calculated as though you were 4 class levels higher, to a maximum effective spiritualist level equal to your character level.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Possessed Hand",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You attract a ghost, spirit, or outsider with personal motivations to possess your hand. This usually involves some sort of mutually beneficial pact or agreement. Your possessed hand helps you in numerous ways, but its periodic, uncontrolled antics are distracting; you take a permanent –2 penalty on concentration checks once you gain this feat. Any attack you make with a one-handed weapon, light weapon, unarmed strike, or natural attack with your possessed hand gains a +1 insight bonus on the attack roll and damage roll. You also gain a +1 insight bonus on Disable Device and Sleight of Hand checks. Once per day as a swift action, you can retrieve any stowed object you carry on your person, provided the object weighs no more than 5 pounds.",
                          summary: "You attract a ghost, spirit, or outsider with personal motivations to possess your hand. This usually involves some sort of mutually beneficial pact or agreement.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rahadoumi Exorcist",
                          featType: "General",
                          prerequisites: "Iron Will, can’t have a patron deity.",
                          benefit: "As a full-round action, you can recite the Laws of Man with such force and dedication that you stagger those creatures that prey upon the bodies, minds, and souls of mortals. When you use this ability, you must target one creature within 30 feet to which you have line of sight. A successful Will save (DC = 10 + 1/2 your Hit Dice + your Charisma modifier) negates the effects of this feat. An incorporeal undead creature that fails its save against this effect is staggered. If you target a possessed creature, the possessing entity must succeed at a Will save to resist being staggered for 1 round. If it is staggered, the creature it possesses can immediately attempt a new saving throw to end the possession effect (possession effects that don’t allow saving throws to resist them cannot be ended by Rahadoumi Exorcist, but the feat can still stagger a possessed creature). You can use this ability a number of times per day equal to 3 + your Charisma modifier.",
                          summary: "As a full-round action, you can recite the Laws of Man with such force and dedication that you stagger those creatures that prey upon the bodies, minds, and souls of mortals.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Respectful Prey",
                          featType: "General",
                          prerequisites: "",
                          benefit: "A number of times per day equal to 3 + your Wisdom modifier, you can prepare a special offering. This takes 5 minutes and at least 5 gp worth of foodstuffs, spices, and other ingredients; a prepared offering lasts 8 hours before spoiling. You can present this offering to a nonhumanoid creature (even one which doesn’t normally consume food) as a standard action. The offering’s ingredients must be worth at least 5 gp × the creature’s CR. This offering improves its attitude toward you by one step unless it succeeds at a Will save (DC = 10 + 1/2 your level + your Wisdom modifier). This attitude adjustment lasts only 5 minutes unless the creature’s attitude is adjusted further during that time, such as via the Diplomacy skill. A specific creature cannot be affected by an offering made in this way more than once per 24 hours.",
                          summary: "A number of times per day equal to 3 + your Wisdom modifier, you can prepare a special offering.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Soulblade (Combat)",
                          featType: "General",
                          prerequisites: "Knowledge (religion) 1 rank, Perception 1 rank.",
                          benefit: "As a standard action, you can make a weapon attack against a haunt. If successful, your attack deals damage equal to your weapon dice plus any enhancement bonus (but not other bonuses, such as those granted by Strength, Weapon Specialization, or class features like sneak attack). You can use any Vital Strike feat in order to enhance this attack.",
                          summary: "As a standard action, you can make a weapon attack against a haunt.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Soulwrecking Strike (Combat)",
                          featType: "General",
                          prerequisites: "Vital Strike, base attack bonus +6.",
                          benefit: "Whenever you use the attack action against a creature that is possessed, both the creature and any creature possessing it are damaged by your attack (the amount of damage includes your weapon’s damage dice, your Strength modifier, weapon special abilities, and so on). The possessing creature can attempt a Will save (DC = 10 + 1/2 your base attack bonus + your Charisma modifier) to halve the damage. Damage reduction applies normally against this attack, but incorporeal creatures take full damage from this attack as if they were corporeal.",
                          summary: "Whenever you use the attack action against a creature that is possessed, both the creature and any creature possessing it are damaged by your attack (the amount of damage includes your weapon’s…",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit Ally",
                          featType: "General",
                          prerequisites: "Caster Level 8th.",
                          benefit: "You gain the assistance of an invisible shapeless spirit. This acts as a constant unseen servant spell, using your character level as your effective caster level. For every 4 character levels you have, the spirit ally’s effective Strength score increases by 2 (to a maximum of 12 at 20th level). If the spirit ally dissipates or is dispelled, it returns after 24 hours.",
                          summary: "You gain the assistance of an invisible shapeless spirit. This acts as a constant unseen servant spell, using your character level as your effective caster level.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit Oni Master",
                          featType: "General",
                          prerequisites: "Knowledge (planes) 3 ranks; Lawful neutral, lawful evil, or neutral evil.",
                          benefit: "Whenever you wear a specially crafted oni mask (which costs 50 gp), you gain a primary gore attack dealing 1d4 points of damage. If you have poison use, you can apply poison to this gore attack as a move action.",
                          normal: "Applying poison to a weapon is a standard action.",
                          summary: "Whenever you wear a specially crafted oni mask (which costs 50 gp), you gain a primary gore attack dealing 1d4 points of damage.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spirit Ridden",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You can perform a seance once per day, taking 1 hour and requiring your concentration, calling out to any nearby spirit with the skill you seek. At the end of the hour, you invite the spirit to inhabit your body. The spirit grants you ranks in a skill of your choice equal to your character level, and you treat the skill as a class skill. These effects persist for 1 hour per character level. You cannot have more ranks in a skill than your total number of Hit Dice. While you’re possessed, the spirit influences your personality.",
                          summary: "You can perform a seance once per day, taking 1 hour and requiring your concentration, calling out to any nearby spirit with the skill you seek.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spiritual Training",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +2 competence bonus on Knowledge checks to identify creatures with the incorporeal subtype, and can attempt Knowledge checks dealing with incorporeal creatures untrained. When affected by a dominate person, magic jar, or possession OA spell or a similar ability, your mind and soul remain aware within your body, at war with the invading consciousness. While dominated or possessed, you can attempt a Will save as a swift action to temporarily regain control over your body. On a successful save, you can act normally for 1 round. On a failed save, you cannot attempt to regain control for 1 hour, but the possessing consciousness can’t take a swift action that round.",
                          summary: "You gain a +2 competence bonus on Knowledge checks to identify creatures with the incorporeal subtype, and can attempt Knowledge checks dealing with incorporeal creatures untrained.",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Studied Expertise",
                          featType: "General",
                          prerequisites: "Inspirational expertise investigator talentACG.",
                          benefit: "You can spend one use of inspiration as a swift action to grant allies within 30 feet that can hear you a +4 insight bonus on attack rolls against one type of monster for 1 round, provided you succeeded at a Knowledge check to identify that type of monster’s special powers or vulnerabilities no more than 1 minute earlier.",
                          summary: "You can spend one use of inspiration as a swift action to grant allies within 30 feet that can hear you a +4 insight bonus on attack rolls against one type of monster for 1 round, provided you…",
                          source: "Haunted Heroes Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Subconscious Ursurpation",
                          featType: "General",
                          prerequisites: "Base Will save bonus +2.",
                          benefit: "You can attempt to force yourself to act normally while your conscious mind is impaired. At the start of any turn that you are under the effects of a compulsion, confusion, or possession effect, you can attempt a Will saving throw (DC = the original effect’s save DC). If your saving throw is successful, you can perform one purely mental action (such as casting a psychic spell) as though you weren’t under the effects of a compulsion, confusion, or possession effect. This mental action must be a free action, a swift action, a move action, or a standard action. All other actions that you take during the turn are subject to the compulsion, confusion, or possession effect.",
                          summary: "You can attempt to force yourself to act normally while your conscious mind is impaired.",
                          source: "Haunted Heroes Handbook", isPremium: true),

                    // // MARK: - Healer's Handbook
        )
        try await db.insertFeat(
        .make("Combat Vigor (Combat)",
                          featType: "General",
                          prerequisites: "Con 13.",
                          benefit: "You gain a vigor pool with a maximum number of points equal to your Constitution bonus. As a standard action, you can spend up to 1 vigor point per 3 Hit Dice you have (minimum 1) to regain 1d6 hit points per vigor point spent (maximum 7d6). Each time you spend vigor points, you become fatigued for 1 minute. You cannot spend vigor points while fatigued or exhausted. Spending vigor points doesn’t provoke attacks of opportunity. The points in your vigor pool are replenished to their maximum after you rest for 8 hours.",
                          summary: "You gain a vigor pool with a maximum number of points equal to your Constitution bonus.",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Conditional Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "A conditional spell is subject to the rules laid out in the spell conditional favor (Pathfinder RPG Ultimate Intrigue 206). A conditional spell takes up a spell slot 1 level higher than normal.",
                          summary: "A conditional spell is subject to the rules laid out in the spell conditional favor (Pathfinder RPG Ultimate Intrigue 206). A conditional spell takes up a spell slot 1 level higher than normal.",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Contingent Spell (Metamagic)",
                          featType: "General",
                          prerequisites: "Ability to cast cure spells (a cure spell is any spell with “cure” in its name).",
                          benefit: "A contingent spell infuses a target with a dormant healing or restorative spell that can trigger when the target needs it the most. This metamagic feat can be applied to only cure spells; breath of life; or any harmless spell that can be used to remove ability score damage, ability score drain, or a negative condition or effect (including break enchantment, neutralize poison, and remove disease). When you cast a contingent spell, you must set a specific trigger that dictates under what circumstances the target is immediately subject to the spell’s effects (for instance, “When the target dies, breath of life takes effect”). The contingent spell’s effects can remain dormant within the target for up to 10 minutes per caster level you have. A creature can be infused with only one contingent spell at a time. A contingent spell uses up a spell slot 2 levels higher than the spell’s actual level.",
                          summary: "A contingent spell infuses a target with a dormant healing or restorative spell that can trigger when the target needs it the most.",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Curative Mastery (Item Mastery)",
                          featType: "General",
                          prerequisites: "Use Magic Device 1 rank, base Fortitude bonus +2.",
                          benefit: "You can cause an item that has a 1st-level or higher conjuration spell listed in its construction requirements to cast cure light wounds as a spell-like ability, using the item’s caster level as the spell’s caster level. You can use this feat once per day, plus one additional time per day when your base Fortitude save bonus reaches +4, +6, +8, +10, and +12. You can expend two uses of this feat to cast cure moderate wounds, three uses to cast cure serious wounds, four uses to cast cure critical wounds, and five uses to cast breath of life, provided that the item’s construction requirements include a spell whose level is equal to or greater than the level of the spell-like ability to be used (2nd level for cure moderate wounds, 3rd level for cure serious wounds, 4th level for cure critical wounds, and 5th level for breath of life).",
                          summary: "You can cause an item that has a 1st-level or higher conjuration spell listed in its construction requirements to cast cure light wounds as a spell-like ability, using the item’s caster level as the…",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fortuitous Vigor (Combat)",
                          featType: "General",
                          prerequisites: "Con 13, Combat Vigor, character level 4th.",
                          benefit: "Your vigor pool gains 1 vigor point. Whenever you roll a natural 20 on an ability check, attack roll, saving throw, or skill check, and whenever you threaten a critical hit with an attack, you can spend 1 or more vigor points as a swift action to regain hit points as described in the Combat Vigor feat.",
                          summary: "Your vigor pool gains 1 vigor point. Whenever you roll a natural 20 on an ability check, attack roll, saving throw, or skill check, and whenever you threaten a critical hit with an attack, you can…",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Insidious Healing",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Any creature that chooses not to attempt a saving throw against any healing spell you cast takes a –4 penalty on saving throws against other targeted spells you cast for 24 hours.",
                          summary: "Any creature that chooses not to attempt a saving throw against any healing spell you cast takes a –4 penalty on saving throws against other targeted spells you cast for 24 hours.",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lifebound",
                          featType: "General",
                          prerequisites: "",
                          benefit: "Whenever a spell, spell-like ability, or supernatural ability heals you up to your maximum number of hit points, any excess hit points persist for 1 round per level as temporary hit points (up to a maximum number of hit points equal to 1/2 your character level). If the healing from the spell or spell-like ability would normally persist as temporary hit points (such as if the spell’s caster were an oracle of life with the spirit boost revelation), you instead add 1/2 your character level to the spell’s caster’s level to determine the total number of temporary hit points that you gain. For instance, if a 4th-level oracle of life with the spirit boost revelation heals a 4th-level fighter with this feat, up to 6 points of healing could become temporary hit points for the fighter (the oracle’s caster level + 1/2 the fighter’s level).",
                          summary: "Whenever a spell, spell-like ability, or supernatural ability heals you up to your maximum number of hit points, any excess hit points persist for 1 round per level as temporary hit points (up to a…",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Painful Cures",
                          featType: "General",
                          prerequisites: "Evil alignment.",
                          benefit: "Whenever you use a spell to restore hit points to a living creature, you can cause that creature to be wracked with waves of searing pain. If you do, the spell gains the evil and pain (Pathfinder RPG Ultimate Magic 251) descriptors. The target takes nonlethal damage equal to the number of hit points restored. If the target fails its saving throw or chooses not to attempt one against your healing spell, it takes a –2 penalty on saving throws and skill checks for 10 minutes per caster level. If the spell does not normally allow a saving throw, it instead allows a Fortitude saving throw to negate this penalty (but not the nonlethal damage dealt).",
                          summary: "Whenever you use a spell to restore hit points to a living creature, you can cause that creature to be wracked with waves of searing pain.",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Restorative Vigor (Combat)",
                          featType: "General",
                          prerequisites: "Con 15, Combat Vigor, character level 8th.",
                          benefit: "Your vigor pool gains 1 vigor point. Whenever you spend vigor points, you can recover from 1d3 points of ability score damage from one physical ability score (Strength, Dexterity, or Constitution) instead of regaining 1d6 hit points. You can choose separately for each vigor point spent. For example, if you spend 2 vigor points, you could regain 2d6 hit points; recover 2d3 points of ability damage from up to two physical ability scores total; or regain 1d6 hit points and recover from 1d3 points of ability damage from one physical ability score.",
                          summary: "Your vigor pool gains 1 vigor point. Whenever you spend vigor points, you can recover from 1d3 points of ability score damage from one physical ability score (Strength, Dexterity, or Constitution)…",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Take a Breather (Combat)",
                          featType: "General",
                          prerequisites: "Con 13, Combat Vigor, character level 4th.",
                          benefit: "Your vigor pool gains 1 vigor point. Whenever an opponent that you threaten provokes an attack of opportunity from you, as a swift action you can spend 1 or more vigor points to regain hit points as described by the Combat Vigor feat, instead of making an attack of opportunity against that opponent. Spending vigor in this manner does not count against the total number of attacks of opportunity that you can make during a round.",
                          summary: "Your vigor pool gains 1 vigor point. Whenever an opponent that you threaten provokes an attack of opportunity from you, as a swift action you can spend 1 or more vigor points to regain hit points as…",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Unconquerable Resolve (Combat)",
                          featType: "General",
                          prerequisites: "Resolve class feature, samurai level 1st (Pathfinder RPG Ultimate Combat 18).",
                          benefit: "Whenever you spend a daily use of the resolve class feature, you gain 1 temporary hit point per Hit Die you have. These temporary hit points are lost first when you take damage, disappear after 1 minute, and are replenished each time you use the resolve class feature. Temporary hit points gained in this way persist for 24 hours and then, if you haven’t lost them, they disappear.",
                          special: "This feat can be taken multiple times. Each time you take it, the number of temporary hit points you gain each time you spend a daily use of the resolve class feature increases by 1 per Hit Die you have.",
                          summary: "Whenever you spend a daily use of the resolve class feature, you gain 1 temporary hit point per Hit Die you have.",
                          source: "Healer's Handbook", isPremium: true)
        )
        try await db.insertFeat(
        .make("Vim and Vigor (Combat)",
                          featType: "General",
                          prerequisites: "Con 13, Combat Vigor, Endurance, character level 3rd.",
                          benefit: "Your vigor pool gains 1 vigor point. The fatigued condition that you gain from spending vigor points (as described by the Combat Vigor feat on page 14) lasts for 3 rounds instead of 1 minute. In addition, when you take this feat, you gain a +2 bonus on saving throws against effects that cause fatigue or exhaustion.",
                          summary: "Your vigor pool gains 1 vigor point. The fatigued condition that you gain from spending vigor points (as described by the Combat Vigor feat on page 14) lasts for 3 rounds instead of 1 minute.",
                          source: "Healer's Handbook", isPremium: true),

                    // // MARK: - Heroes from the Fringe, Sargava, the Lost Colony, Adventurer's Armory, Dirty Tactics Toolbox, Adventurer's Armory 2
        )
        try await db.insertFeat(
        .make("Equipment Trick (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "You can use any equipment trick related to the chosen item as long as you meet the trick’s prerequisites. If the item would normally be considered an improvised weapon, you can treat it as either a normal weapon or an improvised weapon, depending on which is more beneficial for you.",
                          special: "You can gain Equipment Trick multiple times. Each time you take the feat, it applies to a new type of equipment.",
                          summary: "You can use any equipment trick related to the chosen item as long as you meet the trick’s prerequisites.",
                          source: "Heroes from the Fringe, Sargava, the Lost Colony, Adventurer's Armory, Dirty Tactics Toolbox, Adventurer's Armory 2", isPremium: true),

                    // // MARK: - Heroes of Golarion
        )
        try await db.insertFeat(
        .make("Beast Speaker",
                          featType: "General",
                          prerequisites: "Handle Animal 7 ranks, animal companion with effective druid level 7.",
                          benefit: "You can select a creature from the list of magical beasts to serve as your animal companion. You acquire and advance this beast companion in the same way as an animal companion detailed in the class feature that grants you access to your animal companion. You can also dismiss the creature, as dictated by your class feature. You must meet additional prerequisites to select a companion with an Intelligence score of 3 or higher, as described in each creature’s entry.",
                          summary: "You can select a creature from the list of magical beasts to serve as your animal companion.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Beast Speaker Mastery",
                          featType: "General",
                          prerequisites: "Beast Speaker, character level equal to or higher than that listed in your companion’s mastery entry.",
                          benefit: "Your beast companion gains the abilities and bonuses listed in the mastery entry in its stat block. You must be of at least the indicated level for the companion to use these abilities, so if you dismiss a companion and gain a new beast companion of a different type, you retain the feat but might not yet be of sufficient level for the new companion to gain its mastery benefits.",
                          normal: "A beast companion is unable to use its mastery abilities regardless of its advancement.",
                          summary: "Your beast companion gains the abilities and bonuses listed in the mastery entry in its stat block.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Consume Power",
                          featType: "General",
                          prerequisites: "Spellcraft 3 ranks, wyrwood.",
                          benefit: "Once per day as a full-round action, you can consume a single magical item in your possession. The item is destroyed upon consumption, but you regain 1d6 hit points + 1 additional hit point per caster level of the item. You also gain a +1 bonus on attack and damage rolls for a number of rounds equal to the caster level of the item.",
                          summary: "Once per day as a full-round action, you can consume a single magical item in your possession.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dragon Shot (Combat, Grit)",
                          featType: "General",
                          prerequisites: "Amateur Gunslinger feat or grit class feature, Spellcraft 5 ranks.",
                          benefit: "As a swift action, you can spend 1 grit point to convert your gun’s damage into acid, fire, electricity, or cold damage for 1 round. You can choose a different damage type each time you use this ability. This still counts as a ranged weapon attack for critical hit multipliers and abilities such as Deadly Aim.",
                          summary: "As a swift action, you can spend 1 grit point to convert your gun’s damage into acid, fire, electricity, or cold damage for 1 round.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Expressionless",
                          featType: "General",
                          prerequisites: "Wyrwood.",
                          benefit: "Your lack of emotion make it difficult for non-wyrwoods to relate to you. When dealing with any race other than your own, you gain a +2 bonus on Bluff checks. In addition, creatures of other races take a –2 penalty on Diplomacy and Sense Motive checks attempted against you.",
                          summary: "Your lack of emotion make it difficult for non-wyrwoods to relate to you. When dealing with any race other than your own, you gain a +2 bonus on Bluff checks.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Freeze in Place (Combat)",
                          featType: "General",
                          prerequisites: "Stealth 5 ranks, wyrwood.",
                          benefit: "You gain the freeze universal monster rule, allowing you to appear as an ordinary statue. If you attack a creature unaware of you while using this ability, you double your critical threat range. This effect doesn’t stack with any other effect that expands the threat range of your attacks or weapons.",
                          summary: "You gain the freeze universal monster rule, allowing you to appear as an ordinary statue. If you attack a creature unaware of you while using this ability, you double your critical threat range.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Glorious Blaze",
                          featType: "General",
                          prerequisites: "Goblin, worshipper of Sarenrae.",
                          benefit: "If the sun is visible, you can spend 1 round performing a wild dance in worship of the Dawnflower. Starting at the beginning of your next turn, allies who can see you gain a +1 morale bonus on attack rolls, skill checks, and saving throws. This effect lasts for a number of rounds equal to half your character level + your Wisdom modifier (minimum 1 round). At 9th level, this bonus increases to +2.",
                          summary: "If the sun is visible, you can spend 1 round performing a wild dance in worship of the Dawnflower.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Infused Spell Cartridges (Combat)",
                          featType: "General",
                          prerequisites: "Int 15, Arcane Strike, Spell Cartridges, ability to cast 4th-level arcane spells, proficient with firearms.",
                          benefit: "While your gun is imbued with power from the Arcane Strike feat, you can spend a standard action to cast a spell of 3rd level or lower and deliver it via a force bullet. The spell must have a range of touch or produce a ray; if the spell would produce multiple rays, the bullet delivers the effect of only one ray. If the force bullet strikes a target, it deals its force damage and also delivers the effects of the spell. If the force bullet critically hits a target, the spell deals double damage.",
                          summary: "While your gun is imbued with power from the Arcane Strike feat, you can spend a standard action to cast a spell of 3rd level or lower and deliver it via a force bullet.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ioun Resonance",
                          featType: "General",
                          prerequisites: "Wyrwood.",
                          benefit: "As a standard action, you can create a link between your ioun core and an active ioun stone you hold or carry. For as long as you gain the benefits of the linked stone, any numerical bonuses and penalties granted by the stone are increased by 1. You can maintain a link with only one ioun stone at a time. Creating a link to a new stone ends any previous links.",
                          summary: "As a standard action, you can create a link between your ioun core and an active ioun stone you hold or carry.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Lifecrafting (Item Creation)",
                          featType: "General",
                          prerequisites: "Craft Construct, Leadership, wyrwood.",
                          benefit: "By completing a unique ritual, you can create a wyrwood. While you can use any Small wooden construct to create the base of a wyrwood, infusing it with life and consciousness requires a specific process. The process requires a flawless ioun stone worth at least 10,000 gp. For the ritual to succeed, you must spend 1 month in complete isolation with the construct that will become a wyrwood. Each week, you must succeed at a DC 30 Craft (carpentry) or Craft (sculpture) check. Failure requires you to start again, although the materials can be reused. Over this time, the construct reshapes itself around the ioun stone until it finds the form it will take permanently— thus even non-humanoid constructs become humanoid as they become wyrwoods. While wyrwoods are born as fully formed adults, they lack any skill or training, so they have only 1 level in the commoner class.",
                          summary: "By completing a unique ritual, you can create a wyrwood. While you can use any Small wooden construct to create the base of a wyrwood, infusing it with life and consciousness requires a specific…",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Magical Heart (Combat)",
                          featType: "General",
                          prerequisites: "Arcane Strike, Improved Unarmed Strike, wyrwood.",
                          benefit: "While your unarmed strikes are imbued with power from the Arcane Strike feat, a successful hit with an unarmed strike grants you a number of temporary hit points equal to the bonus damage granted by Arcane Strike.",
                          summary: "While your unarmed strikes are imbued with power from the Arcane Strike feat, a successful hit with an unarmed strike grants you a number of temporary hit points equal to the bonus damage granted by…",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mental Derail",
                          featType: "General",
                          prerequisites: "Goblin.",
                          benefit: "You can shout nonsense as a swift action to throw off an enemy. Choose a single target that can hear you. It must attempt a Will saving throw (DC = 10 + half your level + your Charisma modifier). On a failed save, the target is caught off guard, and it takes a –2 penalty on attack rolls and Strength- and Dexterity-based skill checks until the end of its turn. Whether or not the save is successful, a creature cannot be the target of this ability again for 24 hours. This is a mind-affecting effect.",
                          summary: "You can shout nonsense as a swift action to throw off an enemy. Choose a single target that can hear you. It must attempt a Will saving throw (DC = 10 + half your level + your Charisma modifier).",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mental Stare (Stare)",
                          featType: "General",
                          prerequisites: "Hypnotic stare class feature.",
                          benefit: "You can use your hypnotic stare ability without relying on sight and do not have to attempt concentration checks to use this ability while blinded.",
                          summary: "You can use your hypnotic stare ability without relying on sight and do not have to attempt concentration checks to use this ability while blinded.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Occult Conduit",
                          featType: "General",
                          prerequisites: "Caster level 5th, implements class feature, mental focus class feature, wyrwood.",
                          benefit: "You can invest mental focus in your body rather than an implement. When you invest mental focus this way, you treat your body as an implement of any implement school you know. You do not gain the resonant power for the chosen school, but you treat your occultist level as 1 higher for the purposes of that school’s focus powers. You can change which implement school is tied to your body when you invest your chosen implements for the day.",
                          summary: "You can invest mental focus in your body rather than an implement. When you invest mental focus this way, you treat your body as an implement of any implement school you know.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Overpowering Stare (Stare)",
                          featType: "General",
                          prerequisites: "Mesmerist level 11th, painful stare class feature.",
                          benefit: "Whenever you use your painful stare, the target must succeed at a Will saving throw (DC = 10 + half your mesmerist level + your Charisma modifier) or become confused for 1 round. Whether or not the save is successful, a creature cannot be affected by this ability again for 24 hours.",
                          summary: "Whenever you use your painful stare, the target must succeed at a Will saving throw (DC = 10 + half your mesmerist level + your Charisma modifier) or become confused for 1 round.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Piercing Chant",
                          featType: "General",
                          prerequisites: "Goblin.",
                          benefit: "As a full-round action, you can sing a song so terrible and ear-splitting that each enemy within 15 feet of you that hears it must succeed at a Will save or be dazed for 1 round. The DC of this saving throw is equal to 10 + half your level + your Charisma modifier. Whether or not the initial save is successful, a creature cannot be affected by this ability again for 24 hours. This is a mind-affecting effect.",
                          summary: "As a full-round action, you can sing a song so terrible and ear-splitting that each enemy within 15 feet of you that hears it must succeed at a Will save or be dazed for 1 round.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Recall Ammunition (Combat, Grit)",
                          featType: "General",
                          prerequisites: "Amateur Gunslinger feat or grit class feature, base attack bonus +9, Spellcraft 5 ranks.",
                          benefit: "After missing with a ranged weapon attack using a firearm, you can spend 2 grit points as an immediate action to recall the shot. If you do so, the ammunition from the missed shot is magically loaded back into the firearm and is ready to fire again immediately.",
                          summary: "After missing with a ranged weapon attack using a firearm, you can spend 2 grit points as an immediate action to recall the shot.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Robust Stench",
                          featType: "General",
                          prerequisites: "Goblin.",
                          benefit: "Allies within 5 feet of you receive a +2 morale bonus on Fortitude saving throws. This bonus ends as soon as they move more than 5 feet away from you. This bonus applies only to allies you have fought alongside at least once before.",
                          summary: "Allies within 5 feet of you receive a +2 morale bonus on Fortitude saving throws. This bonus ends as soon as they move more than 5 feet away from you.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sacred Pyromania",
                          featType: "General",
                          prerequisites: "Goblin, worshipper of Sarenrae. Benefit : Whenever you make an attack or cast a spell that deals fire damage, the fire damage applies to incorporeal creatures, regardless of whether the fire is magical. An incorporeal creature’s 50% reduction in damage from corporeal sources does not apply to any fire damage that you deal.",
                          benefit: "Whenever you make an attack or cast a spell that deals fire damage, the fire damage applies to incorporeal creatures, regardless of whether the fire is magical. An incorporeal creature’s 50% reduction in damage from corporeal sources does not apply to any fire damage that you deal.",
                          summary: "Whenever you make an attack or cast a spell that deals fire damage, the fire damage applies to incorporeal creatures, regardless of whether the fire is magical.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spell Cartridges (Combat)",
                          featType: "General",
                          prerequisites: "Arcane Strike, ability to cast arcane spells, proficient with firearms.",
                          benefit: "While your gun is imbued with power from the Arcane Strike feat, you can fire force bullets instead of regular ammunition. A force bullet deals 1d4 points of force damage for every five caster levels you have. Force bullets do not use black powder or ammunition and count as magic for the purpose of bypassing damage reduction.",
                          summary: "While your gun is imbued with power from the Arcane Strike feat, you can fire force bullets instead of regular ammunition.",
                          source: "Heroes of Golarion", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sword's Shadow (Combat)",
                          featType: "General",
                          prerequisites: "Deft Hands, base attack bonus +7, wyrwood.",
                          benefit: "When you successfully damage an enemy with the first attack of a full attack, you can attempt a Sleight of Hand check against that enemy’s CMD as an immediate action. If you succeed, you can treat that enemy as flat-footed for the next attack you make as part of the full attack action.",
                          summary: "When you successfully damage an enemy with the first attack of a full attack, you can attempt a Sleight of Hand check against that enemy’s CMD as an immediate action.",
                          source: "Heroes of Golarion", isPremium: true),

                    // // MARK: - Heroes of the Darklands
        )
        try await db.insertFeat(
        .make("Assisted Ascension (Teamwork)",
                          featType: "General",
                          prerequisites: "Climb 5 ranks.",
                          benefit: "When you succeed at a Climb check, allies within 20 feet who also have this feat can climb 5 feet along the same surface as an immediate action. You gain a +5 bonus on Climb checks to catch any falling ally who also has this feat.",
                          summary: "When you succeed at a Climb check, allies within 20 feet who also have this feat can climb 5 feet along the same surface as an immediate action.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Aural Insight",
                          featType: "General",
                          prerequisites: "Blind-Fight, Improved Blind-Fight APG, Perception 10 ranks.",
                          benefit: "By spending a move action to make a sound and listen for the echoes, you gain blindsense 30 feet until the end of your turn. Using this feat requires making audible sounds that impose a –4 penalty on your Stealth checks.",
                          special: "This feat cannot be used if you are deafened or unable to make noise, and you cannot detect anything in areas that are magically silenced.",
                          summary: "By spending a move action to make a sound and listen for the echoes, you gain blindsense 30 feet until the end of your turn.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Natural Pathseeker",
                          featType: "General",
                          prerequisites: "Favored terrain class feature.",
                          benefit: "While you’re in any of your favored terrains, you apply half your favored terrain bonus to Acrobatics, Climb, and Swim skill checks.",
                          summary: "While you’re in any of your favored terrains, you apply half your favored terrain bonus to Acrobatics, Climb, and Swim skill checks.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Obscuring Beacon (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "When you’re holding a light source in an area that is otherwise dim or darker, foes within the normal or bright light radius shed by your light source take a –1 penalty on attack rolls against other targets that are also within the radius of your light. Blind creatures aren’t affected by this feat.",
                          summary: "When you’re holding a light source in an area that is otherwise dim or darker, foes within the normal or bright light radius shed by your light source take a –1 penalty on attack rolls against other…",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Searing Distraction (Combat)",
                          featType: "General",
                          prerequisites: "Catch Off-Guard.",
                          benefit: "When you make an attack using a light source such as a sunrod or torch as an improvised weapon, the target must succeed at a Fortitude save or be dazzled for 1 round. On a critical hit, the target is instead blinded for 1 round. The DC of the effect is 10 + half your character level + your Dexterity modifier. Blind targets are immune to this effect.",
                          summary: "When you make an attack using a light source such as a sunrod or torch as an improvised weapon, the target must succeed at a Fortitude save or be dazzled for 1 round.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sense Metals and Minerals",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +4 bonus on Perception checks to notice natural deposits of precious metals or minerals, and a +4 bonus on Appraise checks to determine their worth. By spending 5 minutes scrutinizing a discovered vein of metals or minerals, you can determine the worth of the full vein to within 1,000 gp, to a maximum of 50,000 gp.",
                          summary: "You gain a +4 bonus on Perception checks to notice natural deposits of precious metals or minerals, and a +4 bonus on Appraise checks to determine their worth.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Terrain Celerity",
                          featType: "General",
                          prerequisites: "Favored enemy class feature, favored terrain class feature.",
                          benefit: "While you’re in any of your favored terrain types, you gain a 5-foot bonus to your movement speed. This bonus increases to 10 feet if a creature of the same type as one of your favored enemies is visible and within the same terrain type.",
                          summary: "While you’re in any of your favored terrain types, you gain a 5-foot bonus to your movement speed.",
                          source: "Heroes of the Darklands", isPremium: true)
        )
        try await db.insertFeat(
        .make("Tracer Fire (Combat)",
                          featType: "General",
                          prerequisites: "Point-Blank Shot, Precise Shot.",
                          benefit: "As a standard action, you can make a single ranged attack at your highest base attack bonus with an illuminated throwing weapon or piece of ammunition, such as a flaming shuriken or an arrow imbued with a magical light effect. If the attack hits its target, attacks against the same target gain a +2 circumstance bonus for 1 round, so long as those attacks originate in dim light or darker areas. The target counts as being in bright light until the projectile is removed or extinguished. Removing the projectile is a move action that provokes an attack of opportunity.",
                          summary: "As a standard action, you can make a single ranged attack at your highest base attack bonus with an illuminated throwing weapon or piece of ammunition, such as a flaming shuriken or an arrow imbued…",
                          source: "Heroes of the Darklands", isPremium: true),

                    // // MARK: - Heroes of the High Court
        )
        try await db.insertFeat(
        .make("Aspiring Noble (Story)",
                          featType: "General",
                          prerequisites: "Must be a member of an established family that is yet unrecognized as nobility.",
                          benefit: "You have learned to further your name among the people. Choose a settlement and either Diplomacy or Intimidate. While in your chosen settlement, you gain a +2 bonus on checks with the chosen skill when dealing with the commoners of that settlement. If you have 10 or more ranks in the chosen skill, the bonus increases to +4.Goal: Have your family recognized as nobility by either three established noble families or a ruling monarch.Completion Benefit: You gain a +2 bonus on checks with your chosen skill when dealing with the rest of the citizens of your chosen settlement. Your bonus to interact with commoners increases to +4, or it increases to +6 if you have 10 or more ranks in your chosen skill.",
                          summary: "You have learned to further your name among the people. Choose a settlement and either Diplomacy or Intimidate.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Conceal Aura",
                          featType: "General",
                          prerequisites: "Chaotic, evil, good, or lawful alignment.",
                          benefit: "As a full-round action, you can reduce the power of the aura generated by your alignment for 1 minute. During this time, for the purposes of spells that detect alignment, your aura’s power is lessened by one step (for example, if you are a 12th-level neutral good fighter, your aura power is faint rather than moderate). You also gain a +2 bonus on Bluff checks to send secret messages.",
                          summary: "As a full-round action, you can reduce the power of the aura generated by your alignment for 1 minute.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Conservatory-Trained",
                          featType: "General",
                          prerequisites: "Sense Motive 1 rank.",
                          benefit: "You gain an insight bonus equal to your Wisdom modifier on discovery checks using the individual influence system (Pathfinder RPG Ultimate Intrigue 102). In addition, when you discover an NPC’s strength, the next influence check an ally attempts that incorporates that strength receives a +2 bonus.",
                          summary: "You gain an insight bonus equal to your Wisdom modifier on discovery checks using the individual influence system (Pathfinder RPG Ultimate Intrigue 102).",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Countering Loophole",
                          featType: "General",
                          prerequisites: "Improved Counterspell.",
                          benefit: "When you successfully counter a charm or compulsion spell, you immediately redirect the spell against the caster as though you were the caster of the spell and the caster were the target (as long as you can cast a spell of that level). Even if the spell originally targeted multiple creatures, the caster becomes the sole target of the redirected spell. The spell’s save DC remains the same, but you make any decisions about the effects of the spell (revising a suggestion or the conditions of a lesser geas, for example).",
                          normal: "If you successfully counter a spell, both spells automatically negate each other with no other results.",
                          summary: "When you successfully counter a charm or compulsion spell, you immediately redirect the spell against the caster as though you were the caster of the spell and the caster were the target (as long as…",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Enlightened Noble",
                          featType: "General",
                          prerequisites: "Cha 13, Noble Scion ISWG, Knowledge (nobility) 1 rank.",
                          benefit: "You gain an additional benefit based on the flavor of your noble family chosen with the Noble Scion feat. Scion of the Arts: A number of times per day equal to your Charisma modifier, you can roll 2d20 for a Perform check and take the better result. Scion of Lore: You can attempt Knowledge skill checks untrained. If you have 10 or more ranks in a Knowledge skill, the bonus from Scion of Lore increases to +2 for that skill. Scion of Magic: Once per day, you can gain a +2 bonus to caster level on a concentration check, a Use Magic Device check, or a check to overcome spell resistance. Scion of Peace: Choose one Wisdom-based skill. Once per day when you take 10 on this skill, you treat the result as if you had rolled an 18 instead of a 10. Scion of War: After rolling initiative, you can attempt a Bluff check as an immediate action to feint against a creature or an Intimidate check to demoralize a creature. This can only affect creatures that act after you in the initiative count.",
                          summary: "You gain an additional benefit based on the flavor of your noble family chosen with the Noble Scion feat.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ennobled Resistances",
                          featType: "General",
                          prerequisites: "Investiture class feature, character level 4th.",
                          benefit: "When you improve one of your saving throws with your investiture class feature as a swift action, select a second type of saving throw to gain the same bonus.",
                          summary: "When you improve one of your saving throws with your investiture class feature as a swift action, select a second type of saving throw to gain the same bonus.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Investiture Points",
                          featType: "General",
                          prerequisites: "Investiture class feature.",
                          benefit: "Your investiture points increase by 2.",
                          special: "You can take Extra Investiture Points multiple times. The effects stack.",
                          summary: "Your investiture points increase by 2.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Extra Vested Power",
                          featType: "General",
                          prerequisites: "Vested power class feature.",
                          benefit: "You gain an additional vested power. You must meet the level requirement for this vested power.",
                          special: "You can take Extra Vested Power multiple times.",
                          summary: "You gain an additional vested power. You must meet the level requirement for this vested power.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Inured to Draconic Majesty",
                          featType: "General",
                          prerequisites: "Favored enemy (dragon) or Knowledge (arcana) 1 rank.",
                          benefit: "You gain a +4 bonus on saving throws against extraordinary or supernatural fear effects (such as a dragon’s frightful presence). If a failed saving throw against an extraordinary or supernatural fear effect would make you frightened, you are instead shaken; and if a failed saving throw would make you panicked, you are instead frightened.",
                          summary: "You gain a +4 bonus on saving throws against extraordinary or supernatural fear effects (such as a dragon’s frightful presence).",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Legalistic Reading",
                          featType: "General",
                          prerequisites: "Scribe Scroll, Linguistics 3 ranks.",
                          benefit: "Any Wisdom check you attempt to avoid a mishap when casting a spell from a scroll fails only on a natural 1. When you cast a spell from a scroll, you can attempt a caster level check with a DC equal to 25 + the scroll’s caster level as a free action. If you succeed, the magical writing does not vanish for 1 round; if the spell’s casting time is no longer than a standard action, the scroll can be used again in the following round before its writing fades. You can’t use this feat on a scroll a second time, and you can’t use this feat if the spell on the scroll requires a material component worth more than 10 gp.",
                          summary: "Any Wisdom check you attempt to avoid a mishap when casting a spell from a scroll fails only on a natural 1.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Noble Impostor (Story)",
                          featType: "General",
                          prerequisites: "Must not be a member of an established family or a member of nobility.",
                          benefit: "You gain a +2 bonus on Bluff and Knowledge (nobility) checks and these skills are class skills for you.Goal: Convince at least three noble families, a ruling monarch, or a settlement of at least small city size that you are a member of an existing or a previously unknown noble family.Completion Benefit: You gain followers as if you had the Leadership feat. If you also have the Leadership feat, increase your Leadership score by 3 for the purpose of determining how many followers you have.",
                          summary: "You gain a +2 bonus on Bluff and Knowledge (nobility) checks and these skills are class skills for you.Goal: Convince at least three noble families, a ruling monarch, or a settlement of at least…",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Noble Stipend",
                          featType: "General",
                          prerequisites: "Cha 13, Noble Scion ISWG .",
                          benefit: "You receive 100 gp at the beginning of every week that you can spend only on services and nonmaterial goods. Services and nonmaterial goods include the following. Hiring entertainers, messengers, mounts, servants, transport, workers, and so on. Improving your lifestyle quality (see Cost of Living on page 405 of the Pathfinder RPG Core Rulebook ). Obtaining invitations to exclusive events or entry into privileged locations. Paying for lodgings, stabling, taxes, and tolls.",
                          summary: "You receive 100 gp at the beginning of every week that you can spend only on services and nonmaterial goods. Services and nonmaterial goods include the following.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Peerless Courtier",
                          featType: "General",
                          prerequisites: "Cha 13, base attack bonus +3.",
                          benefit: "Choose one of the following skills: Bluff, Diplomacy, or Sense Motive. You can substitute your base attack bonus for your ranks in the chosen skill. That skill also becomes a class skill for you.",
                          special: "You can select this feat up to three times. Its effects do not stack. Each time you select this feat, choose an additional skill to benefit from this feat.",
                          summary: "Choose one of the following skills: Bluff, Diplomacy, or Sense Motive. You can substitute your base attack bonus for your ranks in the chosen skill. That skill also becomes a class skill for you.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Righteous Orator",
                          featType: "General",
                          prerequisites: "Diplomacy 3 ranks, smite evil class feature.",
                          benefit: "While in a verbal debate, such as a court proceeding, negotiation, or verbal duel (Pathfinder RPG Ultimate Intrigue 176), you can target another creature participating in the debate as a swift action and expend one of your uses of smite evil. If you target a creature that is not evil, your smite is wasted with no effect. If the target is evil, you add your level in the class granting the smite evil feature as a bonus on your Diplomacy checks and on your Sense Motive checks against deceit attempted by the target. You also gain a morale bonus equal to your Charisma modifier on Will saves against effects originating from the target. This effect remains until you or the target is no longer actively participating in the verbal debate.",
                          summary: "While in a verbal debate, such as a court proceeding, negotiation, or verbal duel (Pathfinder RPG Ultimate Intrigue 176), you can target another creature participating in the debate as a swift action…",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Seeker of the Eternal Emperor",
                          featType: "General",
                          prerequisites: "Enlarge Spell or Extend Spell, oracle’s curse class feature.",
                          benefit: "Treat your oracle level as 1 lower (minimum 1st level) when determining the effects of your oracle’s curse. You don’t require additional time to spontaneously cast divination spells modified by the Enlarge Spell or Extend Spell metamagic feats.",
                          normal: "Applying a metamagic feat to a spontaneously cast spell increases the casting time of the spell.",
                          summary: "Treat your oracle level as 1 lower (minimum 1st level) when determining the effects of your oracle’s curse.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Self-Exiled Noble (Story)",
                          featType: "General",
                          prerequisites: "You must have intentionally left your noble family and changed your name or appearance afterward.",
                          benefit: "You gain a +2 bonus on Disguise checks, and Disguise is a class skill for you. You gain a +1 bonus on attack rolls and damage rolls against members of your former family.Goal: Escape your former name by establishing your own noble legacy. In addition, you must decisively defeat a challenging foe from your former family who may wish to return you to your old home.Completion Benefit: Your bonus on attack rolls and damage rolls from this feat increases to +2 and applies to anyone who threatens your allies or your new noble legacy.",
                          summary: "You gain a +2 bonus on Disguise checks, and Disguise is a class skill for you.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sense Magical Interrogation",
                          featType: "General",
                          prerequisites: "Sense Motive 3 ranks, Spellcraft 3 ranks.",
                          benefit: "Whenever you are subject to a spell, spell-like ability, or supernatural ability that can discern whether or not you are telling the truth, you are automatically aware of such magic. You are not immune to such spells or abilities, but you can choose to remain silent or avoid answering questions. If you concentrate as a full-round action, you detect the source of the spell or ability and can attempt a Spellcraft check to determine the exact spell, spell-like ability, or supernatural ability being used (DC = 15 + the spell level, or 15 + 1/2 the caster level for a non-spell effect).",
                          summary: "Whenever you are subject to a spell, spell-like ability, or supernatural ability that can discern whether or not you are telling the truth, you are automatically aware of such magic.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Student of Sulunai",
                          featType: "General",
                          prerequisites: "Aasimar.",
                          benefit: "Whenever a creature within 30 feet of you rerolls an ability check, saving throw, or skill check, you can give the creature a +2 insight bonus on the new roll as an immediate action. You can also cast divine favor as a spell-like ability once per day, using your character level as your caster level.",
                          summary: "Whenever a creature within 30 feet of you rerolls an ability check, saving throw, or skill check, you can give the creature a +2 insight bonus on the new roll as an immediate action.",
                          source: "Heroes of the High Court", isPremium: true)
        )
        try await db.insertFeat(
        .make("Veiled Contempt",
                          featType: "General",
                          prerequisites: "Bluff 3 ranks.",
                          benefit: "The DC for Sense Motive checks to get a hunch about you is equal to 20 + your ranks in Bluff, instead of the normal 20. If the Sense Motive check is specifically to assess your allegiance or trustworthiness, the DC is equal to 20 + two times your ranks in Bluff.",
                          summary: "The DC for Sense Motive checks to get a hunch about you is equal to 20 + your ranks in Bluff, instead of the normal 20.",
                          source: "Heroes of the High Court", isPremium: true),

                    // // MARK: - Heroes of the Streets
        )
        try await db.insertFeat(
        .make("Cunning Caster",
                          featType: "General",
                          prerequisites: "Deceitful, ability to cast 1st-level spells.",
                          benefit: "When casting a spell, you can attempt a Bluff check (opposed by observers’ Perception checks) to conceal your actions from onlookers. If the spell requires material components, you take a –4 penalty on the Bluff check. If the spell requires somatic components, you take a –4 penalty on the Bluff check. If the spell requires verbal components, you take a –4 penalty on the Bluff check. If the spell requires a focus or divine focus, you take a –4 penalty on the Bluff check. If the spell produces an obvious effect (such as a summoned creature or visible spell effect), you take a –4 penalty on the Bluff check, and even if your check is successful, observers still see the spell effect (though they fail to notice that you are responsible for it). All Bluff check penalties are cumulative.",
                          summary: "When casting a spell, you can attempt a Bluff check (opposed by observers’ Perception checks) to conceal your actions from onlookers.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertFeat(
        .make("Edge Runner",
                          featType: "General",
                          prerequisites: "Dex 13.",
                          benefit: "You can move at full speed while using Acrobatics to balance on narrow surfaces, and do not become flat-footed or lose your Dexterity bonus to AC while doing so. You also gain a +4 bonus on Climb checks to catch yourself while falling. You also gain a +4 bonus on saving throws against effects that would cause you to fall into a pit (such as create pit or a pit trap). This bonus does not apply to your CMD against bull rush or trip attacks.",
                          summary: "You can move at full speed while using Acrobatics to balance on narrow surfaces, and do not become flat-footed or lose your Dexterity bonus to AC while doing so.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertFeat(
        .make("Filth Forager",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +4 bonus on all saving throws against diseases and any effect that would cause you to become nauseated or sickened.",
                          summary: "You gain a +4 bonus on all saving throws against diseases and any effect that would cause you to become nauseated or sickened.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertFeat(
        .make("Filthy Weapons (Combat)",
                          featType: "General",
                          prerequisites: "Knowledge (dungeoneering) 1 rank, Knowledge (nature) 1 rank.",
                          benefit: "You can take a standard action to cover a weapon in decomposing waste, slimy filth, or other virulent agent. The next attack with that weapon that succeeds against a foe exposes the target to filth fever. If the attack is a critical hit, the filth fever has an onset time of 1 round, and a save DC equal to 10 + 1/2 your base attack bonus + your Intelligence modifier.",
                          summary: "You can take a standard action to cover a weapon in decomposing waste, slimy filth, or other virulent agent.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertFeat(
        .make("Guild Emissary",
                          featType: "General",
                          prerequisites: "Leadership or Underworld Connections (see below).",
                          benefit: "You can attempt a special character level check (1d20 + your Charisma modifier + your character level) in place of a Diplomacy check when attempting to gather information. You can ask local contacts to find information for you. While this still takes the normal amount of time (typically 1d4 hours), you can gather information about multiple topics at once (up to a maximum number of topics equal to 3 + your Charisma bonus). Additionally, when you are in a settlement no smaller than a small city and are seeking a magic item with a value equal to or less than the city’s base value (Pathfinder RPG Core Rulebook 460–461) and the item is not available, you can check again after 1 day (rather than 1 week). If using the contact rules (Pathfinder RPG Ultimate Campaign 148) you gain a single reliable contact each time you enter a settlement no smaller than a small city. This contact is randomly determined to be a fence, gossip, manipulator, merchant, petty criminal, snitch, or thug. The contact operates only within that city, and if the contact’s Trust score goes down, it immediately drops to 1.",
                          summary: "You can attempt a special character level check (1d20 + your Charisma modifier + your character level) in place of a Diplomacy check when attempting to gather information.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mud in Your Eye (Combat)",
                          featType: "General",
                          prerequisites: "Throw Anything.",
                          benefit: "As a standard action when in urban or subterranean terrain, you can scoop filth, sewage, mud, or similar grime off a nearby surface and hurl it at a foe as a ranged touch attack with a range increment of 5 feet. If the attack hits, you can immediately attempt a dirty trickAPG combat maneuver against the target as a free action; this dirty trick can be used only to blind the target. As a ranged touch attack, this action provokes attacks of opportunity, even if your dirty trick attempts normally wouldn’t provoke such attacks (such as via the Improved Dirty TrickAPG feat).",
                          special: "A character with favored terrain (as the ranger class feature) can use this feat when in any of his favored terrains in addition to urban and subterranean.",
                          summary: "As a standard action when in urban or subterranean terrain, you can scoop filth, sewage, mud, or similar grime off a nearby surface and hurl it at a foe as a ranged touch attack with a range…",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertFeat(
        .make("Rat Catcher (Combat)",
                          featType: "General",
                          prerequisites: "Knowledge (dungeoneering) 1 rank, base attack bonus +1.",
                          benefit: "You gain a +1 dodge bonus against attacks made by creatures at least two size categories smaller than yourself, and gain a +1 bonus to attack and damage rolls against such creatures. Additionally, you take only half damage from swarm attacks, and as a full-round action can make a single attack with a natural or bludgeoning weapon against an adjacent swarm. If the attack hits, you deal half damage to the target, even if the swarm is small enough to normally be immune to such attacks.",
                          summary: "You gain a +1 dodge bonus against attacks made by creatures at least two size categories smaller than yourself, and gain a +1 bonus to attack and damage rolls against such creatures.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertFeat(
        .make("Subtle Devices",
                          featType: "General",
                          prerequisites: "Stealthy.",
                          benefit: "When triggering a wand, staff or any other magic item, you can attempt a Stealth check (opposed by observers’ Perception checks) to conceal the trigger from onlookers. If the magic item produces an obvious effect (such as a summoned creature or visible spell effect), you take a –4 penalty on the Stealth check, and even if your check is successful, observers still see the spell effect (though they fail to notice you are responsible for it).",
                          summary: "When triggering a wand, staff or any other magic item, you can attempt a Stealth check (opposed by observers’ Perception checks) to conceal the trigger from onlookers.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertFeat(
        .make("Throat Slicer (Combat)",
                          featType: "General",
                          prerequisites: "Base attack bonus +1.",
                          benefit: "When using a 1-handed, light, or natural weapon, you can deliver a coup de grace to an unconscious, bound, or pinned target (though not other kinds of helpless targets) as a standard action.",
                          summary: "When using a 1-handed, light, or natural weapon, you can deliver a coup de grace to an unconscious, bound, or pinned target (though not other kinds of helpless targets) as a standard action.",
                          source: "Heroes of the Streets", isPremium: true)
        )
        try await db.insertFeat(
        .make("Underworld Connections",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You gain a +2 bonus on all Knowledge (dungeoneering) checks and Survival checks while underground or in urban terrain. Additionally, while within a settlement and attempting a check modified by that settlement’s corruption, crime, or economy modifiers (see Pathfinder RPG GameMastery Guide 205), you can use your knowledge of local contacts to gain a +4 bonus on that roll. However, if the check fails, anyone witnessing your attempt sees you committing some violation of local law.",
                          summary: "You gain a +2 bonus on all Knowledge (dungeoneering) checks and Survival checks while underground or in urban terrain.",
                          source: "Heroes of the Streets", isPremium: true),

                    // // MARK: - Heroes of the Wild
        )
        try await db.insertFeat(
        .make("Bounding Step",
                          featType: "General",
                          prerequisites: "Dex 15, Nimble Moves.",
                          benefit: "You gain a +2 bonus on Acrobatics checks to keep your balance and Reflex saves to avoid falling. Additionally, select one terrain type from the ranger list of favored terrains. Within that terrain, the maximum number of feet of difficult terrain you can move through as if it were normal terrain increases by 10 feet.",
                          normal: "Nimble Moves allows you to move through 5 feet of difficult terrain each round as if it were normal terrain.",
                          special: "If you have the favored terrain class feature, you do not select a terrain with this feat. Instead, this feat’s increased movement through difficult terrain applies to all of your favored terrains.",
                          summary: "You gain a +2 bonus on Acrobatics checks to keep your balance and Reflex saves to avoid falling. Additionally, select one terrain type from the ranger list of favored terrains.",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Charging Stag Style (Combat, Style)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Improved Unarmed Strike, Mobility.",
                          benefit: "When using this style and not mounted, you can charge through difficult terrain and spaces containing allies. You can also make a single turn of up to 90 degrees during your charge. You must see your target at the beginning of your charge, and can make only a single attack at the end, even if you would normally be able to make multiple attacks (such as with the pounce ability).",
                          normal: "You can’t charge through allies’ spaces or difficult terrain.",
                          summary: "When using this style and not mounted, you can charge through difficult terrain and spaces containing allies. You can also make a single turn of up to 90 degrees during your charge.",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Diversion Shot (Combat, Teamwork)",
                          featType: "General",
                          prerequisites: "Stealthy, Target of Opportunity UC .",
                          benefit: "When you hit a target using Target of Opportunity, the ally who triggered your ranged attack can attempt a Stealth check to hide from your target as an immediate action, even if your target is aware of your ally’s presence. Your ally must also have this feat to benefit from this effect. This Stealth check applies only to the target you hit, and the stealth ends if the ally takes any action other than to move into cover or concealment.",
                          summary: "When you hit a target using Target of Opportunity, the ally who triggered your ranged attack can attempt a Stealth check to hide from your target as an immediate action, even if your target is aware…",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Electric Discharge (Teamwork)",
                          featType: "General",
                          prerequisites: "Arcane Strike, ability to cast a 1st-level or higher spell with the electricity descriptor.",
                          benefit: "If you ready an action to cast a 1st-level or higher spell with the electricity descriptor when an ally within 30 feet who has this feat casts a 1st-level or higher spell with the electricity descriptor, when you cast your spell both you and that ally gain the ability to have the next weapon attack you augment with the Arcane Strike feat deal an additional 1d4 points of electricity damage on a hit. These attacks must be made before the end of the next round.",
                          summary: "If you ready an action to cast a 1st-level or higher spell with the electricity descriptor when an ally within 30 feet who has this feat casts a 1st-level or higher spell with the electricity…",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Forest Ambush (Combat)",
                          featType: "General",
                          prerequisites: "Stealth 1 rank, Survival 1 rank.",
                          benefit: "In natural environments, you can spend 5 minutes to cover yourself in loose debris (such as branches, grass, or dirt) and take 20 on a Stealth check. You fall prone and are considered to have concealment for purposes of being allowed to attempt Stealth checks. As a full-round action that doesn’t provoke attacks of opportunity, you can burst from your hiding place, stand, and make a single melee attack or ranged attack against a target within 30 feet. If the target didn’t notice you before you jumped from hiding and your attack hits, that attack deals an additional 1d6 points of precision damage. Effects that negate sneak attack damage also negate this damage.",
                          summary: "In natural environments, you can spend 5 minutes to cover yourself in loose debris (such as branches, grass, or dirt) and take 20 on a Stealth check.",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Greater Uncivilized Tactics (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Improved Uncivilized Tactics, Power Attack, Uncivilized Tactics.",
                          benefit: "You gain a +2 bonus on checks to use Uncivilized Tactics. This bonus stacks with the bonus granted by Improved Uncivilized Tactics. Additionally, a foe must take a full-round action to recover the use of a limb or natural attack you’ve incapacitated with Uncivilized Tactics.",
                          normal: "As a standard action, a foe can regain the use of a limb or natural attack incapacitated with Uncivilized Tactics.",
                          summary: "You gain a +2 bonus on checks to use Uncivilized Tactics. This bonus stacks with the bonus granted by Improved Uncivilized Tactics.",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Herbal Components",
                          featType: "General",
                          prerequisites: "Eschew Materials.",
                          benefit: "Once per day, you can attempt a Profession (Herbalist) or Survival check to use herbal substitutes for the required material components of a single spell that normally cost up to 25 gp (DC = 5 + the gp value of component). These components can be used only for your own spells and can’t be sold. They decay within a week if not used.",
                          normal: "You must buy spell components for any spell requiring a material component.",
                          summary: "Once per day, you can attempt a Profession (Herbalist) or Survival check to use herbal substitutes for the required material components of a single spell that normally cost up to 25 gp (DC = 5 + the…",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Improved Uncivilized Tactics (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack, Uncivilized Tactics.",
                          benefit: "You don’t provoke an attack of opportunity when attempting a combat maneuver check to use Uncivilized Tactics. In addition, you receive a +2 bonus on such checks.",
                          normal: "You provoke an attack of opportunity when using the Uncivilized Tactics feat.",
                          summary: "You don’t provoke an attack of opportunity when attempting a combat maneuver check to use Uncivilized Tactics. In addition, you receive a +2 bonus on such checks.",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Mystical Reverberation (Teamwork)",
                          featType: "General",
                          prerequisites: "Ability to spontaneously cast spells.",
                          benefit: "As a standard action, select an ally within 30 feet who also has this feat and select a metamagic feat you have. If that ally doesn’t have the selected metamagic feat, she can modify a spell she casts before the end of her next turn with that metamagic feat. The spell is modified as normal, except it uses a spell slot 1 additional level above the normal spell level modification for that metamagic feat. If the selected ally does have the metamagic feat you select, she can instead use that feat to modify a spell she casts before the end of her next turn without increasing the spell’s casting time.",
                          summary: "As a standard action, select an ally within 30 feet who also has this feat and select a metamagic feat you have.",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stag Horns (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Charging Stag Style, Dodge, Improved Unarmed Strike, Mobility.",
                          benefit: "While using Charging Stag Style, if you make a successful unarmed attack at the end of a charge, you can attempt a free grapple check against the target of your charge without provoking an attack of opportunity.",
                          normal: "Attempting a grapple requires a standard action, which provokes an attack of opportunity from your target unless you have the Improved Grapple feat.",
                          summary: "While using Charging Stag Style, if you make a successful unarmed attack at the end of a charge, you can attempt a free grapple check against the target of your charge without provoking an attack of…",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stag Submission (Combat)",
                          featType: "General",
                          prerequisites: "Charging Stag Style, Dodge, Improved Unarmed Strike, Mobility, Stag Horns.",
                          benefit: "When you are in Charging Stag Style and succeed at a combat maneuver check to pin a foe, you can choose to also knock the foe prone or to deal your unarmed attack damage to the foe.",
                          normal: "After successfully maintaining a grapple on a target, you can choose to move, damage, or pin the target.",
                          summary: "When you are in Charging Stag Style and succeed at a combat maneuver check to pin a foe, you can choose to also knock the foe prone or to deal your unarmed attack damage to the foe.",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Summon Plant Ally",
                          featType: "General",
                          prerequisites: "Knowledge (nature) 1 rank, ability to cast summon nature’s ally spells.",
                          benefit: "When casting a summon nature’s ally spell, you gain access to the list of plant creatures below. Summon nature’s ally I: Leaf leshyB3, vegepygmy. Summon nature’s ally II: Gourd leshyB3, leaf rayB4 (without seed ability). Summon nature’s ally III: Fungus leshyB3, weedwhipB4. Summon nature’s ally IV: Assassin vine, seaweed leshyB3 (without air cyst ability). Summon nature’s ally V: MandragoraB2, shambling mound. Summon nature’s ally VI: TendriculosB2, treant. Summon nature’s ally VII: Giant flytrap. Summon nature’s ally VIII: JinmenjuB4. Summon nature’s ally IX: AlrauneB3.",
                          summary: "When casting a summon nature’s ally spell, you gain access to the list of plant creatures below. Summon nature’s ally I: Leaf leshyB3, vegepygmy.",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Supernatural Tracker",
                          featType: "General",
                          prerequisites: "Survival 1 rank, ability to cast a detect spell.",
                          benefit: "You can cast a detect spell that specifies a creature type, such as detect animals and plants or detect undead, to augment your ability to track such creatures instead of the spell’s normal benefit; you can see a soft glow that highlights tracks of passage left by creatures of that type. For a duration of 1 hour per level of the spell, you gain a bonus equal to 5 + the spell’s level on Survival checks to track creatures of the specified type. For this duration, you can track such creatures as if you are trained in the Survival skill, even if you are not.",
                          summary: "You can cast a detect spell that specifies a creature type, such as detect animals and plants or detect undead, to augment your ability to track such creatures instead of the spell’s normal benefit;…",
                          source: "Heroes of the Wild", isPremium: true)
        )
        try await db.insertFeat(
        .make("Uncivilized Tactics (Combat)",
                          featType: "General",
                          prerequisites: "Str 13, Power Attack.",
                          benefit: "As a standard action, you can attempt a combat maneuver check against a creature no more than one size category larger than yourself. This provokes an attack of opportunity from the target of the maneuver. If the check is successful, you can prevent the target from using one arm (or similar limb) or one natural attack of your choice for 1 round. For every 5 by which your check result exceeds the target’s CMD, the affected arm or natural attack is unusable for 1 additional round. The target can regain the use of its disabled limb or natural attack by taking a standard action to do so.",
                          summary: "As a standard action, you can attempt a combat maneuver check against a creature no more than one size category larger than yourself.",
                          source: "Heroes of the Wild", isPremium: true),

                    // // MARK: - Inner Sea Combat
        )
        try await db.insertFeat(
        .make("Awe-Inspiring Smash (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Str 15, Power Attack, base attack bonus +3.",
                          benefit: "You can apply your Strength modifier instead of your Charisma modifier to performance combat checks. In addition, when you spend a swift action to attempt a performance combat check that was triggered by a successful bull rush or sunder combat maneuver check, you gain a +2 bonus on the performance combat check. For every 5 points by which your attack exceeded your opponent’s CMD, this bonus increases by 2.",
                          summary: "You can apply your Strength modifier instead of your Charisma modifier to performance combat checks.",
                          source: "Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Black Powder Spectacle (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Amateur GunslingerUC or the grit class feature, base attack bonus +4.",
                          benefit: "When you spend a swift action to attempt a performance combat check, you can sacrifice one cartridge or an amount of black powder required for a single shot to make either a loud sound or an impressive flash. If you choose to make your weapon’s report louder, you gain a +4 bonus on all Intimidate checks you attempt for 1 round. If you choose to create an impressive flash, you gain a +4 bonus on any Perform checks you attempt for 1 round.",
                          summary: "When you spend a swift action to attempt a performance combat check, you can sacrifice one cartridge or an amount of black powder required for a single shot to make either a loud sound or an…",
                          source: "Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cannon Master (Combat)",
                          featType: "General",
                          prerequisites: "Siege Engineer UC, Knowledge (engineering) or Profession (siege engineer) 7 ranks, proficiency with at least one firearm siege engine.",
                          benefit: "You gain a +2 competence bonus on any Craft (siege engine) checks made to repair a firearm siege engine. In addition, if you are the crew leader for a firearm siege engine with the broken condition, that siege engine’s misfire range is increased by only 2 instead of by 4, and the broken siege engine must misfire twice before it explodes.",
                          summary: "You gain a +2 competence bonus on any Craft (siege engine) checks made to repair a firearm siege engine.",
                          source: "Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Casterbane Shot (Combat, Grit)",
                          featType: "General",
                          prerequisites: "Amateur GunslingerUC or the grit class feature, Point-Blank Shot, Precise Shot, base attack bonus +4.",
                          benefit: "If you ready a ranged attack with a firearm to attack a spellcaster when he begins casting a spell and successfully hit your opponent, you can expend 1 grit point to increase the target’s concentration check DC for being injured while casting by 5.",
                          summary: "If you ready a ranged attack with a firearm to attack a spellcaster when he begins casting a spell and successfully hit your opponent, you can expend 1 grit point to increase the target’s…",
                          source: "Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Grand Duchy Familiarity",
                          featType: "General",
                          prerequisites: "Base attack bonus +3, proficiency with at least one firearm.",
                          benefit: "Once per day as an immediate action, you can reroll an attack roll with a firearm that would have resulted in a misfire. You must take the results of the new roll, even if it results in a misfire as well.",
                          summary: "Once per day as an immediate action, you can reroll an attack roll with a firearm that would have resulted in a misfire.",
                          source: "Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Masterful Flourish (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Weapon training class feature.",
                          benefit: "When wielding a weapon with the performance weapon special quality that belongs to a category of weapons in which you have weapon training, you may add the bonus from your weapon training to any performance combat checks made as a result of using the weapon.",
                          summary: "When wielding a weapon with the performance weapon special quality that belongs to a category of weapons in which you have weapon training, you may add the bonus from your weapon training to any…",
                          source: "Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monstrous Mount",
                          featType: "General",
                          prerequisites: "Handle Animal 4 ranks; Ride 4 ranks; divine bond (mount), hunter’s bond (animal companion), or mount class feature with an effective druid level of 4.",
                          benefit: "You can select an exotic beast from the list of monstrous mounts to serve as your animal companion or special mount. You acquire and advance this creature in the same way as the mount or animal companion detailed in the class feature used as a prerequisite for this feat. You can also dismiss the creature as dictated by your class feature. You must meet additional prerequisites to choose a creature with an Intelligence score of 3 or higher, as described in each creature’s entry.",
                          summary: "You can select an exotic beast from the list of monstrous mounts to serve as your animal companion or special mount.",
                          source: "Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Monstrous Mount Mastery",
                          featType: "General",
                          prerequisites: "Monstrous Mount, character level equal to or higher than that listed in your mount’s Mastery entry.",
                          benefit: "Your monstrous mount gains the abilities and bonuses listed under Mastery in its stat block. You must be of at least the indicated level for the mount to use these abilities, so if you dismiss a mount and gain a new mount of a different type, you retain the feat but might not yet be of sufficient level for the new mount to gain its Mastery benefits.",
                          normal: "A monstrous mount is unable to use its Mastery abilities regardless of its advancement.",
                          summary: "Your monstrous mount gains the abilities and bonuses listed under Mastery in its stat block.",
                          source: "Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ostentatious Weakness (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Base attack bonus +5, favored enemy class feature.",
                          benefit: "When you spend a swift action to attempt a performance combat check, you may add your favored enemy bonus to the check if you’re fighting a favored enemy.",
                          summary: "When you spend a swift action to attempt a performance combat check, you may add your favored enemy bonus to the check if you’re fighting a favored enemy.",
                          source: "Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Redirected Shot (Combat, Grit)",
                          featType: "General",
                          prerequisites: "Amateur GunslingerUC or the grit class feature, Deadly Aim, Point-Blank Shot, Precise Shot.",
                          benefit: "As long as you have at least 1 grit point, after an ally has made a ranged attack roll but before the results of the roll have been revealed, you can fire a loaded firearm at the volley as it moves toward its target, redirecting its path. Make an attack roll using your highest attack bonus, and use your result in place of your ally’s original attack roll. On a successful hit, your ally’s attack deals damage as normal. You may perform this action a number of times per round up to your Wisdom bonus (minimum 1).",
                          summary: "As long as you have at least 1 grit point, after an ally has made a ranged attack roll but before the results of the roll have been revealed, you can fire a loaded firearm at the volley as it moves…",
                          source: "Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Savage Surge (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Intimidating Prowess, rage class feature.",
                          benefit: "When attempting a performance combat check while raging, you may, as a free action, expend a number of your daily rounds of rage up to half your barbarian level to create a display of savagery. You gain a bonus on the performance combat check equal to half the number of rounds expended, rounded down. If you expend all your remaining rounds of rage in this manner, thus ending your rage, you gain an additional +2 bonus on the check.",
                          summary: "When attempting a performance combat check while raging, you may, as a free action, expend a number of your daily rounds of rage up to half your barbarian level to create a display of savagery.",
                          source: "Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Spectacular Exit (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Dex 15, Dodge, Acrobatics 7 ranks.",
                          benefit: "When you must attempt a performance combat check because you used the withdraw action, you can attempt an Acrobatics check against your opponent’s CMD before the performance combat check. Success allows you to withdraw without taking the standard –5 penalty on your check. In addition, for every 5 points by which your Acrobatics check result exceeds your opponent’s CMD, you gain a +1 bonus on all Perform checks you make for the remainder of the round.",
                          summary: "When you must attempt a performance combat check because you used the withdraw action, you can attempt an Acrobatics check against your opponent’s CMD before the performance combat check.",
                          source: "Inner Sea Combat", isPremium: true)
        )
        try await db.insertFeat(
        .make("Thrilling Vengeance (Combat, Performance)",
                          featType: "General",
                          prerequisites: "Base attack bonus +3, rage class feature.",
                          benefit: "When you spend a swift action to attempt a performance combat check while you’re raging, you gain a +2 bonus on the check if the trigger involved you dealing damage to a creature that had hit you within the last round.",
                          summary: "When you spend a swift action to attempt a performance combat check while you’re raging, you gain a +2 bonus on the check if the trigger involved you dealing damage to a creature that had hit you…",
                          source: "Inner Sea Combat", isPremium: true),

                    // // MARK: - Inner Sea Gods
        )
        try await db.insertFeat(
        .make("Aura of Succumbing",
                          featType: "General",
                          prerequisites: "Channel energy class feature, worshiper of one of the Four Horsemen.",
                          benefit: "As a swift action, you can expend one of your uses of channel energy to emanate a 30-foot-radius aura of succumbing for a number of rounds equal to your effective cleric level. Dying creatures in the area take 1 point of damage per die of your normal channel negative energy damage at the start of your turn each round. A successful Will save (DC equal to the DC of your channel energy ability) halves this damage. Whenever a living creature dies while within your aura of succumbing, you gain a number of temporary hit points equal to that creature’s Hit Dice. These temporary hit points last for 1 hour.",
                          summary: "As a swift action, you can expend one of your uses of channel energy to emanate a 30-foot-radius aura of succumbing for a number of rounds equal to your effective cleric level.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Beacon of Hope",
                          featType: "General",
                          prerequisites: "Channel energy 3d6, worshiper of Milani.",
                          benefit: "When you channel positive energy to heal living creatures, those you heal gain a +2 morale bonus on saving throws, attack rolls, ability checks, and skill checks for a number of rounds equal to your Charisma bonus (minimum 1 round).",
                          summary: "When you channel positive energy to heal living creatures, those you heal gain a +2 morale bonus on saving throws, attack rolls, ability checks, and skill checks for a number of rounds equal to your…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Believable Veils",
                          featType: "General",
                          prerequisites: "Caster level 3rd, ability to cast at least one glamer or figment, worshiper of Sivanah.",
                          benefit: "Once per day when you create a glamer or figment effect, you can empower the effect so that the DC to disbelieve it is 2 higher than normal.",
                          summary: "Once per day when you create a glamer or figment effect, you can empower the effect so that the DC to disbelieve it is 2 higher than normal.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Blessed Hammer",
                          featType: "General",
                          prerequisites: "Ability to cast 3rd-level divine spells, proficient with warhammer, worshiper of Torag.",
                          benefit: "You can use any warhammer you wield as a holy symbol when casting spells that require a divine focus or when you channel energy. Furthermore, as a swift action when you cast a divine touch spell, you can choose to have the warhammer carry the charge of the spell instead of your hand. When you deliver a touch spell with your warhammer you can do so as part of melee attack made with the warhammer. If you drop the warhammer or the warhammer is disarmed while carrying a charge, the charge is lost.",
                          summary: "You can use any warhammer you wield as a holy symbol when casting spells that require a divine focus or when you channel energy.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bloody Sabres (Combat)",
                          featType: "General",
                          prerequisites: "Dex 15, Exotic Weapon Proficiency (sawtooth sabre), Two-Weapon Fighting, worshiper of Achaekek.",
                          benefit: "If you hit an opponent with both your primary weapon and your off-hand weapon as part of the same attack action, and both of those weapons are sawtooth sabres, you deal 1 point of bleed damage in addition to the normal damage dealt by these attacks.",
                          summary: "If you hit an opponent with both your primary weapon and your off-hand weapon as part of the same attack action, and both of those weapons are sawtooth sabres, you deal 1 point of bleed damage in…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Bolster Undead",
                          featType: "General",
                          prerequisites: "Channel energy 6d6, worshiper of Urgathoa.",
                          benefit: "Whenever you channel negative energy to heal undead creatures, you grant all undead you heal +1 channel resistance (or a +1 bonus to their existing channel resistance) for a number of rounds equal to your Charisma modifier (minimum 1 round).",
                          summary: "Whenever you channel negative energy to heal undead creatures, you grant all undead you heal +1 channel resistance (or a +1 bonus to their existing channel resistance) for a number of rounds equal to…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Breaker of Barriers (Combat)",
                          featType: "General",
                          prerequisites: "Str 17, worshiper of Rovagug.",
                          benefit: "You gain a +2 bonus on Strength checks to break down doors, walls, dams, and other barriers and on combat maneuver checks to bull rush and overrun opponents. You ignore the first 5 points of hardness when you deal damage to doors, walls, dams, and other barriers.",
                          summary: "You gain a +2 bonus on Strength checks to break down doors, walls, dams, and other barriers and on combat maneuver checks to bull rush and overrun opponents.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channel Discord",
                          featType: "General",
                          prerequisites: "Channel energy 8d6, worshiper of a demon lord.",
                          benefit: "Once per day when you channel negative energy to harm living creatures, in addition to dealing damage you can choose to affect those who fail their Will save against your channel with a song of discord (caster level equal to your effective cleric level).",
                          summary: "Once per day when you channel negative energy to harm living creatures, in addition to dealing damage you can choose to affect those who fail their Will save against your channel with a song of…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channel Endurance",
                          featType: "General",
                          prerequisites: "Channel positive energy 3d6, worshiper of Gozreh.",
                          benefit: "Once per day when you channel positive energy to heal living creatures, you can choose to grant each healed creature the benefit of endure elements (caster level equal to your effective cleric level). This effect lasts 24 hours.",
                          summary: "Once per day when you channel positive energy to heal living creatures, you can choose to grant each healed creature the benefit of endure elements (caster level equal to your effective cleric…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channel Hate",
                          featType: "General",
                          prerequisites: "Channel energy 6d6, worshiper of Gyronna.",
                          benefit: "As a standard action, you can expend one use of your channel energy ability to affect a single creature within 30 feet as if you had cast vengeful outrageUM (caster level equal to your effective cleric level). Upon obtaining channel energy 9d6, you can affect a number of creatures within 30 feet equal to your Charisma bonus (minimum 2 creatures) with this feat instead. If you expend an extra use of channel energy when using this feat, the target does not gain a second saving throw against this effect if you designate the target’s friend or loved one as its hated enemy.",
                          summary: "As a standard action, you can expend one use of your channel energy ability to affect a single creature within 30 feet as if you had cast vengeful outrageUM (caster level equal to your effective…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Channel Viciousness",
                          featType: "General",
                          prerequisites: "Channel negative energy 4d6, worshiper of Gorum.",
                          benefit: "As a standard action, you can expend one of your uses of channel energy to charge the melee weapons of all allies within 30 feet of you with negative energy. Affected melee weapons gain the vicious magic weapon special ability for 1 minute × your Charisma bonus (minimum 1 minute).",
                          summary: "As a standard action, you can expend one of your uses of channel energy to charge the melee weapons of all allies within 30 feet of you with negative energy.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Clarifying Channel",
                          featType: "General",
                          prerequisites: "Channel energy class feature, worshiper of Shelyn.",
                          benefit: "Once per day when you channel positive energy to heal living creatures, if any of the creatures you healed are currently affected by one or more charms or compulsions that allowed a saving throw, you grant each of those creatures an immediate save to prematurely end one of those effects. Creatures healed gain a sacred bonus on this save equal to your Charisma bonus (minimum +1).",
                          summary: "Once per day when you channel positive energy to heal living creatures, if any of the creatures you healed are currently affected by one or more charms or compulsions that allowed a saving throw, you…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Conversion Channel",
                          featType: "General",
                          prerequisites: "Channel energy 7d6, worshiper of Asmodeus.",
                          benefit: "Once per day when you channel negative energy to deal damage to living creatures, you can grant the effects of channeling positive energy to the faithful of Asmodeus. Worshipers of Asmodeus within the area of your channel recover a number of hit points equal to the amount of negative energy channeled. Non- Asmodeus worshipers within the channeled energy can convert to the worship of Asmodeus as an immediate action in order to gain this healing effect. As long as their conversion is sincere, willing converts gain the healing instead of the damage from the channeled negative energy. Such a conversion can only be undone by an atonement or similar effect.",
                          summary: "Once per day when you channel negative energy to deal damage to living creatures, you can grant the effects of channeling positive energy to the faithful of Asmodeus.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Courage in a Bottle",
                          featType: "General",
                          prerequisites: "Bravery class feature, worshiper of Cayden Cailean.",
                          benefit: "While you are intoxicated, the bonus you gain from your bravery class feature increases by 2. If this increase grants you a total bonus of +6 or higher against fear effects, you become immune to fear instead.",
                          summary: "While you are intoxicated, the bonus you gain from your bravery class feature increases by 2.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Cruelty",
                          featType: "General",
                          prerequisites: "Worshiper of Zon-Kuthon.",
                          benefit: "Whenever you deal bleed damage to an opponent, cause an opponent to suffer a fear or pain effect, or reduce an opponent’s hit points to 0 or fewer, you gain a +2 morale bonus on attack rolls and weapon damage rolls for 1 round.",
                          summary: "Whenever you deal bleed damage to an opponent, cause an opponent to suffer a fear or pain effect, or reduce an opponent’s hit points to 0 or fewer, you gain a +2 morale bonus on attack rolls and…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Curse of Vengeance",
                          featType: "General",
                          prerequisites: "Ability to cast at least one spell or spell-like ability with the curse descriptor, worshiper of Calistria.",
                          benefit: "Whenever you are rendered helpless or a creature kills you, you can cast a single spell or spell-like ability with the curse descriptor as an immediate action before you become helpless or are killed. The curse must have a casting time of 1 standard action or less and must target the creature who rendered you helpless or who killed you. If the curse has a range of touch and the attacker is not within your reach, you can deliver it as a ranged touch attack with a range of 30 feet.",
                          summary: "Whenever you are rendered helpless or a creature kills you, you can cast a single spell or spell-like ability with the curse descriptor as an immediate action before you become helpless or are…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Devilish Pride",
                          featType: "General",
                          prerequisites: "Iron Will, worshiper of Asmodeus.",
                          benefit: "Whenever you attempt a Will save against a charm or compulsion spell cast by anyone who is not a worshiper of Asmodeus, you may roll twice and take the better result.",
                          summary: "Whenever you attempt a Will save against a charm or compulsion spell cast by anyone who is not a worshiper of Asmodeus, you may roll twice and take the better result.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Diabolical Negotiator",
                          featType: "General",
                          prerequisites: "Skill Focus (Diplomacy), worshiper of Asmodeus.",
                          benefit: "You can add your Intelligence or Wisdom modifier (whichever is higher) on Diplomacy checks in place of your Charisma modifier. You can shift a creature’s attitude more than two steps with Diplomacy, and a creature’s attitude is only decreased by one step if you roll a natural 1 and fail the check by 5 or more.",
                          summary: "You can add your Intelligence or Wisdom modifier (whichever is higher) on Diplomacy checks in place of your Charisma modifier.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Disciple of the Sword",
                          featType: "General",
                          prerequisites: "Weapon Focus (longsword), cleric or inquisitor level 4th, worshiper of Iomedae.",
                          benefit: "You gain the benefits of Weapon Specialization (longsword), and you can use your cleric or inquisitor level in place of your fighter level for the purpose of qualifying for Greater Weapon Focus (longsword) and Greater Weapon Specialization (longsword). You can use this feat instead of Weapon Specialization (longsword) to qualify for Greater Weapon Specialization (longsword).",
                          summary: "You gain the benefits of Weapon Specialization (longsword), and you can use your cleric or inquisitor level in place of your fighter level for the purpose of qualifying for Greater Weapon Focus…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Divine Barrier",
                          featType: "General",
                          prerequisites: "Channel energy class feature, worshiper of Apsu.",
                          benefit: "When you are within an area effect that deals acid, cold, electricity, or fire damage, you can expend one use of your channel energy ability as an immediate action to shield yourself and all allies within 30 feet. You and allies within your shield only take half damage if they fail their save against the effect, and those who make a successful save take no damage from the effect.",
                          summary: "When you are within an area effect that deals acid, cold, electricity, or fire damage, you can expend one use of your channel energy ability as an immediate action to shield yourself and all allies…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Divine Dignity",
                          featType: "General",
                          prerequisites: "Combat Casting, ability to cast divine spells, worshiper of Abadar.",
                          benefit: "Three times per day, as a free action when you cast a harmless divine spell or a domain spell, you can choose for the casting to not provoke attacks of opportunity.",
                          special: "You can take this feat multiple times. When you do, you can use this feat three more times per day.",
                          summary: "Three times per day, as a free action when you cast a harmless divine spell or a domain spell, you can choose for the casting to not provoke attacks of opportunity.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Divine Expression",
                          featType: "General",
                          prerequisites: "Bard level 1st, cleric or oracle level 1st, worshiper of Shelyn.",
                          benefit: "When you take this feat, choose either the cleric or oracle class. Levels in the selected class stack with your bard level when determining the number of rounds per day you can use your bardic performance and the type of action it takes to start a bardic performance.",
                          summary: "When you take this feat, choose either the cleric or oracle class.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Dreamed Secrets",
                          featType: "General",
                          prerequisites: "Ability to cast divine spells, caster level 7th, worshiper of a Great Old One or Outer God.",
                          benefit: "With each night’s rest, you can choose two spells from the wizard spell list, both of which must be at least 1 wizard spell level lower than the highest level divine spell you can cast. If you are a spontaneous caster, these spells are added to your spells known for 24 hours. If you prepare spells, you can prepare these spells any time you do so in the next 24 hours. Each time you attempt to cast one of the wizard spells you have chosen, you must succeed at a DC 20 Will save or take 1d2 points of Wisdom damage and fail to cast the spell, though you do not lose the spell.",
                          summary: "With each night’s rest, you can choose two spells from the wizard spell list, both of which must be at least 1 wizard spell level lower than the highest level divine spell you can cast.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Eerie Sense",
                          featType: "General",
                          prerequisites: "Ability to cast detect undead or detect evil as a spell or spell-like ability, worshiper of Pharasma.",
                          benefit: "At the beginning of your turn each round, if you are within 60 feet of an undead creature or a haunt, you get a chill down your spine and instinctively sense that something eerie is very near. This sense does not alert you to the direction of the undead or haunt. Anything that can block detect undead can likewise block this sense.",
                          summary: "At the beginning of your turn each round, if you are within 60 feet of an undead creature or a haunt, you get a chill down your spine and instinctively sense that something eerie is very near.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Elemental Vigor",
                          featType: "General",
                          prerequisites: "Worshiper of an elemental lord.",
                          benefit: "Whenever you use a polymorph effect to assume the form of an elemental you gain a rush of vital energy. You gain a number of temporary hit points equal to the caster level of the polymorph effect and you gain a +10 foot bonus to your base speed.",
                          summary: "Whenever you use a polymorph effect to assume the form of an elemental you gain a rush of vital energy.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fateful Channel",
                          featType: "General",
                          prerequisites: "Channel positive energy 3d6, worshiper of Pharasma.",
                          benefit: "When you channel positive energy to heal living creatures, you grant each creature you heal the ability to roll twice and take the better result on a single attack roll, skill check, or saving throw of their choice within a number of rounds equal to your Charisma bonus (minimum 1). Multiple uses of this ability do not stack, but they do reset the effect’s duration. A creature can only benefit from one instance of this channel effect at a time.",
                          summary: "When you channel positive energy to heal living creatures, you grant each creature you heal the ability to roll twice and take the better result on a single attack roll, skill check, or saving throw…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Fey Friend",
                          featType: "General",
                          prerequisites: "Worshiper of one of the Eldest.",
                          benefit: "Fey regard you as akin to them, and the spells and other abilities of fey treat you as fey or your actual type, whichever is more advantageous to you. You gain a +2 bonus on Bluff, Diplomacy, and Sense Motive checks against fey.",
                          summary: "Fey regard you as akin to them, and the spells and other abilities of fey treat you as fey or your actual type, whichever is more advantageous to you.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Flagellant",
                          featType: "General",
                          prerequisites: "Endurance, character level 7th, worshiper of Zon-Kuthon.",
                          benefit: "You gain a +4 bonus on saving throws against pain effects. Also, you suffer no adverse effect when your nonlethal damage equals your current hit points, and you become staggered when your nonlethal damage exceeds your current hit points. You never fall unconscious due to nonlethal damage.",
                          normal: "When your nonlethal damage equals your current hit points, you become staggered. When your nonlethal damage exceeds your current hit points, you fall unconscious.",
                          summary: "You gain a +4 bonus on saving throws against pain effects. Also, you suffer no adverse effect when your nonlethal damage equals your current hit points, and you become staggered when your nonlethal…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Forceful Channel",
                          featType: "General",
                          prerequisites: "Channel negative energy 7d6, worshiper of Nethys.",
                          benefit: "Once per day when you channel negative energy to deal damage to living creatures, you can cause affected creatures to make Fortitude saves instead of Will saves. Affected creatures take the amount of damage channeled in force damage (a successful save halves). Creatures that fail their saves are also knocked prone.",
                          summary: "Once per day when you channel negative energy to deal damage to living creatures, you can cause affected creatures to make Fortitude saves instead of Will saves.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hands of Valor",
                          featType: "General",
                          prerequisites: "Lay on hands class feature, worshiper of Iomedae.",
                          benefit: "Once per day when you use lay on hands, you can also imbue that ally with valor. In addition to the normal effects of your lay on hands, the targeted ally gains a sacred bonus on attack rolls and on saves against fear effects equal to your Charisma bonus (minimum +1) for 1 minute.",
                          summary: "Once per day when you use lay on hands, you can also imbue that ally with valor.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hellish Shackles",
                          featType: "General",
                          prerequisites: "Channel energy 5d6; worshiper of an archdevil, infernal duke, malbranche, or whore queen.",
                          benefit: "Once per day when you channel negative energy to damage living creatures, you can attempt to affect damaged creatures with a dimensional anchor. Those damaged must make a successful Will save (DC equal to the DC of the channel effect) in addition to the normal Will save to halve damage from the channeled energy. Those that fail their save against the channeled energy take a –4 penalty on their saving throw against the dimensional anchor effect. Those that fail their second Will save are affected by dimensional anchor for a number of minutes equal to your Charisma modifier (minimum 1 minute).",
                          summary: "Once per day when you channel negative energy to damage living creatures, you can attempt to affect damaged creatures with a dimensional anchor.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Heroic Interposition (Combat)",
                          featType: "General",
                          prerequisites: "Dex 13, Dodge, Improved Initiative, Mobility, worshiper of an empyreal lord.",
                          benefit: "Once per day, you can move up to your speed as an immediate action, but you must end this movement adjacent to an opponent who is about to make an attack against an ally. As long as you are visible to the opponent you moved next to, that opponent takes a –2 penalty on the attack roll to which you moved in response.",
                          summary: "Once per day, you can move up to your speed as an immediate action, but you must end this movement adjacent to an opponent who is about to make an attack against an ally.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Hunter of Dahak",
                          featType: "General",
                          prerequisites: "Favored enemy (dragon), worshiper of Dahak.",
                          benefit: "Your favored enemy bonuses increase by 2 against metallic dragons.",
                          summary: "Your favored enemy bonuses increase by 2 against metallic dragons.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Intrepid Rescuer (Combat)",
                          featType: "General",
                          prerequisites: "Combat Reflexes, worshiper of Kurgess.",
                          benefit: "Whenever an opponent you threaten makes an attack against a helpless, prone, or stunned ally or any attack against a noncombatant, that opponent provokes an attack of opportunity from you. If your attack of opportunity hits your foe, she takes a –4 penalty on the attack roll that provoked this attack of opportunity.",
                          summary: "Whenever an opponent you threaten makes an attack against a helpless, prone, or stunned ally or any attack against a noncombatant, that opponent provokes an attack of opportunity from you.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ironbound Master",
                          featType: "General",
                          prerequisites: "Cleric level 7th, worshiper of Gorum.",
                          benefit: "You gain the armor training fighter class feature with an effective fighter level equal to your cleric level –4.",
                          summary: "You gain the armor training fighter class feature with an effective fighter level equal to your cleric level –4.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Ki Channel",
                          featType: "General",
                          prerequisites: "Channel positive energy class feature, worshiper of Irori.",
                          benefit: "When you channel positive energy to heal living creatures, any creature that could be healed by the channeled energy can choose to regain ki from it instead. Affected creatures regain a number of ki points equal to the number of dice healed by the channel. A creature regaining ki in such a way must either regain ki or be healed by the channel (it cannot gain both).",
                          summary: "When you channel positive energy to heal living creatures, any creature that could be healed by the channeled energy can choose to regain ki from it instead.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Liberation Channel",
                          featType: "General",
                          prerequisites: "Channel energy 7d6, worshiper of Cayden Cailean.",
                          benefit: "When you channel positive energy, any creature healed by the channel also gains the effect of freedom of movement for a number of rounds equal to your Charisma modifier (minimum 1 round). This effect has a caster level equal to your effective cleric level.",
                          summary: "When you channel positive energy, any creature healed by the channel also gains the effect of freedom of movement for a number of rounds equal to your Charisma modifier (minimum 1 round).",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Magical Epiphany",
                          featType: "General",
                          prerequisites: "Ability to prepare spells, worshiper of Nethys.",
                          benefit: "Once per day, you can prepare a spell in an open spell slot as a standard action.",
                          summary: "Once per day, you can prepare a spell in an open spell slot as a standard action.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Master of Knowledge",
                          featType: "General",
                          prerequisites: "Int 17, Skill Focus (Knowledge [any]), worshiper of Irori.",
                          benefit: "Choose a single Knowledge skill with which you have Skill Focus. Once per day, when you wish to make a check with that Knowledge skill, you need not roll, and may treat the result as if you had rolled a natural 20 instead.",
                          summary: "Choose a single Knowledge skill with which you have Skill Focus.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Messenger of Fate",
                          featType: "General",
                          prerequisites: "Ability to cast augury, worshiper of Pharasma.",
                          benefit: "When casting divination spells, you do so at +1 caster level. If your divination spell has a base percentage chance of providing correct or useful information, your maximum chance of gleaning correct or useful information is 100%, instead of the standard 90%.",
                          summary: "When casting divination spells, you do so at +1 caster level. If your divination spell has a base percentage chance of providing correct or useful information, your maximum chance of gleaning correct…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Nightmare Scars",
                          featType: "General",
                          prerequisites: "Worshiper of Lamashtu.",
                          benefit: "You gain a +2 bonus on Diplomacy and Handle Animal checks to affect the attitudes of magical beasts, monstrous humanoids, and worshipers of Lamashtu. You take a –2 penalty on Diplomacy and Handle Animal checks to affect the attitudes of all other types of creatures. You also gain a +2 bonus on Intimidate checks, and take no penalty on Intimidate checks based on your size.",
                          summary: "You gain a +2 bonus on Diplomacy and Handle Animal checks to affect the attitudes of magical beasts, monstrous humanoids, and worshipers of Lamashtu.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Oath of the Unbound",
                          featType: "General",
                          prerequisites: "Worshiper of Rovagug.",
                          benefit: "You gain a +2 bonus on combat maneuver checks to break free of a grapple or pin, on Strength checks to burst bonds or to break through doors or walls, and on saving throws to resist spells and effects that would entangle or slow you.",
                          summary: "You gain a +2 bonus on combat maneuver checks to break free of a grapple or pin, on Strength checks to burst bonds or to break through doors or walls, and on saving throws to resist spells and…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Perfect Casting",
                          featType: "General",
                          prerequisites: "Combat Casting, Divine Dignity, ability to cast divine spells, worshiper of Abadar.",
                          benefit: "When you use Divine Dignity, it can affect the casting of any of your divine spells, not just harmless and domain spells.",
                          summary: "When you use Divine Dignity, it can affect the casting of any of your divine spells, not just harmless and domain spells.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Persuasive Performer",
                          featType: "General",
                          prerequisites: "Versatile performance class feature, worshiper of Shelyn.",
                          benefit: "You can use any of your Perform skills in place of Diplomacy, not just Perform (keyboard instruments, oratory, string, or wind). If you do use Perform (keyboard instruments, oratory, string, or wind), you gain a +2 bonus on your check.",
                          summary: "You can use any of your Perform skills in place of Diplomacy, not just Perform (keyboard instruments, oratory, string, or wind).",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Poisoner's Channel",
                          featType: "General",
                          prerequisites: "Channel energy 3d6, worshiper of Norgorber.",
                          benefit: "Once per day when you channel negative energy to damage living creatures, you can cause any creatures that failed their save against your channel to take a –4 penalty on saving throws against poison effects. This penalty lasts for 1 minute.",
                          summary: "Once per day when you channel negative energy to damage living creatures, you can cause any creatures that failed their save against your channel to take a –4 penalty on saving throws against poison…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Potion Glutton",
                          featType: "General",
                          prerequisites: "Worshiper of Urgathoa.",
                          benefit: "You can drink potions, elixirs, or other potables (but not extracts) as a move action without provoking an attack of opportunity.",
                          normal: "Drinking potions is a standard action that provokes an attack of opportunity.",
                          summary: "You can drink potions, elixirs, or other potables (but not extracts) as a move action without provoking an attack of opportunity.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Protective Channel",
                          featType: "General",
                          prerequisites: "Channel energy 7d6, worshiper of Iomedae.",
                          benefit: "When you channel positive energy to heal living creatures, you can choose to affect healed creatures with a protection from evil spell (caster level equal to your effective cleric level).",
                          summary: "When you channel positive energy to heal living creatures, you can choose to affect healed creatures with a protection from evil spell (caster level equal to your effective cleric level).",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Savior's Arrow",
                          featType: "General",
                          prerequisites: "Ability to cast cure spells, proficient with longbow, worshiper of Erastil.",
                          benefit: "Once per day when you cast a cure spell, you can replace the normal somatic component with drawing a longbow to create a shaft of green glowing light. When you fire the bow as a part of casting the spell and hit your target with a ranged touch attack, the green shaft of light cures the target as if it were touched by the cure spell.",
                          summary: "Once per day when you cast a cure spell, you can replace the normal somatic component with drawing a longbow to create a shaft of green glowing light.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Seductive Channel",
                          featType: "General",
                          prerequisites: "Channel positive energy class feature, worshiper of Calistria.",
                          benefit: "When you channel positive energy, those you heal can choose to take additional healing equal to your Charisma bonus (minimum 1), but in return they take a –2 penalty on Will saves against your charms, compulsions, and emotion effects and on Sense Motive checks against your Bluff checks. This penalty lasts for 24 hours. A creature cannot benefit from this feat again for the duration of this penalty.",
                          summary: "When you channel positive energy, those you heal can choose to take additional healing equal to your Charisma bonus (minimum 1), but in return they take a –2 penalty on Will saves against your…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Siphon Channel",
                          featType: "General",
                          prerequisites: "Channel energy 3d6, worshiper of Ghlaunder.",
                          benefit: "Once per day when you channel negative energy to damage living creatures, you gain a number of temporary hit points equal to half the die result of your channeled energy + 1 per creature affected by the channeled energy. For each affected creature that did not succeed at its saving throw against the channeled energy, you gain an additional temporary hit point. These temporary hit points disappear after 1 hour.",
                          summary: "Once per day when you channel negative energy to damage living creatures, you gain a number of temporary hit points equal to half the die result of your channeled energy + 1 per creature affected by…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Steelskin Channel",
                          featType: "General",
                          prerequisites: "Channel energy 7d6, worshiper of Torag.",
                          benefit: "Once per day when you channel positive energy to heal living creatures, you can grant healed creatures damage resistance. Affected creatures gain DR 2/— (or increase their DR/— by 2, if they already have DR/—) for a number of minutes equal to your Charisma bonus (minimum 1 minute).",
                          summary: "Once per day when you channel positive energy to heal living creatures, you can grant healed creatures damage resistance.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Stone Strider",
                          featType: "General",
                          prerequisites: "Stonecunning racial trait, worshiper of Torag.",
                          benefit: "You can move through any sort of nonmagical rocky terrain without taking damage, becoming slowed due to difficult terrain, or suffering any other impairments the terrain would otherwise cause.",
                          summary: "You can move through any sort of nonmagical rocky terrain without taking damage, becoming slowed due to difficult terrain, or suffering any other impairments the terrain would otherwise cause.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Sun Striker (Combat, Critical)",
                          featType: "General",
                          prerequisites: "Critical Focus, Weapon Focus (scimitar), character level 7th, worshiper of Sarenrae.",
                          benefit: "Whenever you confirm a critical hit against an undead creature, your attack bypasses all DR, deals full damage to incorporeal creatures, and acts as though it has the flaming burst weapon special ability.",
                          summary: "Whenever you confirm a critical hit against an undead creature, your attack bypasses all DR, deals full damage to incorporeal creatures, and acts as though it has the flaming burst weapon special…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Thicket Channel",
                          featType: "General",
                          prerequisites: "Channel energy 7d6, worshiper of Erastil.",
                          benefit: "When you channel positive energy, you can cause plants in the affected area to grow as though targeted by the overgrowth version of plant growth (caster level equal to your effective cleric level).",
                          summary: "When you channel positive energy, you can cause plants in the affected area to grow as though targeted by the overgrowth version of plant growth (caster level equal to your effective cleric level).",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("To the Last (Combat)",
                          featType: "General",
                          prerequisites: "Diehard, Endurance, worshiper of Gorum.",
                          benefit: "When you are disabled, you are not staggered, though performing standard actions still deals 1 point of damage to you. Taking a full-round action deals 2 points of damage to you.",
                          summary: "When you are disabled, you are not staggered, though performing standard actions still deals 1 point of damage to you. Taking a full-round action deals 2 points of damage to you.",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Torch Bearer (Combat)",
                          featType: "General",
                          prerequisites: "",
                          benefit: "You treat a torch as a light weapon that deals bludgeoning damage equal to that of a light mace of its size plus 1 point of fire damage, and you do not incur penalties as you would for using it as an improvised weapon.",
                          normal: "A torch used in combat is treated as a one-handed improvised weapon that deals bludgeoning damage equal to that of a gauntlet of its size plus 1 point of fire damage.",
                          summary: "You treat a torch as a light weapon that deals bludgeoning damage equal to that of a light mace of its size plus 1 point of fire damage, and you do not incur penalties as you would for using it as an…",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Trailblazing Channel",
                          featType: "General",
                          prerequisites: "Channel energy 3d6, worshiper of Desna.",
                          benefit: "Once per day when you channel positive energy, you can cause healed creatures to be unimpeded by difficult terrain for a number of minutes equal to your Charisma modifier (minimum 1 minute).",
                          summary: "Once per day when you channel positive energy, you can cause healed creatures to be unimpeded by difficult terrain for a number of minutes equal to your Charisma modifier (minimum 1 minute).",
                          source: "Inner Sea Gods", isPremium: true)
        )
        try await db.insertFeat(
        .make("Wave Master",
                          featType: "General",
                          prerequisites: "Worshiper of Gozreh.",
                          benefit: "When you succeed at a Swim check, you can move your full speed as a full-round action or half your speed as a move action. This does not grant you the benefit of having a swim speed.",
                          normal: "A successful Swim check allows you to move up to half your speed as a full-round action or up to a quarter your speed as a move action.",
                          summary: "When you succeed at a Swim check, you can move your full speed as a full-round action or half your speed as a move action. This does not grant you the benefit of having a swim speed.",
                          source: "Inner Sea Gods", isPremium: true),

                    // // MARK: - Inner Sea Gods, Faiths of Balance
        )
        try await seedFeatsF()
    }
}
