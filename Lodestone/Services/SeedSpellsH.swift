import Foundation

extension SeedDataBuilder {
    func seedSpellsH() async throws {
        try await db.insertSpell(
        .make("Calistria's Guardian Wasps", school: "Conjuration (Summoning)", levels: "arcanist 3, druid 3, hunter 3, psychic 3, ranger 3, sorcerer 3, wizard 3",
                          castingTime: "10 minutes; see text", components: "V, S, M (a glob of spiced honey)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "Swarm of wasps that builds a nest; see text", targets: "",
                          duration: "1 day/level",
                          savingThrow: "none;", sr: false,
                          summary: "You summon a wasp swarm ( Pathfinder RPG Bestiary 275 ) that builds a 10-foot-by-10-foot nest in the place you designate—typically under the eaves of a house, amid the rafters of a tavern, or in…",
                          desc: "You summon a wasp swarm ( Pathfinder RPG Bestiary 275 ) that builds a 10-foot-by-10-foot nest in the place you designate—typically under the eaves of a house, amid the rafters of a tavern, or in another obscured place. The wasp swarm takes the spell’s casting time to build its nest; if the swarm is disrupted in any way (such as by being attacked) before you finish casting this spell, the wasps disappear and the spell fizzles. Once the wasp swarm has built its nest, this spell also wards the area. As per",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Commune with Texts", school: "Divination", levels: "arcanist 5, bard 5, cleric 6, inquisitor 6, medium 4, occultist 4, oracle 6, psychic 6, skald 5, sorcerer 5, spiritualist 6, warpriest 6, wizard 5",
                          castingTime: "1 minute", components: "V, S, M (incense worth 250 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "a collection of texts",
                          duration: "1 hour/level",
                          savingThrow: "None", sr: false,
                          summary: "You quickly absorb the knowledge in the target, which can be any assortment of books, scrolls, or other texts.",
                          desc: "You quickly absorb the knowledge in the target, which can be any assortment of books, scrolls, or other texts. During the spell’s duration, you can search the texts and immediately find the most relevant information regarding any topic the collection holds, potentially including singling out spellbooks or scrolls containing individual or particular types of spells. You can attempt Knowledge checks related to the collection’s topics as if you were trained in those skills, and you know whether the collection contains any information about which you failed a Knowledge check in the past 24 hours. The bonus on Knowledge checks granted by the collection of texts (if any) increases by 2. Additionally, you always deplete the maximum number of knowledge points from a library whenever you succeed at a Research check ( Pathfinder RPG Ultimate Intrigue 148 ) using the target texts while this spell is in effect, even if completing the Research check takes longer than this spell lasts. Once during the duration of this spell, for a number of minutes equal to your caster level, you can also speak with the texts about anyone who has read or handled them previously, as per",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Daggermark's Exchange", school: "Transmutation", levels: "alchemist 2, arcanist 3, cleric 3, druid 2, hunter 2, investigator 2, occultist 3, oracle 3, psychic 3, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a dose of poison)",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "You swallow a dose of poison with no effect and regurgitate a dose of a different poison (your choice) into the old container (or another you have on hand).",
                          desc: "You swallow a dose of poison with no effect and regurgitate a dose of a different poison (your choice) into the old container (or another you have on hand). Attempt a Craft (alchemy) check against the new poison’s DC. If you succeed, you create a dose of your chosen poison. If you fail, the poison you regurgitate is inert. If you roll a natural 1, you expose yourself to the original poison (although you remain immune to that poison if you have venom immunity or a similar class feature or ability). The new poison’s price must be the same as or less than the original poison’s price.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Diminished Detection", school: "Abjuration", levels: "alchemist 2, arcanist 2, bard 2, investigator 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a piece of wool)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "None", sr: false,
                          summary: "You can avoid being detected when you are on the edges of some divination spells’ ranges.",
                          desc: "You can avoid being detected when you are on the edges of some divination spells’ ranges. Whenever you would normally be within the area of effect of a detection spell (such as detect magic, detect evil , or",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dongun Shaper's Touch", school: "Transmutation", levels: "alchemist 2, arcanist 3, investigator 2, occultist 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "object touched",
                          duration: "concentration, up to 1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You create an alchemical residue on your hands that allows you to reshape any nonmagical, unattended object with hardness 19 or less as though it were clay.",
                          desc: "You create an alchemical residue on your hands that allows you to reshape any nonmagical, unattended object with hardness 19 or less as though it were clay. Objects with hardness 9 or less are like soft clay, allowing you to reshape up to 1 cubic foot per round of effort. Objects with hardness 10 or higher are harder to mold, allowing you to reshape up to 1/4 cubic foot per round. The object retains its new shape for 24 hours before returning to its original shape. This spell does not allow you to reshape a portion of a large object, such as a wall; you must be able to reshape the entire target within the spell’s duration or the spell fizzles and has no effect.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dream Reality", school: "Illusion (Compulsion)", levels: "alchemist 5, arcanist 6, bard 5, cleric 6, investigator 5, mesmerist 5, occultist 5, oracle 6, psychic 6, skald 5, sorcerer 6, warpriest 6, wizard 6",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will disbelief;", sr: true,
                          summary: "You cause the target to perceive the world as if in a dream. When the spell ends, the target forgets all identifying details of events that transpired while the spell lasted.",
                          desc: "You cause the target to perceive the world as if in a dream. When the spell ends, the target forgets all identifying details of events that transpired while the spell lasted. The memories were not taken from it; rather, its mind never recorded the memories as real in the first place. If modify memory is cast upon it before the spell ends, the target remembers these events. A target under the effect of",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Implant Urge", school: "Enchantment (Compulsion)", levels: "arcanist 1, bard 1, medium 1, mesmerist 1, skald 1, sorcerer 1, spiritualist 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 hour/level",
                          savingThrow: "Will partial;", sr: true,
                          summary: "You make the target unconsciously desire a goal you define when you cast this spell.",
                          desc: "You make the target unconsciously desire a goal you define when you cast this spell. The DC of any Diplomacy check to ask the target to act in a way that it believes will lead it toward that goal decreases by 5. The target takes a –2 penalty on saving throws against mind-affecting effects that compel it to act in a way that it believes will lead it toward that goal. Spells that reveal the target’s goals or thoughts reveal the implanted urge as the target’s most important goal and the target does not register as thinking of anything else as long as it is presented with the focus of its urge or a way to move toward its goal. Anyone studying the target’s thoughts can notice the implanted nature of this urge with a successful caster level check.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Inveigle Monster", school: "Enchantment (Charm)", levels: "arcanist 4, bard 3, mesmerist 3, psychic 3, skald 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, M (a drop of alcohol)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as inveigle person except as noted above.",
                          desc: "This spell functions as inveigle person except as noted above.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Inveigle Person", school: "Enchantment (Charm)", levels: "arcanist 4, bard 3, mesmerist 3, psychic 3, skald 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, M (a drop of alcohol)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You cause the target to become extremely amiable. The target treats all other living creatures as if it were friendly toward them.",
                          desc: "You cause the target to become extremely amiable. The target treats all other living creatures as if it were friendly toward them. Any overtly hostile or harmful act toward the target by any living creature ends the spell. An inveigled creature attempts to fulfill multiple requests in the same manner as it would favors for its true friends. If such requests conflict, it usually chooses the more reasonable option—overriding this preference requires succeeding at an opposed Charisma check, as if under multiple forms of mental control ( Pathfinder RPG Core Rulebook 209 ).",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Oath of Anonymity", school: "Illusion (Glamer)", levels: "arcanist 0, bard 0, inquisitor 0, medium 0, paladin 1, skald 0, sorcerer 0, wizard 0",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "You swear an oath not to reveal your identity, magically preventing anyone from discovering it so long as you avoid revealing your face or other easily identifiable features.",
                          desc: "You swear an oath not to reveal your identity, magically preventing anyone from discovering it so long as you avoid revealing your face or other easily identifiable features. The spell distorts your voice and subtly alters your body language and the appearance of your gear and any animals you use, whether as companions, mounts, or otherwise. This spell does not make you appear to be a different creature type, nor does it change your apparent height or body type. This spell provides you with a +10 bonus on Disguise checks to conceal your identity, but not on checks to impersonate anyone in particular. This spell distorts the appearance of your voice, gear, and animals in the same way each time, essentially creating an alternate persona that can be recognized by those who have observed it before.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rotting Alliance", school: "Necromancy", levels: "cleric 8, druid 8, inquisitor 6, occultist 6, oracle 8, witch 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature/level, no two of which can be more than 60 feet apart",
                          duration: "permanent",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You curse two or more creatures to sicken and waste away while in each others’ company. Each target that fails a Fortitude save becomes cursed with a wasting sickness.",
                          desc: "You curse two or more creatures to sicken and waste away while in each others’ company. Each target that fails a Fortitude save becomes cursed with a wasting sickness. The disease has no onset period, and those who contracted it must attempt a second Fortitude save immediately. A target that fails this second saving throw takes 1d6 points of Constitution damage and 1d6 points of Charisma damage. Every day thereafter, each target that was within 100 feet of another target during the previous 24 hours takes 1d6 points of Constitution damage and 1d6 points of Charisma damage (reroll to determine the specific amount of damage each day). A successful Fortitude save negates the damage for that day only. A target cannot be healed of damage from this disease (naturally or by magic) while the target is within 100 feet of another target. If healed of such damage while away from other targets, a target might take damage again the day they reconvene. This disease is a curse, and can never be cured by successful saving throws. The spell can be ended on a single target only with a successful casting of remove curse followed by a successful casting of",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sealed Sending", school: "Conjuration (Creation)", levels: "arcanist 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "unlimited", area: "one nonmagical parchment with a written message", targets: "",
                          duration: "1 hour/level or until discharged",
                          savingThrow: "none (harmless);", sr: false,
                          summary: "You create a scroll bearing a message in any language you can speak, with a maximum length of 50 words.",
                          desc: "You create a scroll bearing a message in any language you can speak, with a maximum length of 50 words. The scroll magically appears anywhere you have viewed at least once on the same plane of existence you are on now. When the spell ends or when the message has been read completely, the scroll disintegrates, leaving no trace. This spell cannot be detected, traced, or blocked by any spell of a lower level.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Searching Shadows", school: "Illusion (Shadow)", levels: "arcanist 2, bard 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "shadows in a 10-foot-radius spread", targets: "",
                          duration: "concentration",
                          savingThrow: "Reflex partial;", sr: true,
                          summary: "Strands of shadow probe an area, searching for a creature or object you specify by shape, size, or texture.",
                          desc: "Strands of shadow probe an area, searching for a creature or object you specify by shape, size, or texture. Each round, the shadows attempt a Perception check on the squares they touch with a total bonus equal to your caster level + your Charisma or Intelligence modifier, whichever is higher. You can move the shadows up to 30 feet or change the search criteria as part of concentrating on the spell. Whenever the shadows come into contact with a creature with spell resistance, you must attempt a caster level check to overcome its spell resistance. If you fail, the spell ends. When the shadows locate a desired item or creature, you are aware of its shape and size and can order the shadows to try to seize it. If the shadows are seeking a creature, the area they cover becomes difficult terrain for that creature, and the creature must succeed at a Reflex saving throw or become entangled and unable to move. Changing the criteria of the creature or object sought or moving the shadows away from an entangled target frees it. If the target is an object carried by a creature, the shadows attempt a disarm or steal APG combat maneuver check as appropriate, using the same modifier as for their Perception check. The shadows can pick up and move unattended, nonmagical objects that weigh up to 5 pounds.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Seeds of Influence", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 3, medium 3, mesmerist 3, psychic 4, skald 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "S, M (a rose)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You leave a magical trace in the mind of a creature with an attitude of at least indifferent toward you.",
                          desc: "You leave a magical trace in the mind of a creature with an attitude of at least indifferent toward you. The target takes a cumulative –2 penalty on its Will save to negate the spell for each step by which its attitude is better than indifferent. The target takes a –2 penalty on saving throws against divination spells you cast. You can target that creature with mind-affecting spells of a spell level lower than seeds of influence as if those spells were modified by Enlarge Spell (the modified spell doesn’t take longer to cast and doesn’t use a higher-level spell slot). Whenever the target succeeds at a saving throw against a divination or mind-affecting spell you cast,",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Seeds of Influence, Greater", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 3, medium 3, mesmerist 3, psychic 4, skald 3, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "S, M (a rose)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as seeds of influence , except that if the target is protected by a spell that grants immunity, spell resistance, or a saving throw bonus against a divination or mind-affecting…",
                          desc: "This spell functions as seeds of influence , except that if the target is protected by a spell that grants immunity, spell resistance, or a saving throw bonus against a divination or mind-affecting spell you cast on the target, you can attempt caster level checks to dispel each such effect before applying the effects of those protections against the spell. The DC of the caster level check to dispel each effect is equal to 11 + the effect’s caster level. Such spells cast on the target while",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Seek Shelter", school: "Enchantment (Compulsion)", levels: "arcanist 5, bard 4, cleric 5, inquisitor 4, mesmerist 4, oracle 5, psychic 5, skald 4, sorcerer 5, summoner 4, summoner (unchained) 4, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "all non-hostile creatures with 4 or fewer HD in a 30-ft.-radius spread",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You send an empathic urge to seek safety both as fast as possible and in an orderly fashion, and to remain in such secure locations for the duration of the spell.",
                          desc: "You send an empathic urge to seek safety both as fast as possible and in an orderly fashion, and to remain in such secure locations for the duration of the spell. Targets with 5 or more Hit Dice are unaffected. When you cast the spell, you can designate a fortified location—either general (such as “indoors”) or specific (such as “the local garrison”)—for the targets to attempt to reach. If you do not specify a location for the targets to retreat to, they attempt to find safety to the best of their ability. Affected creatures defend themselves normally but attack only if provoked.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Substitute Trail", school: "Transmutation", levels: "druid 4, hunter 4, ranger 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "unlimited", area: "", targets: "1 creature/level; see text",
                          duration: "1 day/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell can affect any creatures with which you interacted in the last 24 hours.",
                          desc: "This spell can affect any creatures with which you interacted in the last 24 hours. You alter the trails left by the chosen creatures, making it appear that another creature with which you are familiar left the trail instead (you must have met the creature with which you are familiar). If a tracker exceeds the DC of the skill check to follow the trail by an amount equal to your caster level, the tracker recognizes that the trail has been manipulated by this spell, although it cannot see the trail’s true nature unless it uses magical means, such as true seeing .",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Transfiguring Touch", school: "Transmutation", levels: "alchemist 5, arcanist 6, investigator 5, occultist 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (alchemical reagents worth 1 gp or the value of the created material, whichever is more)",
                          range: "touch", area: "", targets: "object touched, up to 1 cubic foot per level",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You create an alchemical residue on your hands that gradually converts a touched, unattended, nonmagical object into iron, paper, or wood (your choice).",
                          desc: "You create an alchemical residue on your hands that gradually converts a touched, unattended, nonmagical object into iron, paper, or wood (your choice). The spell converts at most 1 cubic foot of material per caster level you have; if the object is larger than the maximum volume, the transfiguration stops once that amount of matter has been converted. If your caster level is at least 14th, you can opt to create lead. If your caster level is at least 19th, you can opt to create precious metals. If you create a precious metal, you must use an equivalent value of alchemical reagents as a material component (5 sp per pound of copper, 5 gp per pound of silver, 50 gp per pound of gold, 500 gp per pound of platinum).",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("True Skill", school: "Divination", levels: "alchemist 1, arcanist 1, bard 1, investigator 1, magus 1, medium 1, psychic 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "When faced with an important situation, you grant yourself a magical edge to ensure your success. When casting this spell, select one skill for which you can attempt a skill check.",
                          desc: "When faced with an important situation, you grant yourself a magical edge to ensure your success. When casting this spell, select one skill for which you can attempt a skill check. The next time you attempt a skill check using the selected skill (before the spell’s duration ends), you gain an insight bonus on the check equal to 1/2 your caster level (minimum 1).",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Violent Accident", school: "Transmutation", levels: "cleric 2, mesmerist 2, occultist 2, oracle 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature",
                          duration: "1 day or until discharged",
                          savingThrow: "Reflex half; see text;", sr: true,
                          summary: "You curse the target to suffer a violent accident within the next 24 hours. You have no control over the form the accident takes or when it strikes.",
                          desc: "You curse the target to suffer a violent accident within the next 24 hours. You have no control over the form the accident takes or when it strikes. The target can avoid being cursed with spell resistance when you cast the spell, but otherwise receives no saving throw. Regardless of the accident’s nature, it is magically empowered to deal an amount of damage equal to 1d8 × your caster level (maximum 5d8 points of damage), and the damage is of a type appropriate to the source of damage (such as fire for an explosion or bludgeoning for a falling object). When the accident occurs, the target can attempt a Reflex saving throw to reduce the damage by half. Although others might be surprised or inconvenienced by the accident, it damages only the target.",
                          source: "Inner Sea Intrigue", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wandering Trail", school: "Transmutation", levels: "druid 6, hunter 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "1 mile/level", area: "", targets: "up to one creature/level within 180 feet",
                          duration: "1 day/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You cause the trail left by the targets within range to automatically reroute, potentially taking any course within the area.",
                          desc: "You cause the trail left by the targets within range to automatically reroute, potentially taking any course within the area. Your modification of the trail within the spell’s area can result in a trail at least half the original length or up to twice the original length. If the trail continues beyond the spell’s range, you must leave it connecting at that point on the edge of the spell’s range. If a tracking creature exceeds the DC of the skill check to follow the trail by an amount equal to your caster level, the tracker recognizes that the trail has been manipulated by this spell, although it cannot see the trail’s true nature unless it uses magical means, such as true seeing .",
                          source: "Inner Sea Intrigue", isPremium: true),

                    // // MARK: - Inner Sea Intrigue, Pathfinder #16: Endless Night
        )
        try await db.insertSpell(
        .make("Recorporeal Incarnation", school: "Necromancy", levels: "arcanist 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "10 minutes", components: "V, S, F (a gem worth at least 250 gp)",
                          range: "touch", area: "", targets: "one willing living creature and one humanoid corpse",
                          duration: "1 week/level",
                          savingThrow: "none;", sr: false,
                          summary: "Recorporeal incarnation effectively replaces the target living creature’s body with that of the target corpse.",
                          desc: "Recorporeal incarnation effectively replaces the target living creature’s body with that of the target corpse. The target corpse must be fresh—either dead for no more than 24 hours or appropriately preserved by an effect such as gentle repose . While casting the spell, you must remain in contact with the corpse while touching the living target with the focus item. As the spell is cast, the dead body’s flesh unravels like ribbons to sheathe the living target, who must be within one size category of the corpse. While the spell is in effect, the focus item must remain within 30 feet of the target living creature. The living target gains the physical appearance and size of the corpse, and gains its abilities as defined in",
                          source: "Inner Sea Intrigue, Pathfinder #16: Endless Night", isPremium: true),

                    // // MARK: - Inner Sea Magic
        )
        try await db.insertSpell(
        .make("Aroden's Spellbane", school: "Abjuration", levels: "arcanist 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, F (cold iron scepter worth at least 1,000 gp)",
                          range: "10 ft.", area: "10-ft.-radius emanation, centered on you", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "One of many spells originally created by the Last Azlanti before he became a god, Aroden’s spellbane creates an area within which spells selected by you simply do not function.",
                          desc: "One of many spells originally created by the Last Azlanti before he became a god, Aroden’s spellbane creates an area within which spells selected by you simply do not function. Select one spell per five caster levels at the time of casting. The spells selected cannot be changed after the spell is cast.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bladed Dash", school: "Transmutation", levels: "bard 2, magus 2, skald 2",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "Both Quantium and Jalmeray claim that this spell was born in their arcane universities.",
                          desc: "Both Quantium and Jalmeray claim that this spell was born in their arcane universities. Regardless of the spell’s origin, it quickly spread throughout the Inner Sea and beyond as spellcasting sword-fighters learned of its existence. When you cast this spell, you immediately move up to 30 feet in a straight line any direction, momentarily leaving a multi-hued cascade of images behind you. This movement does not provoke attacks of opportunity. You may make a single melee attack at your highest base attack bonus against any one creature you are adjacent to at any point along this 30 feet. You gain a circumstance bonus on your attack roll equal to your Intelligence or Charisma modifier, whichever is higher. You must end the bonus movement granted by this spell in an unoccupied square. If no such space is available along the trajectory, the spell fails. Despite the name, the spell works with any melee weapon. Bladed Dash, Greater",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bladed Dash, Greater", school: "Transmutation", levels: "bard 2, magus 2, skald 2",
                          castingTime: "1 standard action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions like bladed dash , save that you can make a single melee attack against every creature you pass during the 30 feet of your dash.",
                          desc: "This spell functions like bladed dash , save that you can make a single melee attack against every creature you pass during the 30 feet of your dash. You cannot attack an individual creature more than once with spell.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blast Barrier", school: "Transmutation", levels: "arcanist 3, druid 4, hunter 3, ranger 3, redmantisassassin 3, sorcerer 3, witch 4, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (handful of snow, earth, or gravel)",
                          range: "close (25 ft. + 5ft./2 levels)", area: "1-ft.-thick wall up to 10 ft. high by 20 ft. wide", targets: "",
                          duration: "concentration, up to 1 round/2 levels",
                          savingThrow: "Reflex half (see below);", sr: true,
                          summary: "Originally used by the winter witches on the field of battle in the early days of Irrisen, blast barrier has entered the oral traditions of many northern barbarian tribes as legends of winter witches…",
                          desc: "Originally used by the winter witches on the field of battle in the early days of Irrisen, blast barrier has entered the oral traditions of many northern barbarian tribes as legends of winter witches possessing powers to bend the very ground of a battlefield to their will.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Call Weapon", school: "Transmutation", levels: "bard 1, hunter 1, magus 1, ranger 1, skald 1",
                          castingTime: "1 swift action", components: "V, S",
                          range: "30 feet", area: "", targets: "one melee weapon wielded by an ally",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "This spell first rose to prominence among the elves of Kyonin in the war to retake their ancestral land from the demon lord Treerazer and his minions.",
                          desc: "This spell first rose to prominence among the elves of Kyonin in the war to retake their ancestral land from the demon lord Treerazer and his minions. Elite units of elven magi entered battle with this spell prepared to shield fallen comrades or stand firm against fell foes. As the elven presence returned to the world, this spell spread throughout the Inner Sea and beyond. When you cast this spell, you cause a weapon wielded by an ally within 30 feet to telekinetically fly across the space between you and into your open hand. This extra energy persists in the weapon for the rest of the round, granting you a +2 circumstance bonus on attack rolls and weapon damage rolls made during the same round you cast this spell. If the ally targeted for this spell is unwilling to give up her weapon, the spell fails. An unconscious or dying ally is considered a “willing” target so long as the weapon to be called is still in contact with the ally’s body.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Crusader's Edge", school: "Transmutation", levels: "cleric 4, inquisitor 4, oracle 4, paladin 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, M (dried blood from an evil outsider, sprinkled on the weapon)",
                          range: "touch", area: "", targets: "melee weapon touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates;", sr: false,
                          summary: "This spell was created by the paladins of the Mendevian Crusades, and co-opted by inquisitors and rangers dedicated to tracking and fighting demons, devils, and other evil extraplanar creatures.",
                          desc: "This spell was created by the paladins of the Mendevian Crusades, and co-opted by inquisitors and rangers dedicated to tracking and fighting demons, devils, and other evil extraplanar creatures. When you cast this spell on a melee weapon you imbue it with a powerful holy energy, granting the weapon the bane weapon quality against evil outsiders. Furthermore, whenever you score a successful critical hit against an outsider with the evil subtype, you not only deal normal critical damage with the weapon but also nauseate the outsider for 1d3 rounds—the outsider can reduce this nauseated condition to sickened for 1 round with a successful Fortitude save.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Eaglesoul", school: "Conjuration (Summoning)", levels: "cleric 6, oracle 6, paladin 4, summoner 5, summoner (unchained) 5, warpriest 6",
                          castingTime: "1 standard action", components: "V, S, M (vellum inscribed with good outsider’s name)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level (see below)",
                          savingThrow: "None", sr: false,
                          summary: "As the Inner Sea’s bravest men and women answered the call of what became the Second Mendevian Crusade, constructing the wardstones that eventually kept the brutal chaos of the Worldwound at bay,…",
                          desc: "As the Inner Sea’s bravest men and women answered the call of what became the Second Mendevian Crusade, constructing the wardstones that eventually kept the brutal chaos of the Worldwound at bay, they realized that they needed help beyond traditional magics.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Eldritch Conduit", school: "Transmutation", levels: "arcanist 2, redmantisassassin 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a small mirror)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one creature/level, no two of which can be more than 30 ft. apart", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Originally created by a disciple of the archwizard Nex, this spell was used to turn enemy soldiers in Geb’s undead armies into conduits capable of blasting spell energy back into the far reaches of…",
                          desc: "Originally created by a disciple of the archwizard Nex, this spell was used to turn enemy soldiers in Geb’s undead armies into conduits capable of blasting spell energy back into the far reaches of the Gebite lines. Since then, it has become a favorite among arcane casters with an understanding of battlefield tactics. If the target of this spell fails to resist its effects with a Will save, he becomes outlined in faint radiance, as if via faerie fire . At any time before the",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Eldritch Conduit, Greater", school: "Transmutation", levels: "arcanist 2, redmantisassassin 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a small mirror)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one creature/level, no two of which can be more than 30 ft. apart", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like eldritch conduit save for the differences listed above and that the target must be within medium range (100 ft. + 10 ft./level) in order for you to use the conduit.",
                          desc: "This spell functions like eldritch conduit save for the differences listed above and that the target must be within medium range (100 ft. + 10 ft./level) in order for you to use the conduit. Using a creature as a conduit for a spell ends the greater eldritch conduit effect on that creature, but does not end the effect for other eldritch conduits.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fleshcurdle", school: "Transmutation (Polymorph)", levels: "arcanist 2, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (scrap of pickled flesh)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living or undead creature",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You warp the target creature’s flesh, discoloring it and causing it to become misshapen and impairing its function.",
                          desc: "You warp the target creature’s flesh, discoloring it and causing it to become misshapen and impairing its function. When you cast this spell, you must choose one of three types of effects to inflict on the target—movement, attacks, or defense. Attacks : One of the creature’s natural attacks takes a –2 penalty on attack and damage rolls, only scores a critical hit on a natural 20, and only deals ×2 damage on a confirmed critical hit.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Forceful Strike", school: "Evocation", levels: "cleric 4, inquisitor 4, magus 4, oracle 4, paladin 4, warpriest 4",
                          castingTime: "1 swift action", components: "V, S",
                          range: "touch or reach of melee weapon", area: "", targets: "1 creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You cast this spell as you strike a creature with a melee weapon, unarmed strike, or natural attack to unleash a concussive blast of force.",
                          desc: "You cast this spell as you strike a creature with a melee weapon, unarmed strike, or natural attack to unleash a concussive blast of force. You deal normal weapon damage from the blow, but also deal an additional amount of force damage equal to 1d4 points per caster level (maximum of 10d4). The force of the blow may be enough to knock the target backward as well. To determine if the target is pushed back, make a combat maneuver check with a bonus equal to your caster level to resolve a bull rush attempt against the creature struck. You do not move as a result of this free bull rush, but it can push the target back if it defeats the target’s CMD. A successful Fortitude save halves the force damage and negates the bull rush effect.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Geb's Hammer", school: "Necromancy", levels: "arcanist 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a leather glove coated in dried embalming herbs)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "sphere of undead remains composed of 3 or more destroyed undead", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: true,
                          summary: "Centuries of war with Nex trained the necromancers of Geb to extract every last resource from the mindless undead that make up most of Geb’s rank-and-file troops.",
                          desc: "Centuries of war with Nex trained the necromancers of Geb to extract every last resource from the mindless undead that make up most of Geb’s rank-and-file troops. When you cast this spell, you draw the remains of nearby destroyed undead together and fuse them into a mass of flesh and bone you can then hurl at any foes within range. Three corpses within range of the spell are required for the spell to function. Geb’s hammer can be directed to attack one foe within range per round as a move action. It uses your caster level as its base attack bonus, modified by your Intelligence, Wisdom, or Charisma modifier (whichever one is highest). On a hit, the corpse hammer deals 1d6 points of damage per three caster levels (to a maximum of 6d6 points of damage).",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Geniekind", school: "Transmutation (Polymorph)", levels: "arcanist 5, cleric 5, druid 5, hunter 5, oracle 5, sorcerer 5, summoner 5, summoner (unchained) 5, warpriest 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of dust, embers, wind-blown sand or drops of water, depending on the genie type)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Keleshite wizards and clerics have always sought to emulate the genies that they bind.",
                          desc: "Keleshite wizards and clerics have always sought to emulate the genies that they bind. The geniekind spell is the result of attempts to gain the power and influence of these proud outsiders without entirely forsaking the caster’s own form. Upon casting this spell, you must choose one type of genie to transform into, selecting from djinni, efreeti, marid, or shaitan. You retain your basic physical appearance but shift in some way to become more akin to the genie type you chose. While under the effects of",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hungry Darkness", school: "Evocation", levels: "arcanist 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a bat’s tooth)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "60-ft.-radius spread", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell creates an area of intense blackness, as deeper darkness , but filled with unseen chewing teeth and ravenous maws. Any creatures beginning its turn within the",
                          desc: "This spell creates an area of intense blackness, as deeper darkness , but filled with unseen chewing teeth and ravenous maws. Any creatures beginning its turn within the",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hunter's Lore", school: "Divination", levels: "hunter 2, inquisitor 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S, M (a scrap of paper torn from a book about monsters)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "Inquisitors and rangers alike learned long ago that knowledge of an enemy grants power over that enemy.",
                          desc: "Inquisitors and rangers alike learned long ago that knowledge of an enemy grants power over that enemy. This spell was created so that almost any enemy could have its vulnerabilities known and exploited. For the duration of this spell you may spend a full-round action to take 20 on any Knowledge skill checks made to identify a foe’s weaknesses, provided the foe in question is within line of sight and provided that you have at least one rank in that particular Knowledge skill. This spell allows you to make untrained Knowledge checks to determine a monster’s weaknesses as if you had ranks in that skill, but you cannot take 20 on these checks.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Impart Mind", school: "Transmutation", levels: "arcanist 6, cleric 6, magus 5, oracle 6, sorcerer 6, warpriest 6, wizard 6",
                          castingTime: "2 rounds", components: "V, S, M (diamond dust worth at least 1,000 gp)",
                          range: "touch", area: "", targets: "permanent nonintelligent magic item touched",
                          duration: "1 hour/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell grants the target magic item temporary intelligence by siphoning off a tiny portion of your own mind to infuse the object.",
                          desc: "This spell grants the target magic item temporary intelligence by siphoning off a tiny portion of your own mind to infuse the object. Only permanent magic items may be enhanced by this spell—one-use items and charged items cannot be affected by impart mind . Intelligent magic items cannot be affected by",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Khain's Army", school: "Necromancy", levels: "arcanist 5, cleric 5, oracle 5, sorcerer 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (a handful of ghoul’s teeth)",
                          range: "5 feet", area: "1d4+1 ghouls and 1 ghast", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Fortitude half (see text);", sr: false,
                          summary: "Originally created by the priest-king of Nemret Noktoria, the ghoul Kortash Khain, for use by his minions to bolster their forces in battles against their enemies, Khain’s army has become a favorite…",
                          desc: "Originally created by the priest-king of Nemret Noktoria, the ghoul Kortash Khain, for use by his minions to bolster their forces in battles against their enemies, Khain’s army has become a favorite of many necromancers throughout Osirion and beyond. By scattering a handful of ghoul’s teeth across the ground, you cause 1d4+1 ghouls led by a single ghast to rise up from the ground around you. The ghouls and their ghast leader must appear in squares adjacent to you, but after that they follow your spoken commands unerringly. If one of the ghouls is destroyed while the spell’s duration is still in effect, it bursts into a spray of rotten flesh and necromantic energy that deals 1d6 points of negative energy damage to all adjacent targets—this energy heals undead targets as typical for negative energy damage. If the ghast is destroyed in this manner, it deals twice as much negative energy damage as a ghoul. A successful Fortitude save halves the negative energy damage dealt. When this spell’s duration expires, any remaining undead created by this spell crumble apart into dust and blow away without dealing any additional negative energy damage.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Kiss of the First World", school: "Transmutation", levels: "bard 4, druid 4, hunter 4, skald 4",
                          castingTime: "1 standard action", components: "V, S, M (diamond dust worth 100 gp)",
                          range: "touch", area: "living or undead creature touched", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell—a favorite of fey spellcasters—is traditionally bestowed with a kiss, though all that’s really required to gift someone with a kiss of the First World is a touch.",
                          desc: "This spell—a favorite of fey spellcasters—is traditionally bestowed with a kiss, though all that’s really required to gift someone with a kiss of the First World is a touch. This spell infuses a living creature with a surge of positive energy from the First World, filling the target with the raw energies of life. The exact effects of this spell vary, depending on the nature of the creature touched. Constructs are immune to the effects of this spell.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Light of Iomedae", school: "Conjuration", levels: "cleric 3, inquisitor 3, oracle 3, paladin 2, warpriest 3",
                          castingTime: "1 minute", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "all undead in a 10-foot-radius spread",
                          duration: "1 minute/level",
                          savingThrow: "Will partial;", sr: true,
                          summary: "With this spell, you create shafts of blue light that illuminate all undead creatures in the area. Affected undead take a –20 penalty on all Stealth checks.",
                          desc: "With this spell, you create shafts of blue light that illuminate all undead creatures in the area. Affected undead take a –20 penalty on all Stealth checks. Invisible undead are not made visible by this effect, but the light does make it easy to pinpoint the exact squares in which such undead are located (they still retain the 50% miss chance granted by invisibility). The light of Iomedae increases light levels by one step in a 5-foot radius around an affected undead creature. Once an undead is affected, it remains illuminated as long as remains within the spell’s range, even if it leaves the spell’s original radius, until the spell’s duration ends. Affected undead must also make a Will save when they are first illuminated by the light of Iomedae. Those who fail this save lose all benefits of channel resistance and take a –2 penalty on all saving throws made against positive energy effects.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Martial Marionette", school: "Enchantment (Compulsion)", levels: "bard 3, skald 3",
                          castingTime: "1 standard action", components: "V, S, M (a marionette’s crossbar)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "When you cast this spell, you take partial control of an opponent’s limbs, making it difficult for him to attack you.",
                          desc: "When you cast this spell, you take partial control of an opponent’s limbs, making it difficult for him to attack you. Any attacks made against you by the target of the spell take a –2 penalty due to the erratic and random motions the spell forces onto any efforts to strike you. In addition, any creature suffering the effects of this spell cannot flank you and cannot aid other opponents in flanking you. As long as the affected creature is adjacent to you, you can cause the creature’s limbs to flail into the path of other attacks against you as an immediate action. This provides partial cover against that attack, granting you a +2 bonus to AC and a +1 bonus on Reflex saves.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Martyr's Bargain", school: "Transmutation", levels: "cleric 2, oracle 2, paladin 2, warpriest 2",
                          castingTime: "1 immediate action", components: "V",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "Among the faithful followers of the gods of purity—whether they be the servants of Desna in Nidal, zealous followers of Milani struggling against Cheliax’s government, paladins of Iomedae fighting…",
                          desc: "Among the faithful followers of the gods of purity—whether they be the servants of Desna in Nidal, zealous followers of Milani struggling against Cheliax’s government, paladins of Iomedae fighting against the horrors of the Worldwound, or simply those that fight evil the world over— martyr’s bargain represents true faith and true sacrifice. You cast this spell as an immediate action when you are subject to a spell or spell-like ability that deals hit point damage, after attack rolls and saving throws have been rolled but before the damage itself is determined. The damage dealt by the spell and any related effects are then delayed for you (and you only) for a number of rounds equal to your caster level. At the end of that time (or immediately if",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Music of the Spheres", school: "Conjuration (Healing)", levels: "bard 5, cleric 6, oracle 6, skald 5, warpriest 6",
                          castingTime: "1 standard action", components: "V, S, M (a stick of incense treated with special balms)",
                          range: "20 ft.", area: "20-ft.-radius spherical emanation, centered on you", targets: "",
                          duration: "concentration, up to 1 round per level",
                          savingThrow: "none;", sr: true,
                          summary: "As any scholar of Desnan lore or astrologer can tell you, the music of the spheres is the harmonic constant that plays under and through all of reality.",
                          desc: "As any scholar of Desnan lore or astrologer can tell you, the music of the spheres is the harmonic constant that plays under and through all of reality. It is this constant song, this otherworldly music, that keeps the laws of reality constant and the connections between the planes of existence strong. With this spell, one can amplify the underlying music of the spheres in the spell’s area of effect to infuse yourself and all creatures within 20 feet of you, friend and foe alike. All creatures that begin their turn within the area of this spell’s effect gain fast healing 5, resistance 10 to all energy types, and a +3 sacred bonus on all saving throws against poison and disease. Any creature that enters the area of effect does not gain the benefits of the music of the spheres until it begins its turn in that area. You must maintain concentration on the amplification of the music or the effects immediately end, but you can move around to prevent enemies from gaining the benefits of this spell.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Orchid's Drop", school: "Transmutation", levels: "alchemist 3, investigator 3",
                          castingTime: "1 standard action", components: "V, S, M (a much-diluted drop of sun orchid nectar worth 500 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 hour/level",
                          savingThrow: "None", sr: false,
                          summary: "Alchemists have tried for centuries to recreate Artokus Kirran’s feat of genius that created the sun orchid elixir .",
                          desc: "Alchemists have tried for centuries to recreate Artokus Kirran’s feat of genius that created the sun orchid elixir . Although they have yet to unlock the elixir’s exact formula, their efforts have not been entirely wasted. One by-product of their experiments was the",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pugwampi's Grace", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a pugwampi’s hair)",
                          range: "short (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature (see below)",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Hated by adventurers throughout the Inner Sea region, the gremlins known as pugwampis infect those around them with a malignant form of unluck—an effect that this spell emulates.",
                          desc: "Hated by adventurers throughout the Inner Sea region, the gremlins known as pugwampis infect those around them with a malignant form of unluck—an effect that this spell emulates. If the target fails its Will save, it becomes infused with the so-called “grace of the pugwampi.” A creature affected by this spell must roll two d20s whenever a situation calls for a d20 roll (such as an attack roll, a skill check, or a saving throw) and must use the lower of the two results generated. As with the aura shed by actual pugwampies, this spell has no effect on animals, gremlins, or gnolls. The effects of this spell are negated as long as a target gains any sort of luck bonus to a d20 roll (such as those granted by a luckstone or",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadow Barbs", school: "Illusion (Shadow)", levels: "arcanist 4, cleric 4, inquisitor 4, oracle 4, redmantisassassin 4, sorcerer 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a single link from a spiked chain)",
                          range: "0 ft.", area: "spiked chain-like shadowy weapon", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will negates (see text);", sr: false,
                          summary: "This spell, developed originally by priests of Zon-Kuthon in Nidal’s early years, has recently crossed the boundary between divine and arcane magic.",
                          desc: "This spell, developed originally by priests of Zon-Kuthon in Nidal’s early years, has recently crossed the boundary between divine and arcane magic. Although it still bears some of the stigma of being associated with the Midnight Lord, it’s rapidly becoming a favorite spell of magi and other martially minded arcane spellcasters. When you cast this spell, you create a shadowy spiked chain that shimmers and pulses with darkness. The chain exists as long as you carry it; if you ever drop the chain, give it to another, or are disarmed, it immediately vanishes and the spell’s duration ends. The chain radiates darkness in a 10-foot-radius spread around you, reducing the illumination level in this area by one step, but not below the level of dim light.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shining Cord", school: "Evocation", levels: "magus 3",
                          castingTime: "1 standard action", components: "V, S, M (a small length fine of silver chain worth 100 gp)",
                          range: "30 ft.", area: "", targets: "1 creature",
                          duration: "1 round/level or instantaneous (see below)",
                          savingThrow: "Fortitude partial (see below);", sr: true,
                          summary: "When you cast this spell, you make a ranged touch attack against a single opponent within 30 feet.",
                          desc: "When you cast this spell, you make a ranged touch attack against a single opponent within 30 feet. If you hit, a thin silver strand extends from your body to its, forming a connection that allows you to anticipate its actions. For the duration of the spell, you receive a +5 insight bonus on all Perception and Sense Motive checks opposed by the target. You gain a +5 insight bonus on all Spellcraft checks made to identify your opponent’s spell as part of a counterspelling attempt. Finally, you gain a +2 dodge bonus to your AC against attacks made against you by the target. Lastly, if either you or the target moves more than 30 feet away from the other, the cord crackles with a surge of light and sends a blast of force along its length to the other end. This blast deals 1d6 points of damage per two caster levels (maximum 10d6) and stuns the one who moved out of range for 1 round—a successful Fortitude save halves the damage and negates the stun effect. This blast ends the spell and severs the connection between you and your target. Although the",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Siphon Magic", school: "Abjuration", levels: "arcanist 5, cleric 5, oracle 5, sorcerer 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a coiled length of copper wire wrapped around the palm)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell attempts to transfer a magical effect from a creature you touch to yourself.",
                          desc: "This spell attempts to transfer a magical effect from a creature you touch to yourself. When you touch the creature, siphon magic attempts to end one ongoing spell that has been cast on that creature, as if via a targeted",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Song of Kyonin", school: "Conjuration (Healing)", levels: "bard 4, skald 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to 3 creatures, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level or until performance ends or changes (see text)",
                          savingThrow: "None", sr: false,
                          summary: "Certain elven bards of Kyonin are known for the restorative power of their performances—mostly as a result of this spell.",
                          desc: "Certain elven bards of Kyonin are known for the restorative power of their performances—mostly as a result of this spell. You must have a bardic performance in effect to cast this spell (although this spell is called song of Kyonin , the bardic performance need not be singing). As long as that performance continues, up to 3 creatures affected by the performance gain fast healing 2. When this bardic performance ends or you change to a different bardic performance, the fast healing granted by this spell ends as well, but all creatures affected by this spell heal 1d8 points of damage + 1 point per caster level (maximum +15) and are cured of any of the following conditions: exhausted, fatigued, nauseated, paralyzed, sickened, or stunned.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spell Absorption", school: "Abjuration", levels: "arcanist 5, sorcerer 5, wizard 5",
                          castingTime: "1 round", components: "V, S, M (a prism)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "If you successfully counterspell a 3rd-level or lower level spell (through either dispel magic or normal means) while",
                          desc: "If you successfully counterspell a 3rd-level or lower level spell (through either dispel magic or normal means) while",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spell Absorption, Greater", school: "Abjuration", levels: "arcanist 5, sorcerer 5, wizard 5",
                          castingTime: "1 round", components: "V, S, M (a prism)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as spell absorption , save that you can absorb countered spells of 6th level or lower.",
                          desc: "This spell functions as spell absorption , save that you can absorb countered spells of 6th level or lower.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spellscar", school: "Abjuration", levels: "arcanist 8, cleric 8, oracle 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of sand from the Spellscar Desert)",
                          range: "medium (100 ft. + 10 ft./level)", area: "two 10-ft. cubes per level (S)", targets: "",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This potent spell invokes the same sort of magical devastation that created the Mana Wastes so long ago— albeit on a much more localized (and thankfully temporary) scale.",
                          desc: "This potent spell invokes the same sort of magical devastation that created the Mana Wastes so long ago— albeit on a much more localized (and thankfully temporary) scale. Within the area you choose to affect with spellscar , the terrain takes on a strange pale hue, as if colors were muted. Periodically, ripples of vibrant color wriggle through the terrain. Within this area, any spell, spell-like ability, or magic item activation automatically triggers a primal magic event—a spellcaster can avoid triggering such an event by making a concentration check (DC 15 + twice the spell’s level), but non-spellcasters who activate magic items have no such option. You gain a +4 insight bonus on concentration checks made to avoid triggering primal magic events while within a",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Suppress Primal Magic", school: "Abjuration", levels: "arcanist 4, cleric 4, oracle 4, sorcerer 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of sand from the Spellscar Desert)",
                          range: "10 ft.", area: "10-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "Nexian wizards first created this spell while researching the nature of the Mana Wastes, hoping to create small zones within the magic-starved region where their own spells could still function…",
                          desc: "Nexian wizards first created this spell while researching the nature of the Mana Wastes, hoping to create small zones within the magic-starved region where their own spells could still function reliably. The best the Nexians could manage was this spell—a method to temporarily stabilize magic so that spellcasting within a small area can be accomplished without fear of triggering primal magic events. In the area of effect of this spell, primal magic events cannot be triggered. The emanation grants a +4 circumstance bonus on all saving throws against effects generated by primal magic outside of the spell’s effect that expand into the area. Unfortunately, suppressed primal magic tends to build up around the emanation created by this spell. When suppress primal magic’s duration ends (or when the spell is dispelled), a primal magic event is immediately triggered at the center of the emanation if that point is still in an area where primal magic is active. The CR of this event is equal to the caster level of the recently ended",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Tattoo Potion", school: "Transmutation", levels: "alchemist 2, arcanist 2, bard 2, investigator 2, redmantisassassin 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 minute", components: "V, S, M (a potion to be tattooed, special inks worth 500 gp)",
                          range: "one potion", area: "one spell tattoo", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "When you cast this spell, you mix special tattoo inks into a potion of your choice.",
                          desc: "When you cast this spell, you mix special tattoo inks into a potion of your choice. Once you finish casting tattoo potion , the potion begins bubbling and fizzing—if no one drinks the potion within 1 minute of the spell being cast, the potion bubbles away into vapor and is destroyed. When a potion under the effects of",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Transfer Tattoo", school: "Transmutation", levels: "arcanist 1, bard 1, redmantisassassin 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (tattooing needle)",
                          range: "touch", area: "", targets: "one magic tattoo",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "With this spell, you can transfer one magic tattoo from one creature to another.",
                          desc: "With this spell, you can transfer one magic tattoo from one creature to another. A target that isn’t willing to have his tattoo removed or to receive the transferred tattoo can resist this spell with a Fortitude save—if successful, the transfer fails and the caster of this spell is staggered for 1 round by the backlash of magical energy. A tattoo can be transferred from a dead creature in this manner to a living host, provided the body has been dead no longer than one hour per caster level.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vengeful Comets", school: "Evocation", levels: "arcanist 3, druid 3, hunter 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "1 comet per 4 levels", targets: "",
                          duration: "1 round/level or until completely discharged (see below)",
                          savingThrow: "none;", sr: true,
                          summary: "This spell causes a number of miniature comets (up to one per four caster levels) to orbit in the air above your head.",
                          desc: "This spell causes a number of miniature comets (up to one per four caster levels) to orbit in the air above your head. Bits of snow and cold wind drift down from the orbiting comets, granting you a circumstance bonus equal to the number of comets on all saving throws against fire effects. The actual use for the comets, though, is to make vengeful strikes against foes who dare to target you with offensive spells. As an immediate action whenever you are affected by a spell cast by another creature, you can fire one of your vengeful comets as a bolt of icy retribution (provided the source of the offensive spell is within range of your",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Vex Giant", school: "Transmutation", levels: "hunter 3, ranger 3",
                          castingTime: "1 standard action", components: "V, S, M (a fragment from a Large or larger weapon)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round per level",
                          savingThrow: "None", sr: false,
                          summary: "The giants and their kin have long plagued the peoples of Varisia, particularly the Shoanti of the Storval Plateau.",
                          desc: "The giants and their kin have long plagued the peoples of Varisia, particularly the Shoanti of the Storval Plateau. Among the various tactics and methods the Shoanti have developed to fight against their enemies, this spell is one of the most widespread today. When you cast vex giant , your senses and reflexes become particularly honed against a single target within 60 feet, provided the target is at least one size category larger than you. You may select your focused foe as a free action when you cast this spell—switching your focus to a different foe within 60 feet is a move action. If a foe moves beyond 60 feet from you, you lose your focus on that foe, although you may regain it by moving within 60 feet and spending a move action. Although the name of the spell is vex giant, it works equally well on any foe that’s at least one size category larger than you. Against a foe you are focused on, you do not provoke attacks of opportunity by moving through their threatened area. Additionally, the first successful melee attack you make against the foe in a round deals an additional 1d6 points of damage. Finally, you gain a +4 insight bonus on all combat maneuver checks made against your focused foe.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Weaponwand", school: "Transmutation", levels: "bard 1, cleric 1, inquisitor 1, magus 1, oracle 1, skald 1, warpriest 1",
                          castingTime: "1 round", components: "V, S, F (a magic wand)",
                          range: "touch", area: "", targets: "one weapon",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "When you cast this spell on a weapon, you cause a portion of the weapon to open like the skin of a partially peeled apple, revealing a space large enough to insert a single wand within.",
                          desc: "When you cast this spell on a weapon, you cause a portion of the weapon to open like the skin of a partially peeled apple, revealing a space large enough to insert a single wand within. As part of the spell’s casting, you can insert a single wand into the weapon, at which point the weapon returns to its original form with the wand held inside of it without negatively impacting the weapon’s integrity. For the spell’s duration, a character who wields the transmuted weapon is also considered to be wielding the wand as well. You can attack normally with the weapon or use the weapon as if it were the encased wand. If the effect created by the wand requires an attack roll to successfully strike a foe, you may make the attack roll as if you were making an attack with the weapon at its highest bonus (including any bonuses the weapon would normally receive) rather than just a normal attack with the wand—doing so does not allow you to add the weapon’s damage to the wand’s attack roll, but instead allows you to use your skill with the weapon to boost your chance of hitting with the spell. At the end of the spell’s duration, the encased wand is ejected from the weapon. If you have a free hand, you may catch the weapon as a free action; otherwise, the wand drops to the ground. If the weapon housing the wand is broken or destroyed during the duration of weaponwand , the encased wand is similarly broken or destroyed.",
                          source: "Inner Sea Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Zone of Foul Flames", school: "Transmutation", levels: "druid 4, hunter 4",
                          castingTime: "1 standard action", components: "V, S, M (a sliver of tree bark from a burnt tree from the Uskwood)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius spread", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The twisted druids of the Uskwood forsook fire in ages past for the glory of Zon-Kuthon.",
                          desc: "The twisted druids of the Uskwood forsook fire in ages past for the glory of Zon-Kuthon. Despite this aversion, these servants of Nidal know well the sting of flame, and have learned to turn it back on those that wield it. This spell creates a zone where magical fire effects twist and lash out against those who create the effects. A zone of foul flames looks unremarkable to the casual observer, but a Perception check (DC = 20 + the caster’s level) reveals a faint rippling effect in the area, as if of heat distortions in the air. Whenever a creature casts a spell with the fire descriptor or activates a magical fire effect (as from a magic item or a special attack) while that creature is located in a",
                          source: "Inner Sea Magic", isPremium: true),

                    // // MARK: - Inner Sea Monster Codex
        )
        try await db.insertSpell(
        .make("Illusory Maze", school: "Illusion (Figment)", levels: "arcanist 2, bard 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-radius spread", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will disbelief (if interacted with);", sr: true,
                          summary: "This spell creates the illusion of a translucent, ever-changing maze of glass in the target area.",
                          desc: "This spell creates the illusion of a translucent, ever-changing maze of glass in the target area. Creatures in the area who believe the maze to be real cannot move more than 5 feet continuously in any one direction and can’t move diagonally, forcing them to take a circuitous route to their destination.",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Make Lost", school: "Enchantment (Compulsion)", levels: "bard 2, druid 2, hunter 1, ranger 1, skald 2",
                          castingTime: "1 round", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You strip the targets of their senses of direction and recent memories of travel.",
                          desc: "You strip the targets of their senses of direction and recent memories of travel. They immediately forget the route they took in the last hour (but not details of encounters along the way) and become lost ( Pathfinder RPG Core Rulebook 424).",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mind Maze", school: "Enchantment (Compulsion)", levels: "bard 3, cleric 3, oracle 3, shaman 3, skald 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a chicken skull)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell causes the target to act as though it’s wandering through a maze.",
                          desc: "This spell causes the target to act as though it’s wandering through a maze. While under the effects of the spell, the target can’t make attacks or cast spells and must take at least one move action each round to walk in a random direction determined using the guidelines for missed splash weapons ( Core Rulebook 202). The target must move at its maximum speed during this required movement, though additional move actions after the first can cover shorter distances. If this movement takes the target into a dangerous area, such as through a threatened square or off a ledge, the target receives a second saving throw to end the effect before moving into peril. Walking into a harmless obstacle, such as a wall, ends the target’s movement.",
                          source: "Inner Sea Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Puzzle Box", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or one object up to 5 lbs./level",
                          duration: "1 round/level or permanent; see text",
                          savingThrow: "Will negates or none;", sr: true,
                          summary: "This spell causes even commonly used objects to become conundrums. When cast on a creature, the target loses all weapon and shield proficiencies.",
                          desc: "This spell causes even commonly used objects to become conundrums. When cast on a creature, the target loses all weapon and shield proficiencies. The target also forgets how to use all spell-completion, spell-trigger, and use-activated magic items, as well as any mundane items used as part of a skill check, imposing a –5 penalty on all ability and skill checks attempted with such items. These effects last for 1 round per level. As a move action, the target can attempt a skill check to negate the effects of this spell for one object. Weapons, shields, and mundane objects require a successful Craft skill check of the type required to craft the item in question, with a DC equal to the spell’s save DC. Magic items require a successful Spellcraft or Use Magic Device skill check against the spell’s save DC. Alternatively, this spell can be cast on a single touched object that weighs up to 5 pounds per the caster’s level. Use of this object becomes a puzzle even to those previously familiar with it. Any creature attempting to use an item affected in this way is treated as though the creature was the target of puzzle box for that item only. When cast on an object, the duration of this spell is permanent.",
                          source: "Inner Sea Monster Codex", isPremium: true),

                    // // MARK: - Inner Sea Races
        )
        try await db.insertSpell(
        .make("Air of Authority", school: "Illusion (Glamer)", levels: "bard 3, skald 3 (Taldan)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You gain an unmistakable air of authority, which clouds creatures’ minds and causes them to believe that you are their direct superior.",
                          desc: "You gain an unmistakable air of authority, which clouds creatures’ minds and causes them to believe that you are their direct superior. Each creature with whom you attempt to leverage your newfound authority receives a Will save to disbelieve the illusion. Otherwise, it treats you as it would its direct superior. Creatures with different direct superiors see you in different ways, which can potentially lead to conflicts that allow additional saving throws (for instance, if a cook sees you as the head chef, he might be quite perplexed to see the vizier treating you as if you were the king).",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bleaching Resistance", school: "Enchantment (Compulsion)", levels: "alchemist 4, arcanist 6, druid 6, hunter 6, investigator 4, sorcerer 6, witch 6, wizard 6 (Gnome)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "24 hours",
                          savingThrow: "None", sr: false,
                          summary: "Ability score drain from the Bleaching doesn’t affect your ability score modifiers while you’re affected by this spell.",
                          desc: "Ability score drain from the Bleaching doesn’t affect your ability score modifiers while you’re affected by this spell. This spell does not remove the Bleaching’s effect on your appearance, nor does it prevent you from suffering further ability penalties, dying, or becoming a bleachling as a result of the Bleaching.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Burn Corruption", school: "Evocation", levels: "arcanist 5, bloodrager 4, magus 5, sorcerer 5, wizard 5 (Elf)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "10-ft. cube/level (S)", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex half;", sr: true,
                          summary: "This spell fills the area with violet flames that scour an area clean of life—especially of the corrupted life of the Abyss.",
                          desc: "This spell fills the area with violet flames that scour an area clean of life—especially of the corrupted life of the Abyss. Creatures (and foliage) in the area take 1d8 points of fire damage per 2 caster levels you possess (maximum 7d8) unless they are outsiders with the chaotic and evil subtypes or are otherwise tainted by demons, in which case they instead take 1d6 points of fire damage per caster level (maximum 15d6). This fire damage ignores the fire resistance granted by the demon subtype, but it does not penetrate any other form of fire resistance or immunity.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Carve Passage", school: "Transmutation", levels: "arcanist 5, druid 5, hunter 5, sorcerer 5, wizard 5 (Kobold)",
                          castingTime: "1 standard action", components: "V, S, F (a tiny diamond pick worth 500 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "dirt or loose rock in one 5-ft. cube/level", targets: "",
                          duration: "instantaneous",
                          savingThrow: "see text;", sr: false,
                          summary: "You can excavate and move an amount of snow, earth, dust, sand, and loose or packed rocks or ice chunks (each no more than 5 feet in diameter) whose volume fills one 5-foot cube per level.",
                          desc: "You can excavate and move an amount of snow, earth, dust, sand, and loose or packed rocks or ice chunks (each no more than 5 feet in diameter) whose volume fills one 5-foot cube per level. If you are buried, you can open a space around yourself and use any remaining cubes for tunneling. This spell is otherwise similar to expeditious excavation ( Pathfinder RPG Advanced Player’s Guide 220).",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Champion's Bout", school: "Enchantment (Compulsion)", levels: "bard 3, cleric 3, oracle 3, skald 3, warpriest 3 (Shoanti)",
                          castingTime: "1 round", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "two creatures",
                          duration: "1 round/level",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You allow two chosen champions to fight without interference. The two creatures must be willing in order for the spell to work.",
                          desc: "You allow two chosen champions to fight without interference. The two creatures must be willing in order for the spell to work. After you cast this spell, any creature attempting to aid or hinder either of the two targets in any way must succeed at a Will save or lose its action instead (spell resistance applies). A creature that fails its Will save against champion’s bout cannot attempt to interfere again. If a creature successfully interferes with the bout, the spell ends immediately.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Damnation of Memory", school: "Enchantment (Compulsion)", levels: "bard 6, skald 6 (Garundi)",
                          castingTime: "1 hour", components: "V, S, F (a massive, flawless gemstone worth 5,000 gp)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "all living creatures within range",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You name one creature and excise all memory of that creature’s involvement in events the targets remember.",
                          desc: "You name one creature and excise all memory of that creature’s involvement in events the targets remember. The targets either forget who exactly performed the named creature’s deeds or assume some other individual performed them. Alternatively, you can name either one event lasting no more than 10 minutes per caster level or a single topic (defined at the GM’s discretion) such as a shameful secret of the king that was recently revealed or a small revolt that was quelled messily, and erase all recollection of that subject from the minds of all creatures within the area. Memory of facts and topics that are common knowledge (information with a Knowledge check DC of 10 or less) cannot be stolen via this spell. The lost memories are stored in the focus gem (which grows dull inside and cannot be used as a focus or material component for any other spell, including another casting of this spell). The targets emanate no magic and the spell cannot be dispelled from them; only the focus retains a magic aura, and only by targeting the gem can the spell be dispelled, disjoined, or suppressed with antimagic. If the gem is destroyed or the spell is dispelled (which destroys the gem), all stolen memories return to the affected creatures.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Elemental Mastery", school: "Transmutation", levels: "arcanist 4, bloodrager 4, druid 4, hunter 4, magus 4, ranger 4, sorcerer 4, wizard 4 (Ifrit, Oread, Suli, Sylph, Undine)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You gain mastery over the element matching the elemental essence in your blood (fire for ifrits, earth for oreads, air for sylphs, and water for undines).",
                          desc: "You gain mastery over the element matching the elemental essence in your blood (fire for ifrits, earth for oreads, air for sylphs, and water for undines). If you are a suli, you can choose any one of the four options as you cast this spell, but the duration is reduced to 1 round per level. Your mastery gives you an insight bonus to your speed or a new movement mode, depending on the element you master, and grants one additional benefit. This spell’s descriptor matches the chosen element. Element (Race) Movement",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fable Tapestry", school: "Illusion (Shadow)", levels: "bard 5, skald 5 (Varisian)",
                          castingTime: "1 round", components: "V, S, F (your kapenia)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "1 legendary character/4 caster levels", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will disbelief;", sr: true,
                          summary: "The spell weaves shadows and colors from your kapenia into the shape of legendary characters from Varisian folktales. This spell functions as shadow conjuration emulating",
                          desc: "The spell weaves shadows and colors from your kapenia into the shape of legendary characters from Varisian folktales. This spell functions as shadow conjuration emulating",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fire's Friend", school: "Evocation", levels: "alchemist 2, bloodrager 2, investigator 2, magus 2 (Goblin)",
                          castingTime: "1 standard action", components: "V, S, M (a flame of any size)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "You cloak yourself in flames that do not harm you or your carried equipment but damage other creatures and objects. The flames cast light as a torch.",
                          desc: "You cloak yourself in flames that do not harm you or your carried equipment but damage other creatures and objects. The flames cast light as a torch. Any creature that attacks you with a non-reach melee weapon or that begins its turn engaged in a grapple with you takes 1d6 points of fire damage and must succeed at a Reflex save or catch fire. The creature can negate the damage (and avoid catching fire) with spell resistance. Any time you end your movement in the same square as a flammable object or creature, that creature or object must succeed at a Reflex save or catch fire.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fleshwarping Swarm (Drow)", school: "Conjuration (Summoning)", levels: "arcanist 3, sorcerer 3, summoner 3, witch 3, wizard 3 (Drow)",
                          castingTime: "1 round", components: "V, S, M/DF (a square of red cloth)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one swarm of bats, rats, or spiders", targets: "",
                          duration: "concentration + 2 rounds and 1 hour/level (see text)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as summon swarm , except that living and undead creatures that fail their saving throw against the swarm’s distraction find that their limbs twist and spasm, as their bodies…",
                          desc: "This spell functions as summon swarm , except that living and undead creatures that fail their saving throw against the swarm’s distraction find that their limbs twist and spasm, as their bodies become susceptible to transmutations. Such creatures take a –4 penalty to Dexterity and on saving throws against transmutation effects for 1 hour per caster level.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lament of Summer's Last Breath", school: "Abjuration", levels: "bard 2, hunter 2, ranger 2, skald 2 (Ulfen)",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "30-ft. radius spread centered on a creature, object, or point in space", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "You wrap the target in a mantle of summery air, within which the ambient temperature never falls below 70 degrees Fahrenheit.",
                          desc: "You wrap the target in a mantle of summery air, within which the ambient temperature never falls below 70 degrees Fahrenheit. Creatures with the cold subtype that start their turns in the area take an amount of fire damage equal to 1d4 points + 1 point per 2 caster levels (maximum 1d4+5) with no saving throw. Each time an evil dragon, fey, or giant takes damage from the spell, it must succeed at a Will saving throw or become shaken for 1 round. Creatures attempting to cast a cold spell in the area must succeed at a Will save or the spell fails. Succeeding at one such save to cast a spell allows a creature to continue casting cold spells in the area for the spell’s remainder.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lost Locale", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 4, skald 4, sorcerer 4, wizard 4 (Samsaran)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "one 30-ft. cube/level (S)", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "Will partial;", sr: true,
                          summary: "This spell functions as lost passage (see below), except that it affects a larger area.",
                          desc: "This spell functions as lost passage (see below), except that it affects a larger area.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lost Passage", school: "Enchantment (Compulsion)", levels: "arcanist 4, bard 4, skald 4, sorcerer 4, wizard 4 (Samsaran)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "one 30-ft. cube/level (S)", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "Will partial;", sr: true,
                          summary: "Creatures in the area of this spell are subject to a subtle enchantment that confounds their senses of direction, interferes with recognizing landmarks, and causes them to misjudge distances and…",
                          desc: "Creatures in the area of this spell are subject to a subtle enchantment that confounds their senses of direction, interferes with recognizing landmarks, and causes them to misjudge distances and angles. Creatures that enter the area must succeed at a new Survival check to avoid becoming lost immediately, whether or not they succeed at their saving throws. Those that fail the save take a penalty on such Survival checks equal to double your caster level, treat all squares they enter as difficult terrain for as long as they are in the area and for 1 hour per caster level thereafter, lose the benefit of all effects that allow them to ignore difficult terrain, and take a –4 penalty to Dexterity. Lost passage can be made permanent with permanency at a cost of 10,000 gp.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mantle of the Magic Warriors", school: "Transmutation", levels: "arcanist 5, druid 5, hunter 5, shaman 5, sorcerer 5, wizard 5 (Mwangi)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one good-aligned creature/3 levels",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You weave golden masks shaped like animals around the targets’ faces, imbuing each target with an animal spirit that matches her strength of character.",
                          desc: "You weave golden masks shaped like animals around the targets’ faces, imbuing each target with an animal spirit that matches her strength of character. Each target gains one animal special ability of your choice granted by beast shape I . You can choose a different special ability for each target.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Martial Telekinesis", school: "Evocation", levels: "arcanist 4, magus 4, sorcerer 4, wizard 4 (Vudrani)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "or Targets see text",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object) or none, see text;", sr: true,
                          summary: "You mingle the power of your mind and body to exert force beyond your reach. This spell functions as the combat maneuver version of telekinesis , except as noted above.",
                          desc: "You mingle the power of your mind and body to exert force beyond your reach. This spell functions as the combat maneuver version of telekinesis , except as noted above. Alternatively, you can inflict a telekinetic unarmed strike with this spell, using your own unarmed strike damage and applying your primary spellcasting ability score modifier to the damage in place of your Strength modifier.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Miasmal Dread", school: "Enchantment (Compulsion)", levels: "antipaladin 2, bard 2, bloodrager 2, inquisitor 3, skald 2 (Half-Orc)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "30 feet", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "A cloud of sickly green mist pours from your mouth and coalesces around creatures in the cone.",
                          desc: "A cloud of sickly green mist pours from your mouth and coalesces around creatures in the cone. Attempt a single Intimidate check to demoralize as part of casting the spell, comparing the result against the DC to Intimidate each foe within the area. You demoralize all foes whose DC you meet or exceed.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Murderous Crow", school: "Conjuration (Summoning)", levels: "antipaladin 1, arcanist 1, cleric 1, oracle 1, paladin 1, sorcerer 1, summoner 1, warpriest 1, witch 1, wizard 1 (Orc)",
                          castingTime: "1 round", components: "V, S, F (a crow’s feather)",
                          range: "medium (100 ft. + 10 ft./level)", area: "one crow", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure a supernaturally vicious and clever crow to watch over you on the battlefield.",
                          desc: "You conjure a supernaturally vicious and clever crow to watch over you on the battlefield. Choose one of the following templates; the crow has that template and this spell gains the descriptor listed in parentheses: celestial (good), entropic B2 (chaotic), fiendish (evil), or resolute",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Overlook", school: "Enchantment (Compulsion)", levels: "bard 3, skald 3 (Halfling)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You enhance your natural ability to seem small and unimportant, causing those around you to overlook you.",
                          desc: "You enhance your natural ability to seem small and unimportant, causing those around you to overlook you. You gain a +20 bonus on Stealth checks, which doesn’t stack with bonuses from effects that actually make you sneakier, such as invisibility or",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Probe History", school: "Divination", levels: "arcanist 4, bard 3, cleric 4, inquisitor 4, oracle 4, skald 3, sorcerer 4, warpriest 4, wizard 4 (Half-Elf)",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You gain a glimpse of a potential reality similar to this one but that never was.",
                          desc: "You gain a glimpse of a potential reality similar to this one but that never was. If the target fails her Will save, you can ask about one topic and attempt the appropriate Knowledge check with a +5 competence bonus; track Knowledge checks attempted with this spell separately for the purpose of disallowing retries on Knowledge checks. You learn information on that topic from a reality in which you were an acquaintance of the target, although the differences in that reality might cause the answer to be subtly different than in your own. Once you have probed a target’s history, successfully or not, you cannot target the same creature’s history or search for the same information in another creature’s history.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Respectful Quiet", school: "Illusion (Glamer)", levels: "bard 3, cleric 5, inquisitor 3, oracle 5, skald 3, warpriest 5 (Chelaxian)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "any number of creatures in a 30-ft.-radius burst",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "All targets are rendered silent, as per silence . The silence affects the entirety of each creature but does not extend beyond.",
                          desc: "All targets are rendered silent, as per silence . The silence affects the entirety of each creature but does not extend beyond. However, the silence is one-way—sounds from outside the creatures’ spaces can still enter. Quieted creatures gain a +10 circumstance bonus on Stealth checks.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadow of Doubt", school: "Enchantment (Compulsion)", levels: "antipaladin 4, bard 4, skald 4 (Tiefling)",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/3 levels",
                          duration: "1 round/level",
                          savingThrow: "Will partial (see text);", sr: true,
                          summary: "You create a shadowy aura of doubt fueled by a foe’s own inner flaws.",
                          desc: "You create a shadowy aura of doubt fueled by a foe’s own inner flaws. Targets perceive all illumination as if it were one light level darker, to a minimum light level of darkness (not supernatural darkness), even on a successful saving throw. Fleeting mental shadows of regrets and anxieties distract the spell’s targets; at the start of each of their turns, they must each succeed at a Will save or be staggered for 1 round. A good-aligned target takes a –4 penalty on saving throws against this effect; an evil-aligned target gains a +4 bonus instead.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Siege Scatter", school: "Evocation", levels: "druid 5, hunter 4, ranger 4, shaman 5 (Dwarf)",
                          castingTime: "1 round", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "50-ft.-radius spread", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex partial (see text);", sr: true,
                          summary: "A roiling blast of rough rock and dirt scatters along the ground in the area, dealing 1d6 points of slashing damage per 2 caster levels (maximum 5d6) to all creatures on the ground in the area, even…",
                          desc: "A roiling blast of rough rock and dirt scatters along the ground in the area, dealing 1d6 points of slashing damage per 2 caster levels (maximum 5d6) to all creatures on the ground in the area, even on a successful saving throw. Creatures in the area that fail the Reflex save fall prone and are knocked to the nearest edge of the area, taking 1d6 points of bludgeoning damage for every 10 feet they travel this way. Creatures that did not move during the past round and those with the stability racial trait gain a +4 bonus on the saving throw.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Giant Ally I", school: "Conjuration (Summoning)", levels: "druid 6, hunter 6 (Kellid)",
                          castingTime: "1 standard action", components: "V, S, F/DF (bit of cloth from a giant’s bag)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one or more giants", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as summon nature’s ally VI , except its casting time is shorter and you can summon one cave, hill, marsh, river, slag, stone, or wood giant.",
                          desc: "This spell functions as summon nature’s ally VI , except its casting time is shorter and you can summon one cave, hill, marsh, river, slag, stone, or wood giant.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Giant Ally II", school: "Conjuration (Summoning)", levels: "druid 6, hunter 6 (Kellid)",
                          castingTime: "1 standard action", components: "V, S, F/DF (bit of cloth from a giant’s bag)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one or more giants", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as summon giant ally I , except you can summon one desert, fire, frost, or jungle giant or 1d3 cave, hill, marsh, river, slag, stone, or wood giants.",
                          desc: "This spell functions as summon giant ally I , except you can summon one desert, fire, frost, or jungle giant or 1d3 cave, hill, marsh, river, slag, stone, or wood giants.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Giant Ally III", school: "Conjuration (Summoning)", levels: "druid 6, hunter 6 (Kellid)",
                          castingTime: "1 standard action", components: "V, S, F/DF (bit of cloth from a giant’s bag)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one or more giants", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as summon giant ally I , except you can summon one ash or cloud giant; 1d3 desert, fire, frost, or jungle giants; or 1d4+1 cave, hill, marsh, river, slag, stone, or wood giants.",
                          desc: "This spell functions as summon giant ally I , except you can summon one ash or cloud giant; 1d3 desert, fire, frost, or jungle giants; or 1d4+1 cave, hill, marsh, river, slag, stone, or wood giants.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Suppressing Stone", school: "Evocation", levels: "arcanist 4, sorcerer 4, wizard 4 (Azlanti)",
                          castingTime: "1 standard action", components: "V, S, F (one ioun stone worth at least 1,000 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level or until discharged (D)",
                          savingThrow: "None", sr: false,
                          summary: "You infuse arcane power into the focus ioun stone , which must be currently floating around your head. If the",
                          desc: "You infuse arcane power into the focus ioun stone , which must be currently floating around your head. If the",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wall of Brine", school: "Conjuration (Creation)", levels: "arcanist 4, druid 4, hunter 3, magus 4, ranger 3, shaman 4, sorcerer 4, wizard 4 (Merfolk)",
                          castingTime: "1 standard action", components: "V, S, M/DF (a bit of coral)",
                          range: "medium (100 ft. + 10 ft./level)", area: "wall up to 10 ft./level long and 5 ft./level high (S)", targets: "",
                          duration: "concentration + 1 round/level",
                          savingThrow: "none, see text;", sr: true,
                          summary: "You conjure a 5-foot-thick wall of seawater with a powerful current flowing toward one side of the wall, selected by you; a creature attempting to swim against this current must spend 4 squares of…",
                          desc: "You conjure a 5-foot-thick wall of seawater with a powerful current flowing toward one side of the wall, selected by you; a creature attempting to swim against this current must spend 4 squares of movement to enter a square of the wall. A creature that begins its turn in the wall is ejected in the direction of the current just before it acts. The wall provides cover against attacks from out of the water, as usual for a body of water. The water and the currents deflect physical ranged attacks into or through the wall, unless a weapon used is exceptionally massive (such as a siege engine). A creature submerged in the wall takes the usual penalties for underwater combat. The wall blocks gases and liquids and prevents water from mixing at its edges.",
                          source: "Inner Sea Races", isPremium: true)
        )
        try await db.insertSpell(
        .make("Zephyr's Fleetness", school: "Transmutation", levels: "hunter 3, ranger 3 (Keleshite)",
                          castingTime: "1 round", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature/2 levels",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You can call upon the spirits of the air to grant agility to your allies. Each target gains a +30 foot enhancement bonus to its land speed and fly speed (if any).",
                          desc: "You can call upon the spirits of the air to grant agility to your allies. Each target gains a +30 foot enhancement bonus to its land speed and fly speed (if any). Each target can also move (and charge) through difficult terrain without penalty.",
                          source: "Inner Sea Races", isPremium: true),

                    // // MARK: - Inner Sea Temples
        )
        try await db.insertSpell(
        .make("Bereave", school: "Enchantment (Compulsion)", levels: "bard 3, cleric 4, mesmerist 3, oracle 4, psychic 4, skald 3, warpriest 4, witch 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (a broken chain link)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "all creatures in a 15-ft.-radius burst",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "An overwhelming feeling of loss overcomes the targets, and their allies’ words sound bleak and hollow.",
                          desc: "An overwhelming feeling of loss overcomes the targets, and their allies’ words sound bleak and hollow. Regardless of actual allegiances, affected creatures no longer count as allies for other creatures and always count as enemies for the purposes of abilities, effects, and spells that differentiate between allies and enemies, such as flanking or spells such as bane or",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Betraying Sting", school: "Evocation", levels: "cleric 6, occultist 6, oracle 6, psychic 6, shaman 6, warpriest 6, witch 6",
                          castingTime: "1 standard action", components: "V",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one creature",
                          duration: "instantaneous",
                          savingThrow: "Will partial;", sr: true,
                          summary: "You unleash divine power to smite those who wrongly trusted you. The power takes the form of a yellow-and-black bolt of energy that makes the sound of a thousand angry, swarming wasps.",
                          desc: "You unleash divine power to smite those who wrongly trusted you. The power takes the form of a yellow-and-black bolt of energy that makes the sound of a thousand angry, swarming wasps. This spell affects only creatures that have an attitude toward you of indifferent, friendly, or helpful. The spell deals 1d8 points of damage per 2 caster levels you have.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ferment", school: "Transmutation", levels: "alchemist 1, arcanist 1, bard 1, cleric 1, druid 1, hunter 1, investigator 1, oracle 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a drop of ale, mead, or wine)",
                          range: "touch", area: "", targets: "object touched",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (object);", sr: true,
                          summary: "This spell temporarily imbues a potable liquid (including elixirs, extracts, potions, and poisons) with an intoxicant.",
                          desc: "This spell temporarily imbues a potable liquid (including elixirs, extracts, potions, and poisons) with an intoxicant. The caster must succeed at a caster level check in order to affect magic liquids and poisons (DC = 10 + item level for magic liquids, DC equal to the poison’s save DC for a poison); otherwise, the spell fails. If the caster succeeds, the liquid also assumes a flavor according to what the caster desires, but the effect on the imbiber is the same. An imbiber of a liquid affected by ferment must succeed at a Fortitude saving throw at the spell’s save DC or take a –2 penalty on attack rolls, saves, ability checks, and skill checks for the remaining duration of the spell. Additionally, the DC of any skill check to identify a magic liquid or poison under the effects of this spell increases by 5.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Free Spirit", school: "Abjuration", levels: "bard 3, cleric 3, druid 3, hunter 3, medium 3, oracle 3, shaman 3, skald 3, spiritualist 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell allows you to channel the essence of Cayden Cailean’s philosophy, giving you the benefits of a freedom of movement spell and granting you a +4 bonus on saving throws against fear effects.",
                          desc: "This spell allows you to channel the essence of Cayden Cailean’s philosophy, giving you the benefits of a freedom of movement spell and granting you a +4 bonus on saving throws against fear effects. The spell also makes you drunk. For the duration of the spell, you take a –2 penalty on attack rolls, ability checks, skill checks, and concentration checks. If you somehow remove or avoid these penalties, the spell’s duration ends.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Funereal Weapon", school: "Transmutation", levels: "cleric 1, inquisitor 1, occultist 1, oracle 1, paladin 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "weapon touched or 50 projectiles (all of which must be together at the time of casting)",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You imbue a weapon with a faint silvery glow that dimly illuminates a 5-foot square.",
                          desc: "You imbue a weapon with a faint silvery glow that dimly illuminates a 5-foot square. An affected weapon also easily bypasses the physical defenses of undead creatures, ignoring 5 points of an undead creature’s damage reduction, as long as the damage reduction is not DR/epic. For example, attacks with a weapon affected by this spell completely ignore a zombie’s DR 5/slashing or reduce a lich’s damage reduction to DR 10/bludgeoning and magic. You can’t cast this spell on a natural weapon, such as an unarmed strike. Funereal weapon affects the DR of only undead creatures.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Harvest Knowledge", school: "Divination", levels: "alchemist 4, antipaladin 4, arcanist 4, bard 4, inquisitor 4, investigator 4, mesmerist 4, psychic 4, skald 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a piece of lodestone)",
                          range: "touch (see text)", area: "", targets: "one creature or object; see text",
                          duration: "concentration, up to 1 minute/level",
                          savingThrow: "Will negates; see text;", sr: false,
                          summary: "You touch a creature and temporarily absorb its knowledge for yourself. If the target fails its saving throw, you can sort through its lore and memories.",
                          desc: "You touch a creature and temporarily absorb its knowledge for yourself. If the target fails its saving throw, you can sort through its lore and memories. You can retrieve one answer to a specific question per minute, as through sifting through the creature’s surface thoughts with detect thoughts . Alternatively, you can tap into the target’s learned experiences and attempt one Knowledge check in a skill in which the target has at least 1 rank, using the target’s total skill modifier. Each Knowledge check requires 1 minute and allows the target another Will save to resist the effect. If the target successfully resists, the spell does not end, but you are unable to attempt another Knowledge check for that skill using this spell. You can also use this spell against targets trapped in magic items or spells that hold their bodies or souls, such as an",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Incessant Buzzing", school: "Illusion (Figment)", levels: "antipaladin 1, arcanist 1, bard 1, psychic 1, shaman 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (insect wing)",
                          range: "medium (100 ft. + 10 ft./level)", area: "10-ft.-diameter sphere", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You summon an illusory swarm of angry wasps that fills a 10-foot-diameter sphere.",
                          desc: "You summon an illusory swarm of angry wasps that fills a 10-foot-diameter sphere. You can summon it so that it shares an area with other creatures, and you can move it up to 40 feet each round as a move action. Creatures caught inside the swarm’s area of effect cannot use skills that require patience or concentration. Additionally, spellcasters within the area must succeed at a caster level check (DC = 20 + level of spell to be cast) in order to cast spells. On a failed caster level check, the spell is lost. While the buzzing is unpleasant, it is not so loud as to drown out other noises or make communication difficult.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Necrostasis", school: "Necromancy", levels: "arcanist 3, cleric 2, inquisitor 2, oracle 2, shaman 2, sorcerer 3, spiritualist 2, warpriest 2, witch 2, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a finger bone)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one undead creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You drain necromantic energy from an undead creature, inducing a sluggish stupor. The target becomes staggered. For the duration of the spell, dark wisps of energy seep out of the target creature.",
                          desc: "You drain necromantic energy from an undead creature, inducing a sluggish stupor. The target becomes staggered. For the duration of the spell, dark wisps of energy seep out of the target creature. If the target already has the staggered condition (as a zombie does), it becomes dazed for 1 round instead.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Overstimulate", school: "Transmutation", levels: "alchemist 2, bard 2, bloodrager 2, cleric 2, druid 2, hunter 2, investigator 2, oracle 2, psychic 2, ranger 2, shaman 2, skald 2, summoner 2, summoner (unchained) 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (smelling salts)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "You deprive a creature of the blissful oblivion of unconsciousness, either to keep it going despite grievous injuries or to prolong its suffering.",
                          desc: "You deprive a creature of the blissful oblivion of unconsciousness, either to keep it going despite grievous injuries or to prolong its suffering. For the duration of the spell, the target gains the ferocity ability ( Pathfinder RPG Bestiary 300), allowing it to remain conscious and continue fighting even if its hit point total is below 0. The target is still staggered and loses 1 hit point each round, and the target still dies when its hit point total reaches a negative amount equal to its Constitution score.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Painful Revelation", school: "Abjuration", levels: "antipaladin 2, arcanist 2, bard 2, mesmerist 2, psychic 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one ongoing illusion effect",
                          duration: "1 hour/level or until discharged",
                          savingThrow: "Will partial;", sr: false,
                          summary: "You augment an ongoing illusion effect to strike out painfully at creatures that see through it.",
                          desc: "You augment an ongoing illusion effect to strike out painfully at creatures that see through it. When a creature successfully disbelieves an illusion that is the target of painful revelation , it takes 1d6 points of nonlethal damage for every 2 caster levels you have (maximum 10d6) and is staggered for 1d4 rounds. A successful Will save reduces the nonlethal damage by half and negates the staggered effect. Once",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Pillow Talk", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 3, inquisitor 3, mesmerist 3, psychic 3, skald 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "10 minutes", components: "S",
                          range: "touch", area: "", targets: "sleeping, living creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell can be cast only on a sleeping creature, which must be present for the full duration of the casting time.",
                          desc: "This spell can be cast only on a sleeping creature, which must be present for the full duration of the casting time. You grant the semblance of wakefulness to the target, allowing it to answer questions. You can ask one question per 2 caster levels. The target’s knowledge is limited to what it normally knows, including the languages it speaks. Answers are brief, cryptic, or repetitive, especially if the creature would have opposed you when awake. If the target succeeds at a Will save, it awakens (unless some force is preventing it from being awake, such as magic or drugs), and it remains aware of the first question you asked. If the target has been subject to pillow talk within the past week, the new spell fails. While your questions don’t otherwise wake the target, this spell does nothing to prevent other sounds or stimulus from waking the target. A target who sleeps through the spellcasting and duration of the spell has no memory of it taking place, but a target who awakens before the spell ends remembers every question asked and what answers it gave.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Preserve", school: "Necromancy", levels: "adept 1, arcanist 1, cleric 1, hunter 1, medium 1, occultist 1, oracle 1, ranger 1, shaman 1, sorcerer 1, spiritualist 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a pinch of salt)",
                          range: "touch", area: "", targets: "one or more objects, up to 1 lb./level",
                          duration: "1 week",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You imbue one or more objects with magic that dramatically slows down natural processes that lead to decay and spoilage.",
                          desc: "You imbue one or more objects with magic that dramatically slows down natural processes that lead to decay and spoilage. For the duration of the spell, food, water, plants, and other perishable objects affected by the spell remain as fresh as they were when the spell was cast. The spell also protects these objects against spells of the same level or lower that cause spoilage, such as putrefy food and drink APG . When the duration of",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Reveal Secrets", school: "Enchantment (Compulsion)", levels: "arcanist 1, bard 1, inquisitor 1, mesmerist 1, psychic 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a drop of alcoholic liquid)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round",
                          savingThrow: "Will negates;", sr: true,
                          summary: "When you cast this spell, you ask the target whether it has a secret about a specific topic that can be described in 10 words or fewer.",
                          desc: "When you cast this spell, you ask the target whether it has a secret about a specific topic that can be described in 10 words or fewer. This can concern a person, place, or thing (such as a town’s mayor, the ring worn by a traveling merchant, or the bridge spanning a nearby river) or an easily distinguished event (such as a historic battle or a recent rash of disappearances). If the target knows a secret about the topic (information it believes isn’t common knowledge and which it would not normally tell you), it states it has a secret. The target doesn’t mention anything about the secret and doesn’t remember telling you it has a secret. If the target succeeds at its saving throw, it isn’t compelled to reveal whether it knows a secret and is aware that you asked.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Scarify", school: "Necromancy", levels: "adept 1, alchemist 1, antipaladin 1, cleric 1, druid 1, hunter 1, inquisitor 1, investigator 1, oracle 1, shaman 1, spiritualist 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "Your touch causes a single creature’s skin to produce fibrous tissue that sutures the creature’s wounds, rapidly closing them and leaving jagged scars where the wounds were.",
                          desc: "Your touch causes a single creature’s skin to produce fibrous tissue that sutures the creature’s wounds, rapidly closing them and leaving jagged scars where the wounds were. The process is painful, and converts 2d6 points of damage + 1 point per caster level (maximum +5) into nonlethal damage. If the target creature is immune to nonlethal damage, the spell fails. Damage resistance against nonlethal damage reduces the amount of damage converted. This effect counts as healing for the purpose of stopping bleed damage. Kuthites are especially fond of this spell, as it gives them permanent physical reminders of the all too brief pain they endured.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shroud of Darkness", school: "Evocation", levels: "antipaladin 4, arcanist 5, bard 5, cleric 5, inquisitor 5, mesmerist 4, oracle 5, shaman 5, skald 5, sorcerer 5, warpriest 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (a pinch of black sand)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature/3 levels, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "With a dark incantation and a gesture of your hand over your eyes, you cause a shroud of darkness to descend upon the targets of this spell.",
                          desc: "With a dark incantation and a gesture of your hand over your eyes, you cause a shroud of darkness to descend upon the targets of this spell. The subjects treat the light level as two steps lower than normal for the duration of this spell. Bright light becomes dim light, normal light becomes darkness, and areas of dim light and darkness become supernaturally dark (as darkness, but even creatures with darkvision cannot see).",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Soul Vault", school: "Abjuration", levels: "arcanist 4, cleric 3, druid 4, hunter 4, inquisitor 3, oracle 3, psychic 5, shaman 4, sorcerer 4, spiritualist 2, warpriest 3, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell protects the target’s soul by briefly enveloping the target in an ethereal vault.",
                          desc: "This spell protects the target’s soul by briefly enveloping the target in an ethereal vault. The target gains a +4 bonus on saving throws against spells and effects that would trap or redirect its soul (such as magic jar, soul bind, and trap the soul) and effects that would transform the target into an undead creature. The target is granted a save to negate such effects even if one is not normally allowed. If it’s cast on a living creature that then dies, the target’s body and spirit are protected by the spell for its duration. If it’s cast on a corpse within 1 round of death, the target’s body and soul are both protected. Otherwise, only the body receives the protection. Any spellcaster that worships Abadar may learn and cast soul vault as a 4th level spell, if it isn’t normally on her class spell list.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spiral Ascent", school: "Conjuration (Teleportation)", levels: "cleric 3, inquisitor 3, oracle 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "you and touched objects",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You transform yourself into a helical beam of divine energy that instantly transports you upward to a spot within range.",
                          desc: "You transform yourself into a helical beam of divine energy that instantly transports you upward to a spot within range. The destination must be a square in the spell’s range that’s within 10 feet of a point directly above you. The destination must be within your line of sight or familiar to you. After using this spell, you can’t take any other actions until your next turn. You can bring along objects as long as their weight doesn’t exceed your maximum load. If you arrive in a place that is already occupied by a solid body, you are teleported to a random open space on a suitable surface within the range and other limitations of the spell. If no such space is available, the spell simply fails. This spell does not function on a plane lacking gravity. On a plane with subjective directional gravity, you can use this spell to teleport in any direction. Spiral Descent",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spiral Descent", school: "Conjuration (Teleportation)", levels: "cleric 3, inquisitor 3, oracle 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "you and touched objects",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell functions as spiral ascent , except the destination and direction of travel is downward from your current location.",
                          desc: "This spell functions as spiral ascent , except the destination and direction of travel is downward from your current location.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spirit Share", school: "Transmutation", levels: "alchemist 1, arcanist 1, bard 1, cleric 1, druid 1, hunter 1, investigator 1, occultist 1, oracle 1, shaman 1, skald 1, sorcerer 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (liquid to be shared)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "This spell was first created as a minor parlor trick, but adventuring Caydenites have repurposed and improved on it for use on their travels.",
                          desc: "This spell was first created as a minor parlor trick, but adventuring Caydenites have repurposed and improved on it for use on their travels. For the duration of the spell, as a standard action you can touch a willing target to deliver 1 dose of a potable liquid (including alcoholic drinks and potions and elixirs, but not poisons or other liquids that are primarily harmful when drunk) in your possession (though not necessarily held in hand) into her.",
                          source: "Inner Sea Temples", isPremium: true)
        )
        try await db.insertSpell(
        .make("True Appraisal", school: "Divination", levels: "bard 1, cleric 1, inquisitor 1, occultist 1, oracle 1, skald 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V, F (gold coin)",
                          range: "personal", area: "", targets: "you",
                          duration: "8 hours",
                          savingThrow: "none;", sr: false,
                          summary: "You gain temporary insight into the value of objects. You gain a +5 competence bonus on Appraise checks, can attempt an Appraise check to determine an object’s value as a move action, and can take 10…",
                          desc: "You gain temporary insight into the value of objects. You gain a +5 competence bonus on Appraise checks, can attempt an Appraise check to determine an object’s value as a move action, and can take 10 on an Appraise check even if stress or distractions would normally prevent you from doing so. You know if you fail an Appraise check, and you never determine a wildly inaccurate price.",
                          source: "Inner Sea Temples", isPremium: true),

                    // // MARK: - Inner Sea World Guide
        )
        try await db.insertSpell(
        .make("Ancestral Memory", school: "Divination", levels: "alchemist 5, cleric 5, druid 4, hunter 4, investigator 5, oracle 5, shaman 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell, you open your mind to the vast experiences of your ancestors in the hope of learning something pertinent about your current situation.",
                          desc: "When you cast this spell, you open your mind to the vast experiences of your ancestors in the hope of learning something pertinent about your current situation. The chance of successfully finding an ancestral memory that is pertinent is equal to 70% + your caster level. Failure indicates you merely gain a +5 insight bonus on all Intelligence-based skill checks for the duration of the spell. Success indicates that you not only gain the +5 insight bonus on all Intelligence-based skill checks, but that one of your ancestors came across a situation or problem similar to one you are currently facing. In this case, the GM provides you with some specific information to assist you in overcoming your problem. For example, a character might encounter a clay golem deep underground, and finds that her magic weapon and spells seem to be useless against the creature. She successfully casts",
                          source: "Inner Sea World Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Harrowing", school: "Divination", levels: "arcanist 3, bard 3, shaman 3, skald 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "10 minutes", components: "V, S, F (a Harrow deck)",
                          range: "touch", area: "", targets: "one creature",
                          duration: "1 day/level or until fulfilled",
                          savingThrow: "None", sr: false,
                          summary: "You use a Harrow deck to tell a fortune for yourself or someone else. If you cast harrowing on another creature, you must remain adjacent to the target for the duration of the casting time.",
                          desc: "You use a Harrow deck to tell a fortune for yourself or someone else. If you cast harrowing on another creature, you must remain adjacent to the target for the duration of the casting time. A harrowing must describe one set of events or course of action (for example, “hunting down the pirate king,” or “traveling to Viperwall to search for a magic sword”) that the target of the spell intends to undertake at some point during the spell’s duration. If you have access to a Harrow deck, draw nine cards when this spell is cast. If you do not have a Harrow deck, you can simulate the draws by rolling a d6 and a d10 for each of the nine cards, as detailed on page 293 of this book. Record the ability score and alignment associated with each card. Each of these cards grants a luck bonus or a penalty on a specific type of d20 check; the magnitude of the penalty or bonus depends upon how closely that particular card’s alignment matches the target creature’s alignment. If the card and target’s alignments are identical, that card provides a +2 luck bonus on the associated suit’s check. If the card and target’s alignments are of the opposite alignment (see below), the card inflicts a –1 penalty on that associated check. If the card has any other alignment, it provides a +1 luck bonus on the associated suit’s check. While penalties persist on all associated checks for as long as the harrowing persists, the bonuses are one-use bonuses that the harrowed character can “spend” at any time to modify that card’s associated check. You can spend a bonus to modify an appropriate roll after the die is rolled, but cannot spend the bonus once you know the result of the roll. Since all of the bonuses granted by a",
                          source: "Inner Sea World Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Harrowing, Greater", school: "Divination", levels: "arcanist 3, bard 3, shaman 3, skald 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "10 minutes", components: "V, S, F (a Harrow deck)",
                          range: "touch", area: "", targets: "one creature",
                          duration: "1 day/level or until fulfilled",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as harrowing , except it can affect an entire group of creatures and allows its subjects some measure of control over their destiny. Subjects of a",
                          desc: "This spell functions as harrowing , except it can affect an entire group of creatures and allows its subjects some measure of control over their destiny. Subjects of a",
                          source: "Inner Sea World Guide", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shield of the Dawnflower, Greater", school: "Evocation", levels: "bard 4, cleric 4, hunter 4, magus 4, oracle 4, paladin 4, ranger 4, skald 4, warpriest 4 (Sarenrae)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "see text;", sr: false,
                          summary: "You create a disk of sunlight on one arm. Any creature that strikes you with a melee attack deals normal damage, but also takes 1d6 points of damage + 1 point per caster level.",
                          desc: "You create a disk of sunlight on one arm. Any creature that strikes you with a melee attack deals normal damage, but also takes 1d6 points of damage + 1 point per caster level. Half of this damage is fire damage and half is holy damage (as the spell flame strike). An undead creature or a creature particularly vulnerable to light that hits you instead takes 2d6 points of damage +1 point per caster level. Creatures with reach weapons are not subject to this damage if they attack you. The shield provides illumination equivalent to a daylight spell. You can have only one instance of this spell in effect at a time. It does not stack with similar damaging aura spells such as",
                          source: "Inner Sea World Guide", isPremium: true),

                    // // MARK: - Inner Sea World Guide, Gods and Magic
        )
        try await db.insertSpell(
        .make("Gorum's Armor", school: "Transmutation", levels: "bloodrager 1, cleric 1, inquisitor 1, magus 1, oracle 1, shaman 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, M (1 iron spike)",
                          range: "touch", area: "", targets: "1 suit of metal armor or 1 metal shield",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The targeted suit of armor or shield sprouts thousands of tiny iron spikes like porcupine quills.",
                          desc: "The targeted suit of armor or shield sprouts thousands of tiny iron spikes like porcupine quills. These do not harm the armor’s wearer (though donning or removing armor under the effects of this spell takes twice as long), but they act as armor spikes or shield spikes (as appropriate). Any creature attacking the wearer with natural weapons takes 1 point of piercing damage for each attack that hits. At 5th level, the spikes gain a +1 enhancement bonus on attack and damage rolls; this bonus increases to +2 at 10th level. At 15th level, the spikes also gain the anarchic weapon quality.",
                          source: "Inner Sea World Guide, Gods and Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shield of the Dawnflower", school: "Evocation", levels: "bard 4, cleric 4, hunter 4, magus 4, oracle 4, paladin 4, ranger 4, skald 4, warpriest 4 (Sarenrae)",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "see text;", sr: false,
                          summary: "You create a disk of sunlight on one arm. Any creature that strikes you with a melee attack deals normal damage, but also takes 1d6 points of fire damage + 1 point per caster level (maximum +15).",
                          desc: "You create a disk of sunlight on one arm. Any creature that strikes you with a melee attack deals normal damage, but also takes 1d6 points of fire damage + 1 point per caster level (maximum +15). Creatures with reach weapons are not subject to this damage if they attack you. The shield provides illumination as if it were a continual flame spell. You can only have one instance of this spell in effect at a time. It does not stack with similar damaging aura spells such as",
                          source: "Inner Sea World Guide, Gods and Magic", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unbreakable Heart", school: "Enchantment (Compulsion)", levels: "bard 1, cleric 1, hunter 1, oracle 1, paladin 1, ranger 1, shaman 1, skald 1, warpriest 1, witch 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "1 creature", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target creature gains a +4 morale bonus on saving throws against mind-affecting effects that rely on negative emotions (such as crushing despair ,",
                          desc: "The target creature gains a +4 morale bonus on saving throws against mind-affecting effects that rely on negative emotions (such as crushing despair ,",
                          source: "Inner Sea World Guide, Gods and Magic", isPremium: true),

                    // // MARK: - Inner Sea World Guide, Pathfinder #17: A Memory of Darkness, Gods and Magic
        )
        try await db.insertSpell(
        .make("Lover's Vengeance", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 3, cleric 3, oracle 3, shaman 3, skald 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 minute", components: "V, M (a piece of jewelry worth at least 100 gp)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "up to 1 day/level (D) or until discharged",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You inspire yourself or a lover to a vengeful rage against a chosen enemy, who must be a creature that has wronged you in some way.",
                          desc: "You inspire yourself or a lover to a vengeful rage against a chosen enemy, who must be a creature that has wronged you in some way. If cast on you, the next time you are in combat with that enemy, you gain the benefits of a rage spell. If cast on a lover, he or she gains the benefits of a",
                          source: "Inner Sea World Guide, Pathfinder #17: A Memory of Darkness, Gods and Magic", isPremium: true),

                    // // MARK: - Inner Sea World Guide, Pathfinder #5: Sins of the Saviors
        )
        try await db.insertSpell(
        .make("Vision of Lamashtu", school: "Illusion (Phantasm)", levels: "cleric 7, inquisitor 6, oracle 7, shaman 7, witch 7",
                          castingTime: "10 minutes (see text)", components: "V, S",
                          range: "unlimited", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (see text);", sr: true,
                          summary: "This spell functions exactly as the spell nightmare . In addition to the effects of that spell, you can cause a second spell to be delivered when the target wakes at the",
                          desc: "This spell functions exactly as the spell nightmare . In addition to the effects of that spell, you can cause a second spell to be delivered when the target wakes at the",
                          source: "Inner Sea World Guide, Pathfinder #5: Sins of the Saviors", isPremium: true),

                    // // MARK: - Inner Sea World Guide, Seekers of Secrets
        )
        try await db.insertSpell(
        .make("Teleport Trap", school: "Abjuration", levels: "arcanist 7, sorcerer 7, wizard 7",
                          castingTime: "10 minutes", components: "V, S, M (powdered lodestone and silver worth 100 gp per 40-ft. cube)",
                          range: "medium (100 ft. + 10 ft./level)", area: "one 40-ft. cube/level (S)", targets: "",
                          duration: "1 day/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Teleport trap wards an area, redirecting all teleportation into or out of the area to a specific point within the area determined by you at the time of casting.",
                          desc: "Teleport trap wards an area, redirecting all teleportation into or out of the area to a specific point within the area determined by you at the time of casting. The destination must be an open space on a solid surface. The spell’s area overlaps walls and other solid and liquid objects (preventing intruders from bypassing the ward by teleporting into a wall or through similar means). A teleporting creature that is affected by a teleport trap can resist the effect with a Will save—if the save is successful, the creature simply doesn’t teleport at all (but the use of the teleport effect is still consumed)—either to the intended location or the",
                          source: "Inner Sea World Guide, Seekers of Secrets", isPremium: true),

                    // // MARK: - Knights of the Inner Sea
        )
        try await db.insertSpell(
        .make("Bed of Iron", school: "Necromancy", levels: "arcanist 1, inquisitor 1, magus 1, paladin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a feather or swatch of soft fabric)",
                          range: "touch", area: "", targets: "one creature touched/level",
                          duration: "8 hours",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This spell makes even the clunkiest armor feel soft as silk to the wearer.",
                          desc: "This spell makes even the clunkiest armor feel soft as silk to the wearer. The subjects of this spell are able to sleep comfortably in medium or heavy armor without suffering from fatigue the following day.",
                          source: "Knights of the Inner Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Carry Companion", school: "Transmutation", levels: "arcanist 2, druid 2, hunter 2, paladin 2, ranger 2, redmantisassassin 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of sand or limestone dust)",
                          range: "touch", area: "", targets: "one willing creature touched",
                          duration: "permanent; see text",
                          savingThrow: "none;", sr: true,
                          summary: "You touch an animal or magical beast that has a helpful attitude toward you, instantly transforming the creature into a miniature figurine of stone, small enough to fit into the palm of your hand.",
                          desc: "You touch an animal or magical beast that has a helpful attitude toward you, instantly transforming the creature into a miniature figurine of stone, small enough to fit into the palm of your hand. Creatures with an attitude of less than helpful will not tolerate this spell, and it automatically fails to work on them. An intelligent animal or magical beast must be a willing subject in order for this spell to take effect. Any items that the creature wears (such as a harness or saddle) or carries (such as those stowed in saddlebags) are transformed along with the creature. While miniaturized, the creature is under an effect similar to that of a flesh to stone spell: It is mindless and inert, and does not seem alive when viewed with spells like",
                          source: "Knights of the Inner Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Clarion Call", school: "Illusion", levels: "arcanist 1, bard 1, cleric 1, magus 1, oracle 1, redmantisassassin 1, skald 1, sorcerer 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (a piece of brass)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The subject of this spell gains two benefits. First, the affected creature gains the ability to create a sound like the blast of a mighty horn or trumpet simply by miming the action of sounding one.",
                          desc: "The subject of this spell gains two benefits. First, the affected creature gains the ability to create a sound like the blast of a mighty horn or trumpet simply by miming the action of sounding one. Second, the subject can speak in a booming voice that carries easily over great distances, lowering the DC of any check to hear what is said by –15. This spell is particularly prized by battlefield commanders and champions who wish to make themselves clearly heard or gain the attention of their allies or foes.",
                          source: "Knights of the Inner Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Emblazon Crest", school: "Transmutation", levels: "arcanist 1, magus 1, paladin 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "S, F (an example of the crest or coat of arms)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell ensures the subject touched is always able to display her proper crest and coat of arms.",
                          desc: "This spell ensures the subject touched is always able to display her proper crest and coat of arms. Any tabard or tunic worn and any shield carried by the subject while this spell is active can be made to display a coat of arms when the spell is cast. For example, even if the subject picks up a different shield, it still displays the subject’s crest, regardless of the shield’s normal appearance.",
                          source: "Knights of the Inner Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Keep Watch", school: "Enchantment", levels: "arcanist 1, hunter 1, inquisitor 1, magus 1, paladin 1, ranger 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one creature touched/2 levels",
                          duration: "8 hours or less; see text",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell enables the subjects to stand watch or keep vigil throughout the night without any ill effects. The subjects suffer no fatigue and gain all the usual benefits of a full night’s rest.",
                          desc: "This spell enables the subjects to stand watch or keep vigil throughout the night without any ill effects. The subjects suffer no fatigue and gain all the usual benefits of a full night’s rest. The subjects gain hit points as though from resting, wizards may prepare their spells as though they had slept for 8 hours, and so on. Effects that rely on actual sleep or dreaming are ineffective, though the subjects are still susceptible to effects that would put them to sleep, such as sleep or",
                          source: "Knights of the Inner Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Serren's Armor Lock", school: "Transmutation", levels: "arcanist 3, magus 2, redmantisassassin 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of rust)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one armored creature",
                          duration: "1 round/level (D)",
                          savingThrow: "Reflex partial, see text;", sr: true,
                          summary: "Upon pointing at an armored foe, you cause all of the joints of the target’s armor to stiffen as otherworldly chains wrap around the target.",
                          desc: "Upon pointing at an armored foe, you cause all of the joints of the target’s armor to stiffen as otherworldly chains wrap around the target. On a failed Reflex save, a target in heavy metal armor becomes staggered. A target in light or medium metal armor instead becomes entangled. Targets wearing no armor or nonmetallic armor are unaffected. If the target is wearing heavy metal armor and succeeds at its Reflex save, it becomes entangled instead of staggered; a target in light or medium metal armor that succeeds at its saving throw is unaffected by the spell.",
                          source: "Knights of the Inner Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Serren's Swift Girding", school: "Transmutation", levels: "arcanist 1, magus 1, paladin 1, redmantisassassin 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M (the armor to be worn)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one willing creature/level",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "With a sweep of your hand, you select a number of targets and the same number of suits of armor. The targets of this spell are immediately clad in the armor that you choose.",
                          desc: "With a sweep of your hand, you select a number of targets and the same number of suits of armor. The targets of this spell are immediately clad in the armor that you choose. The subjects of the spell must be capable of wearing the chosen armor, cannot be wearing other armor, and must be able to properly fit into the chosen armor. The chosen armor must be empty and cannot be currently worn by another creature (thus you cannot move armor from one wearer to another with this spell). Creatures armored with this spell are considered to have donned the armor properly.",
                          source: "Knights of the Inner Sea", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ward Shield", school: "Abjuration", levels: "arcanist 4, cleric 4, inquisitor 4, magus 4, oracle 4, sorcerer 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "shield touched",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "With a touch, you enchant a shield and enable it to protect its wielder from hostile spells.",
                          desc: "With a touch, you enchant a shield and enable it to protect its wielder from hostile spells. The shield grants spell resistance 10 + your caster level against spells so long as the shield can be interposed between the wielder and the spell effect. A spell shield does not provide spell resistance against area effect spells such as",
                          source: "Knights of the Inner Sea", isPremium: true),

                    // // MARK: - Kobolds of Golarion
        )
        try await db.insertSpell(
        .make("Blightburn Weapon", school: "Transmutation", levels: "alchemist 4, arcanist 5, inquisitor 4, investigator 4, magus 4, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one weapon",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You transform the target weapon into pure blightburn. The weapon functions as normal, but any creature that touches it, or that it strikes, takes 2d6 points of fire damage each round it remains in…",
                          desc: "You transform the target weapon into pure blightburn. The weapon functions as normal, but any creature that touches it, or that it strikes, takes 2d6 points of fire damage each round it remains in contact. In addition, the weapon emanates an aura of radiation that causes blightburn sickness. This is as the disease (see page 29), but with a 10-foot radius and a save DC equal to this spell’s save DC.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Chameleon Scales", school: "Transmutation", levels: "alchemist 1, arcanist 0, druid 0, hunter 0, investigator 1, ranger 1, sorcerer 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "You temporarily alter the color of your skin, hide, or scales to another option legal for your race.",
                          desc: "You temporarily alter the color of your skin, hide, or scales to another option legal for your race. You take no penalty for using Disguise to appear as a member of a different race as long as that race has the same type and color of skin, hide, or scales as you.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dark-Light", school: "Evocation", levels: "arcanist 3, cleric 3, druid 3, hunter 3, oracle 3, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a pinch of Darklands earth)",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-ft.-radius burst", targets: "living creatures without light sensitivity",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You evoke a powerful light that affects all sighted creatures that do not posses light sensitivity.",
                          desc: "You evoke a powerful light that affects all sighted creatures that do not posses light sensitivity. Those that succeed on their saves are dazzled for 1 round per level; those who fail are blinded for the same duration.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Enlarge Tail", school: "Transmutation", levels: "alchemist 1, antipaladin 1, arcanist 1, druid 1, hunter 1, investigator 1, magus 1, redmantisassassin 1, sorcerer 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "your tail",
                          duration: "1 hour/level",
                          savingThrow: "None", sr: false,
                          summary: "When attacking with your tail or tail weapons, you gain 5 feet of reach, a +1 bonus on attack rolls, and a +2 bonus on damage rolls.",
                          desc: "When attacking with your tail or tail weapons, you gain 5 feet of reach, a +1 bonus on attack rolls, and a +2 bonus on damage rolls.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lead Plating", school: "Conjuration (Creation)", levels: "alchemist 3, arcanist 2, cleric 2, druid 2, hunter 2, investigator 3, oracle 2, ranger 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (an ounce of lead)",
                          range: "touch", area: "", targets: "a creature or object weighing up to 100 lbs./level",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You enclose the target in a thin sheath of lead. This doesn’t restrict the target’s movement or functionality, but protects it from the effects of radiation and prevents the penetration of many…",
                          desc: "You enclose the target in a thin sheath of lead. This doesn’t restrict the target’s movement or functionality, but protects it from the effects of radiation and prevents the penetration of many divination spells. The lead doesn’t coat the target’s equipment.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Shadow Dragon Aspect", school: "Illusion (Shadow)", levels: "arcanist 4, bard 4, redmantisassassin 4, skald 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level",
                          savingThrow: "Will disbelief (if interacted with), see text;", sr: true,
                          summary: "You wreathe yourself in the quasi-real form of a dragon. You gain two claw attacks (1d6 plus caster level slashing damage) and a bite attack (1d8 plus caster level piercing damage).",
                          desc: "You wreathe yourself in the quasi-real form of a dragon. You gain two claw attacks (1d6 plus caster level slashing damage) and a bite attack (1d8 plus caster level piercing damage). These are primary attacks. In addition, you gain shadowy wings, granting you a fly speed equal to your base speed (good maneuverability). Your shadowy natural weapons are only half as strong as the real things, though creatures that believe them to be real are affected at full strength. A creature is permitted one Will save the first time you strike it. If it succeeds, the creature takes half damage from such attacks for the duration of the spell. If you overcome a creature’s spell resistance on your first attack, that creature remains vulnerable for the spell’s duration; otherwise, it’s immune.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Strip Scales", school: "Transmutation", levels: "arcanist 5, druid 4, hunter 4, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (a single reptile scale)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude;", sr: true,
                          summary: "You reduce the target’s racial natural armor bonus by 1 point per 3 caster levels.",
                          desc: "You reduce the target’s racial natural armor bonus by 1 point per 3 caster levels.",
                          source: "Kobolds of Golarion", isPremium: true)
        )
        try await db.insertSpell(
        .make("Unseen Engineers", school: "Conjuration (Creation)", levels: "arcanist 3, sorcerer 3, summoner 2, summoner (unchained) 2, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (materials required to construct the trap)",
                          range: "long (400 ft. + 40 ft./level)", area: "a team of tiny, invisible engineers", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure an invisible team of tiny engineers to construct a trap at alarming speed. Originating at your location, the team must remain within range of you or the spell ends.",
                          desc: "You conjure an invisible team of tiny engineers to construct a trap at alarming speed. Originating at your location, the team must remain within range of you or the spell ends. The engineers construct a mechanical trap of your choice. Construction takes a number of rounds equal to the trap’s challenge rating. The engineers must have the materials available. At the end of the construction time, use your Craft (traps) skill with a +5 bonus to determine the success of their work. If the engineers succeed, the trap is complete and the spell ends. If they fail, the materials are deposited at that location and the spell ends. If the spell’s duration ends before the trap is complete, the engineers automatically fail. The engineers move at your base speed and can carry only materials required in the construction of the desired trap. They can’t attack in any way or be killed, and dissipate if they take 12 points of damage from area attacks (they get no saves against attacks).",
                          source: "Kobolds of Golarion", isPremium: true),

                    // // MARK: - Magic Tactics Toolbox
        )
        try await db.insertSpell(
        .make("Akashic Communion", school: "Divination", levels: "arcanist 4, bard 3, medium 3, mesmerist 4, occultist 3, psychic 3, shaman 3, skald 3, sorcerer 4, spiritualist 4, witch 3, wizard 4",
                          castingTime: "10 minutes", components: "V, S, M/DF (a square of reflective silver worth 100 gp)",
                          range: "personal", area: "", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You attempt to obtain a glimpse of some specific event from the Akashic Record ( Occult Adventures 244 ), the extraplanar repository of all experiences that have ever occurred.",
                          desc: "You attempt to obtain a glimpse of some specific event from the Akashic Record ( Occult Adventures 244 ), the extraplanar repository of all experiences that have ever occurred. This allows you to attempt one Knowledge skill check of your choice per 3 caster levels you have, each with a +10 insight bonus. You are treated as trained in any Knowledge skills used for these checks, and can use this spell to reroll a Knowledge skill check you have already failed. The GM rolls these Knowledge checks in secret, as the Akashic Record is incredibly remote, and impressions gleaned from the distant repository are sometimes skewed when received. On a natural 1, the resulting answer is wildly inaccurate. This spell provides experiential guidance based on your ability to understand the flashes of insight gleaned from the Akashic Record, rather than the perfect knowledge available to those who travel to the extraplanar repository of knowledge. If you lag, discuss the answers, or go off to do anything else, the spell ends. Once you have used this spell to gain information on a specific topic or event, you cannot use it for Knowledge checks regarding that topic or event again until you have gained a caster level.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Alaznist's Jinx", school: "Evocation", levels: "antipaladin 4, arcanist 6, bard 4, cleric 6, inquisitor 5, occultist 5, oracle 6, psychic 6, shaman 5, skald 4, sorcerer 6, warpriest 6, witch 5, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You inflict a curse similar to the spell burn spellblight ( Pathfinder RPG Ultimate Magic 97 ) on a creature.",
                          desc: "You inflict a curse similar to the spell burn spellblight ( Pathfinder RPG Ultimate Magic 97 ) on a creature. Each time a spellcaster who is afflicted with this curse casts a spell or uses a spell-like ability, her skin seems to burn as though she were on fire. With a successful concentration check (DC = 15 + double the spell level of the spell cast or spell-like ability used), the spellcaster can ignore the pain of the effect, but if she fails, she loses the spell or spell slot and is staggered for a round. Unlike with the spell burn spellblight, the burning sensation is a tangible effect, visible during the act of spellcasting as an incorporeal, violet flame surrounding the caster.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bind Sage", school: "Conjuration (Calling)", levels: "arcanist 4, occultist 5, psychic 5, shaman 5, sorcerer 4, summoner 4, summoner (unchained) 4, witch 5, wizard 4",
                          castingTime: "10 minutes", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one caulborn (Pathfinder RPG Bestiary 3 48)",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This variant of planar binding is specifically used to call one of the most knowledgeable types of outsiders: the immortal and prophetic caulborn (",
                          desc: "This variant of planar binding is specifically used to call one of the most knowledgeable types of outsiders: the immortal and prophetic caulborn (",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Biting Words", school: "Evocation", levels: "bard 1, bloodrager 1, skald 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "Your voice becomes suffused with magic so that you can harm your opponents with but a word.",
                          desc: "Your voice becomes suffused with magic so that you can harm your opponents with but a word. As a standard action, you can target one opponent within 30 feet with a ranged touch attack by speaking to it, dealing an amount of damage equal to 1d6 + your Strength or Charisma modifier, whichever is higher. The damage dealt is bludgeoning, piercing, and slashing damage and can be reduced by damage reduction. Each attack you make reduces the spell’s remaining duration by 1 minute. If an attack reduces the remaining duration to 0 minutes or less, the spell ends after the attack resolves. You can attack with biting words by shouting instead of speaking intelligibly. When doing so, the amount of damage dealt by the attack is reduced to 1d4 + 1/2 your Strength or Charisma modifier (whichever is higher), but the spell doesn’t count as having the language-dependent descriptor for that attack.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bone Fists", school: "Necromancy", levels: "arcanist 2, bloodrager 2, cleric 2, druid 2, hunter 2, oracle 2, psychic 2, shaman 2, sorcerer 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (the knucklebone of a dire animal)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 creature/level, no two of which can be more than 30 feet apart",
                          duration: "1 minute/level",
                          savingThrow: "none (harmless);", sr: false,
                          summary: "The bones of your targets’ joints grow thick and sharp, protruding painfully through the skin at the knuckles, elbows, shoulders, spine, and knees.",
                          desc: "The bones of your targets’ joints grow thick and sharp, protruding painfully through the skin at the knuckles, elbows, shoulders, spine, and knees. The targets each gain a +1 bonus to natural armor and a +2 bonus on damage rolls with natural weapons, and they are treated as having armor spikes, with which they are proficient.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bouncing Bomb Admixture", school: "Transmutation", levels: "alchemist 3, investigator 3",
                          castingTime: "1 swift action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of the next bomb you create and throw during this extract’s…",
                          desc: "Upon drinking an extract created with this formula, you make a significant change to your magical reserve that modifies the nature of the next bomb you create and throw during this extract’s duration. This effect on your magical reserve has no effect on any discoveries that you use to modify your bombs, but you can only have one admixture effect (a formula with “bomb admixture” in its title) active at a time. If you drink another bomb admixture, the effects of the former bomb admixture end and the new one becomes active. When you throw your next bomb, choose one target that would normally be hit by the bomb’s splash damage. The target is affected as if it suffered a direct hit from the bomb instead.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Earsend", school: "Necromancy", levels: "alchemist 4, arcanist 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (butterfly wing)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "You cause one of your ears to tear itself free of your body and transform into a fly-like magical creature you control.",
                          desc: "You cause one of your ears to tear itself free of your body and transform into a fly-like magical creature you control. This functions like skinsend UM , except your ear is a Fine construct with a fly speed equal to your base speed and a bonus on Fly checks equal to half your caster level. Your sense of hearing functions from your animated ear as if it were connected to your head, allowing you to hear as well as you normally could from your animated ear’s vantage point.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Flash Forward", school: "Conjuration (Teleportation)", levels: "alchemist 4, antipaladin 4, arcanist 5, bard 4, bloodrager 4, inquisitor 4, investigator 4, magus 4, medium 4, occultist 4, paladin 4, psychic 5, skald 4, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (a single gear or bit of clockwork)",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "none (harmless);", sr: false,
                          summary: "You cheat the laws of time and enter into combat before reverting back to your original position. As part of the action to cast the spell, you make a charge attack against an enemy.",
                          desc: "You cheat the laws of time and enter into combat before reverting back to your original position. As part of the action to cast the spell, you make a charge attack against an enemy. You make this charge attack normally, accounting for terrain, obstacles, attacks of opportunity, attack rolls, and damage rolls. At the end of your charge action, you instantly teleport back to your original location as a free action. Any damage or conditions dealt by you or to you during this action are real and remain when you return to your original location.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Flexile Curse", school: "Transmutation", levels: "arcanist 5, bard 3, cleric 5, inquisitor 3, oracle 5, psychic 5, sorcerer 5, warpriest 5, witch 3, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You curse your target with a withering aura that degrades its armor and shield (if any). This reduces the hardness, armor bonus, and enhancement bonus of any armor or shield worn by the target by 1.",
                          desc: "You curse your target with a withering aura that degrades its armor and shield (if any). This reduces the hardness, armor bonus, and enhancement bonus of any armor or shield worn by the target by 1. For every hour the target wears a suit of armor or a shield, the hardness, armor bonus, and enhancement bonus are reduced by an additional 1. If the armor or shield’s hardness is reduced to 0, anytime the target of the curse is struck while wearing that item, there is a 20% chance that it gains the broken condition. If the enhancement bonus of magic suit of armor or shield is reduced to 0, the armor or shield loses any other special abilities it had. If the target removes the suit of armor or shield (even if it’s broken or has been drained of all enhancement bonuses), the armor or shield regains its hardness, armor bonus, and enhancement bonus at the rate of 1 per 2 hours. A suit of armor or shield broken by this curse that regains its full hardness ceases to be broken. A magic suit of armor or shield that lost its special abilities regains them when its enhancement bonus is fully restored.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hidden Blades", school: "Illusion (Glamer)", levels: "alchemist 2, antipaladin 2, arcanist 2, bard 2, inquisitor 2, investigator 2, magus 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a shard of glass)",
                          range: "touch", area: "", targets: "weapon or ammunition touched; see text",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "You render a target weapon or up to 50 pieces of ammunition invisible, granting the wielder a +20 bonus on Sleight of Hand checks made to conceal the weapon or ammunition and a +5 circumstance bonus…",
                          desc: "You render a target weapon or up to 50 pieces of ammunition invisible, granting the wielder a +20 bonus on Sleight of Hand checks made to conceal the weapon or ammunition and a +5 circumstance bonus on Bluff checks to feint with the weapon or ammunition.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Impenetrable Veil", school: "Abjuration", levels: "arcanist 9, bard 6, mesmerist 6, psychic 9, skald 6, sorcerer 9, spiritualist 6, wizard 9",
                          castingTime: "1 standard action", components: "V, S, M (dust from the Dimension of Dreams worth 1,250 gp)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You enchant the target so it is nearly impossible to detect by both magical and mundane means, granting it the following benefits.",
                          desc: "You enchant the target so it is nearly impossible to detect by both magical and mundane means, granting it the following benefits. The target gains a bonus on Stealth checks equal to half your caster level, and can use Stealth to hide from all creatures attempting to perceive it, even when it lacks concealment or cover. It can attempt a Stealth check to avoid detection from creatures using blindsight, blindsense, or any ability that functions as either (such as lifesense or tremorsense). Furthermore, the target leaves no trail and cannot be tracked unless it chooses to leave a trail. If a creature attempts to discern the target’s presence or location using divination magic (including magic items with a divination aura such as a crystal ball ), that creature must succeed at a caster level check with a DC equal to the target’s Stealth bonus to discern any information about the target, and on a failed check cannot do so for the spell’s duration.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Innocuous Shape", school: "Transmutation (Polymorph)", levels: "alchemist 4, arcanist 4, investigator 4, psychic 4, shaman 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a handfull of dandelion seeds)",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 minute/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell transforms a creature into a Medium or smaller animal or humanoid of no more than 1 Hit Die.",
                          desc: "This spell transforms a creature into a Medium or smaller animal or humanoid of no more than 1 Hit Die. If you use this spell to cause the target to take on the form of an animal, the spell functions as beast shape II . If the form is that of a humanoid, the spell can function as",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Irregular Size", school: "Transmutation", levels: "antipaladin 3, arcanist 4, bloodrager 4, cleric 3, medium 2, mesmerist 3, occultist 3, oracle 3, shaman 3, sorcerer 4, spiritualist 4, warpriest 3, witch 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You curse a creature so one set of its limbs (typically its arms, legs, or wings) shrivels in size.",
                          desc: "You curse a creature so one set of its limbs (typically its arms, legs, or wings) shrivels in size. Arms : The creature counts as one size category smaller for the purpose of determining the size of weapon it can wield. If the creature is capable of making natural attacks with its arms, the damage dealt by those attacks decreases as though the target were one size category smaller than its actual size.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Itching Curse", school: "Necromancy", levels: "antipaladin 1, arcanist 1, bard 1, druid 1, hunter 1, inquisitor 1, occultist 1, shaman 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature with 5 HD or fewer",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You curse the target with a distracting, unbearable itch. Unless the target scratches as a move action, it takes a –1 penalty on attack rolls, saving throws, skill checks, and ability checks.",
                          desc: "You curse the target with a distracting, unbearable itch. Unless the target scratches as a move action, it takes a –1 penalty on attack rolls, saving throws, skill checks, and ability checks.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Kalistocrat's Nightmare", school: "Transmutation", levels: "alchemist 2, arcanist 3, bard 2, cleric 3, inquisitor 2, investigator 2, magus 2, occultist 2, oracle 3, skald 2, sorcerer 3, warpriest 3, witch 2, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a copper piece)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level (see text)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You temporarily curse a creature so its touch lessens the value of coins it touches.",
                          desc: "You temporarily curse a creature so its touch lessens the value of coins it touches. While under the effects of this curse, whenever the target touches a coin of higher value than copper piece, that coin changes into a copper piece. The change takes place over the course of the following minute, allowing the target to interact with multiple coins before the effect of the curse becomes apparent. The affected coins are permanently transmuted from their previous material (typically gold or silver) into copper coins, though remove curse (which can affect up to 50 coins with a single casting) or a similar spell can restore them to their previous material.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lost Legacy", school: "Enchantment", levels: "arcanist 7, bard 6, cleric 7, inquisitor 6, occultist 6, oracle 7, psychic 7, skald 6, sorcerer 7, witch 6, wizard 7",
                          castingTime: "1 standard action", components: "V, S, DF/F (a holy symbol of a dead or forgotten deity, or flag of a fallen or forgotten nation)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You inflict a powerful curse on a touched creature that causes others to quickly forget positive aspects of their interactions with the target.",
                          desc: "You inflict a powerful curse on a touched creature that causes others to quickly forget positive aspects of their interactions with the target. The target cannot attempt a Diplomacy (or wild empathy or similar ability) check to improve the attitude of other creatures. Any creature that normally has an attitude of friendly or helpful toward the target must succeed at a Will save at the spell’s normal saving throw DC each time it interacts with the target, or its attitude becomes indifferent. Once this curse is removed, creatures coming back into contact with the target regain their pleasant memories of it. If their attitudes toward the target have not been reduced from indifferent, their original attitudes are restored.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Nondetection, Lesser", school: "Abjuration", levels: "alchemist 2, antipaladin 2, arcanist 2, inquisitor 2, investigator 2, ranger 3, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a drop of mercury)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like nondetection , except it blocks the effects of only divination spells and effects that target an area, rather than you or an object in your possession specifically.",
                          desc: "This spell functions like nondetection , except it blocks the effects of only divination spells and effects that target an area, rather than you or an object in your possession specifically. For example,",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Particulate Form", school: "Transmutation", levels: "arcanist 7, cleric 7, occultist 5, oracle 7, psychic 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a pinch of fine sand)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 creature/level, no two of which can be more than 30 feet apart",
                          duration: "1 round/level (D)",
                          savingThrow: "none (harmless);", sr: false,
                          summary: "The targets’ physical forms undergo a bizarre transformation. They look and function normally, but are composed of countless particles that separate and reconnect to remain whole.",
                          desc: "The targets’ physical forms undergo a bizarre transformation. They look and function normally, but are composed of countless particles that separate and reconnect to remain whole. Each target gains fast healing 1 and is immune to bleed damage, critical hits, sneak attacks, and other forms of precision damage. The value of this fast healing increases by 1 at caster levels 10th, 15th, and 20th. Any target can end the spell effect on itself as a swift action; the target then regains 5d6 hit points and can attempt an additional saving throw against any one disease or poison affecting it (at the original save DC), ending that disease or poison with a successful saving throw.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Phantasmal Reminder", school: "Illusion (Phantasm)", levels: "antipaladin 3, arcanist 3, bard 4, mesmerist 3, psychic 3, shaman 4, skald 4, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "1 round (see text)",
                          savingThrow: "Will disbelief, then Fortitude partial; see text;", sr: true,
                          summary: "You create a memory loop of a successful attack made against the target, forcing its conscious mind to recall the details of the attack in such excruciating detail that its physical body is racked by…",
                          desc: "You create a memory loop of a successful attack made against the target, forcing its conscious mind to recall the details of the attack in such excruciating detail that its physical body is racked by the recollection. This spell can affect only a creature that has taken damage since the end of your last turn. The target first can attempt a Will save to recognize the attack as unreal. If it fails that saving throw, the target must succeed at a Fortitude save or take an amount of damage equal to 1d6 × your caster level (maximum 10d6). Because the damage is a quasi-real memory of existing wounds, this damage can’t be reduced or prevented (such as by the shield other spell).",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Phasic Challenge", school: "Transmutation", levels: "arcanist 8, cleric 8, oracle 8, psychic 8, shaman 8, sorcerer 8, spiritualist 6, witch 7, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M (a scrape of a knight's banner)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "two creatures within 60 feet of one another; see text",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "You select one enemy and one willing ally as targets. The enemy gains a new Will saving throw at the beginning of each turn, and on a successful saving throw the spell ends.",
                          desc: "You select one enemy and one willing ally as targets. The enemy gains a new Will saving throw at the beginning of each turn, and on a successful saving throw the spell ends. Both targets remain visible and audible, and can see and hear other creatures, but cannot physically interact with any creature save one another. Spells or weapon attacks from the affected creatures impact only each other, though spells might affect terrain or other factors not related to other creatures. If one of the creatures becomes unconscious or dies, or if the effect is dispelled, the effect ends for both of them.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Release the Hounds", school: "Conjuration (Summoning)", levels: "arcanist 5, bard 5, druid 5, hunter 5, shaman 5, skald 5, sorcerer 5, summoner 5, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M/DF (shards of a canine's fang)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one pack of canines", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell summons a pack of canines that respond to the spellcaster’s commands and act in perfect unison, causing them to function like a swarm.",
                          desc: "This spell summons a pack of canines that respond to the spellcaster’s commands and act in perfect unison, causing them to function like a swarm. The pack uses the statistics for a winter wolf ( Pathfinder RPG Bestiary 280 ), except it loses its breath weapon, the cold subtype, and its cold special attack and gains the swarm subtype, a swarm attack that deals 3d6 points of damage, and the distraction special attack (DC 17). Whenever the pack damages an opponent with its swarm attack, it can immediately attempt a trip combat maneuver check against that creature with its trip special attack. The pack does not gain any damage reduction or immunity to damage and can be attacked by effects that target a specific number of creatures, though such attacks deal 1/4 the normal amount of damage (25%) and effects that don’t deal hit point damage are only 25% likely to work.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Roaming Pit", school: "Conjuration (Creation)", levels: "arcanist 5, cleric 6, druid 6, hunter 6, occultist 6, psychic 6, sorcerer 5, summoner 5, summoner (unchained) 5, warpriest 6, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (powered diamond dust worth 10 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "mobile 10-ft.-by-10-ft. hold, 10 ft. deep/2 levels", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "This spell functions as create pit APG , except the pit is capable of movement.",
                          desc: "This spell functions as create pit APG , except the pit is capable of movement. As a move action, you can direct the pit to move up to 20 feet, though it must always remain on a horizontal surface large enough to accommodate its area. If the pit’s movement causes it to share a space with a creature on the same horizontal surface, that creature must succeed at a Reflex saving throw or fall into the pit. Any creature that avoids falling into the pit when it reaches its new destination moves to the nearest safe space. Creatures that fall into the pit move with it if it is relocated.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Secluded Grimoire", school: "Conjuration (Summoning)", levels: "arcanist 1, magus 1, sorcerer 1, wizard 1",
                          castingTime: "1 round", components: "V, S",
                          range: "touch", area: "", targets: "spellbook touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell sends a spellbook into a random but safe location on the Ethereal Plane, where it remains indefinitely.",
                          desc: "This spell sends a spellbook into a random but safe location on the Ethereal Plane, where it remains indefinitely. When you cast this spell, the target spellbook dissolves into quickly fading lines of energy and runes that reflect all of the spells stored within. Thereafter, you can retrieve the spellbook by concentrating as a standard action, causing it to reappear in your hands. You cannot cast this spell on another spellbook if you currently have a spellbook in the Ethereal Plane. No other creatures or objects accompany the spellbook you send away, and the duration of any spells currently affecting the spellbook continue normally.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spellcurse", school: "Necromancy", levels: "antipaladin 2, cleric 3, inquisitor 2, occultist 4, oracle 3, psychic 3, shaman 4, witch 3",
                          castingTime: "1 standard action", components: "V, S, M (a fragment of a destroyed magical item)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "1 creature",
                          duration: "instantaneous",
                          savingThrow: "Will half;", sr: true,
                          summary: "You disrupt any spell energy affecting your target, causing that energy to crackle with power and harm the target.",
                          desc: "You disrupt any spell energy affecting your target, causing that energy to crackle with power and harm the target. The target takes 1d6 points of damage for each spell with a duration of 1 round or greater currently affecting it. The spells themselves are not dispelled or modified.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Symbol of Distraction", school: "Enchantment (Compulsion)", levels: "arcanist 6, bard 6, cleric 6, mesmerist 6, occultist 4, oracle 6, psychic 6, sorcerer 6, warpriest 6, witch 6, wizard 6",
                          castingTime: "10 minutes", components: "V, S, M (mercuty and phosphorus, plus powdered diamond and opal worth a total of 5,000 gp)",
                          range: "0 feet; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like symbol of death , except that all creatures within the radius of a",
                          desc: "This spell functions like symbol of death , except that all creatures within the radius of a",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Touch of Slumber", school: "Enchantment (Compulsion)", levels: "arcanist 5, bard 6, cleric 5, druid 5, hunter 5, oracle 5, psychic 6, shaman 5, skald 6, sorcerer 5, warpriest 5, witch 6, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a bit of seaweed)",
                          range: "touch", area: "", targets: "nonhostile creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions only against a creature with an attitude toward you of indifferent or better, and only if the target is not hostile toward you or your visible allies.",
                          desc: "This spell functions only against a creature with an attitude toward you of indifferent or better, and only if the target is not hostile toward you or your visible allies. A target touched by you (this touch usually requires a successful melee touch attack) must succeed at a Will saving throw or fall asleep for 2d6 hours. While asleep, the creature is helpless. For 1 minute after the creature is affected, any loud noise or rough contact causes it to awaken immediately. Thereafter, slapping or wounding an affected creature awakens it, but normal noise does not. Awakening a creature is a standard action (this is an application of the aid another action).",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Wall of Bone", school: "Necromancy", levels: "antipaladin 4, arcanist 4, bloodrager 4, cleric 4, oracle 4, psychic 4, sorcerer 4, spiritualist 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a polished humanoid femur)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "solid wall of humanoid bones with an area of up to one 5-ft. square/level", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "none;", sr: true,
                          summary: "This spell creates a vertical wall of skeletal arms that attaches itself to any solid surface. The wall of bone works identically to wall of stone except as noted above and in this spell description.",
                          desc: "This spell creates a vertical wall of skeletal arms that attaches itself to any solid surface. The wall of bone works identically to wall of stone except as noted above and in this spell description. The wall of bone is 1 inch thick per 4 caster levels and composed of up to one 5-foot square per level. The wall created must be vertical, and must rest upon a firm foundation. It cannot be used to bridge a chasm, for instance, or to act as a ramp. Each 5-foot square of the wall has hardness 4 and 7 hit points per inch of thickness. A section of wall whose hit points drops to 0 is breached. If a creature tries to break through the wall with a single attack, the DC of the Strength check is equal to 15 + 2 per inch of thickness. For each creature adjacent to the wall, the skeletal hands attempt a combat maneuver check to grapple it. The skeletal hands do not provoke attacks of opportunity. They make their attacks at the start of your turn, when the wall is summoned, or when an enemy first moves adjacent to the wall. The skeletal hands’ CMB is equal to your caster level, and they can grapple a Huge or smaller creature with no penalty. If the wall successfully grapples a foe, that foe takes 1d6 points of damage and gains the grappled condition. Grappled opponents cannot move without first breaking the grapple. All other movement is prohibited unless the creature breaks the grapple first. The wall cannot move or pin foes. Each round the wall succeeds at a grapple combat maneuver check, it deals 1d6 additional points of damage. The CMD of the wall, for the purposes of escaping the grapple, is equal to 10 + its CMB.",
                          source: "Magic Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Warp Metal", school: "Transmutation", levels: "arcanist 4, bloodrager 4, cleric 4, druid 4, hunter 4, medium 4, occultist 4, oracle 4, psychic 4, sorcerer 4, warpriest 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (a twisted wire)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 Small metal object/level, all within a 20-ft. radius; see text",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You cause metal to bend and warp, permanently destroying its straightness, form, and strength.",
                          desc: "You cause metal to bend and warp, permanently destroying its straightness, form, and strength. A warped door springs open (or becomes stuck, requiring a successful Strength check to open, at your option). A vehicle grinds to a halt and ceases to operate. Warped ranged weapons are useless. A warped melee weapon imposes a –4 penalty on attack rolls. You can warp one Small or smaller object or its equivalent per caster level. A Medium object counts as two Small objects, a Large object as four, a Huge object as eight, a Gargantuan object as 16, and a Colossal object as 32. Alternatively, you can unwarp metal (effectively warping it back to normal) with this spell.",
                          source: "Magic Tactics Toolbox", isPremium: true),

                    // // MARK: - Melee Tactics Toolbox
        )
        try await db.insertSpell(
        .make("Aura of Inviolate Ownership", school: "Abjuration", levels: "cleric 3, inquisitor 3, oracle 3, paladin 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This spell wards the attended items of all creatures it targets (items held, securely fastened to their person, or in containers on their person), enhancing each creature’s grip and protecting items…",
                          desc: "This spell wards the attended items of all creatures it targets (items held, securely fastened to their person, or in containers on their person), enhancing each creature’s grip and protecting items from loss or theft. The DC of Sleight of Hand checks to remove items warded by the spell is increased by 20, and affected creatures gain a +20 bonus to their CMDs against disarm and steal combat maneuvers.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blade Tutor's Spirit", school: "Conjuration (Creation)", levels: "antipaladin 2, arcanist 2, magus 1, paladin 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You summon an insubstantial spirit of force that resembles a cloudy vapor hovering around your fists or any melee weapons you wield.",
                          desc: "You summon an insubstantial spirit of force that resembles a cloudy vapor hovering around your fists or any melee weapons you wield. The spirit compensates for your defensive or reckless melee attacks, nudging your weapons in the proper direction. When you voluntarily use one or more actions or feats that apply penalties to attack rolls with your melee weapons (such as a charge, fighting defensively, or using the Power Attack feat), the spirit reduces the total penalty on affected attacks by 1 (to a minimum penalty of 0). The penalty is reduced by an additional 1 for every 5 caster levels you possess (to a minimum penalty of 0). Only penalties incurred by voluntary use of feats or maneuvers are reduced by this spell. The spirit can’t be attacked or harmed by physical attacks, but disintegrate ,",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Darting Duplicate", school: "Illusion (Figment)", levels: "antipaladin 1, arcanist 1, bard 1, magus 1, shaman 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 swift action", components: "V, S",
                          range: "5 ft.", area: "visual figment of the caster", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "An illusory duplicate of you steps clumsily into an adjacent square, presenting a tempting target before winking out of existence.",
                          desc: "An illusory duplicate of you steps clumsily into an adjacent square, presenting a tempting target before winking out of existence. Any creature that threatens that square must succeed at a Will save or make an attack of opportunity against the image. The image’s AC is equal to 10 + 1/2 your caster level, but as a figment, the image is unaffected by any attack.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dimensional Blade", school: "Transmutation", levels: "antipaladin 4, arcanist 6, bloodrager 4, cleric 6, inquisitor 5, magus 5, oracle 6, paladin 4, sorcerer 6, warpriest 6, wizard 6",
                          castingTime: "1 swift action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round",
                          savingThrow: "None", sr: false,
                          summary: "This spell gives you the power to turn one melee weapon in your hand into a two-dimensional object with length and height but no width.",
                          desc: "This spell gives you the power to turn one melee weapon in your hand into a two-dimensional object with length and height but no width. A sword becomes a flat image of a sword, a mace is reduced to a flat outline, and so on. The magic of the spell allows the weapon to be wielded by you normally, creating just enough depth to grasp it. Attacks made with the weapon are melee touch attacks that ignore all armor. Force effects, such as mage armor",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fiery Runes", school: "Evocation", levels: "alchemist 2, arcanist 2, bloodrager 2, druid 2, hunter 2, investigator 2, magus 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "melee weapon touched",
                          duration: "1 minute/level or until discharged (see text)",
                          savingThrow: "none;", sr: true,
                          summary: "You charge a weapon with a magic rune of fire. When the wielder of the weapon successfully strikes a foe in melee with the weapon, the wielder can discharge the rune as a swift action to deal 1d4+1…",
                          desc: "You charge a weapon with a magic rune of fire. When the wielder of the weapon successfully strikes a foe in melee with the weapon, the wielder can discharge the rune as a swift action to deal 1d4+1 points of fire damage to the target. This damage isn’t multiplied on a critical hit. If the target has spell resistance, you attempt a caster level check (1d20 + caster level) against that spell resistance when the rune is discharged. If the rune is successfully resisted, the spell is dispelled; otherwise, the rune deals damage normally. For every 2 caster levels beyond 3rd the caster possesses, the rune deals an additional 1d4+1 points of fire damage (2d4+2 at caster level 5th, 3d4+3 at 7th, and so on) to a maximum of 5d4+5 points of fire damage at caster level 11th.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Instant Weapon", school: "Conjuration (Creation)", levels: "arcanist 2, bard 2, bloodrager 2, cleric 2, inquisitor 2, magus 2, oracle 2, skald 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "0 ft.", area: "melee weapon of opaque force", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "None", sr: false,
                          summary: "You create a melee weapon sized appropriately for you from opaque force. You are considered proficient with this weapon, which acts in all ways as a masterwork weapon typical of its type.",
                          desc: "You create a melee weapon sized appropriately for you from opaque force. You are considered proficient with this weapon, which acts in all ways as a masterwork weapon typical of its type. The instant weapon has hardness 20 and the same number of hit points as a typical weapon of its type. As a force effect, it can strike and damage incorporeal creatures. If the",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Reaper's Coterie", school: "Necromancy", levels: "antipaladin 2, bloodrager 2, cleric 3, inquisitor 3, oracle 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "weapon touched",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "The target weapon becomes a reservoir of spiritual energy, fueling its destructive power by drawing in a tiny fragment of the essence of each creature it is used to defeat.",
                          desc: "The target weapon becomes a reservoir of spiritual energy, fueling its destructive power by drawing in a tiny fragment of the essence of each creature it is used to defeat. When the targeted weapon is used to reduce a living creature to 0 or fewer hit points, it gains a +1 profane bonus on damage rolls. This bonus increases by 1 for each creature reduced to 0 hit points or fewer with that weapon, up to a maximum bonus equal to 1/2 your caster level.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Rubberskin", school: "Transmutation", levels: "alchemist 4, arcanist 5, investigator 4, magus 4, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a piece of rubber or drop of tar)",
                          range: "personal", area: "", targets: "",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "Your skin becomes more elastic, distributing crushing damage efficiently. For the duration of the spell, all bludgeoning and falling damage you take is converted into nonlethal damage.",
                          desc: "Your skin becomes more elastic, distributing crushing damage efficiently. For the duration of the spell, all bludgeoning and falling damage you take is converted into nonlethal damage. This spell has no effect if you’re immune to nonlethal damage.",
                          source: "Melee Tactics Toolbox", isPremium: true)
        )
        try await db.insertSpell(
        .make("Umbral Weapon", school: "Illusion", levels: "antipaladin 2, arcanist 2, bard 2, magus 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a pair of miniature swords)",
                          range: "touch", area: "", targets: "melee weapon touched",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: true,
                          summary: "A shadowy afterimage trails behind the targeted weapon, potentially damaging foes even when the weapon misses.",
                          desc: "A shadowy afterimage trails behind the targeted weapon, potentially damaging foes even when the weapon misses. Once per round, when the weapon’s wielder misses a creature with the target weapon, the wielder can reroll the attack. If the reroll hits, the spell hits the targeted creature and deals 1d8 points of cold damage, plus 1 additional point per 2 caster levels (maximum +10). If an attacked creature has spell resistance, you must attempt a caster level check (1d20 + caster level) against that spell resistance the first time the spell damages the target. If the creature successfully resists umbral weapon , the spell is dispelled. If not, the creature takes damage as normal.",
                          source: "Melee Tactics Toolbox", isPremium: true),

                    // // MARK: - Monster Codex
        )
        try await db.insertSpell(
        .make("Air Breathing", school: "Transmutation", levels: "alchemist 3, arcanist 3, bloodrager 3, cleric 3, druid 3, hunter 3, investigator 3, magus 3, oracle 3, psychic 3, shaman 3, sorcerer 3, summoner 3, summoner (unchained) 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (flower or piece of grass)",
                          range: "touch", area: "", targets: "living aquatic creatures touched",
                          duration: "2 hours/level; see text",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The transmuted creatures can breathe air freely. Divide the duration evenly among all the creatures you touch. The spell doesn’t make creatures unable to breathe water.",
                          desc: "The transmuted creatures can breathe air freely. Divide the duration evenly among all the creatures you touch. The spell doesn’t make creatures unable to breathe water.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Amplify Stench", school: "Transmutation", levels: "arcanist 2, cleric 2, druid 2, hunter 2, oracle 2, psychic 2, shaman 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "You amplify your natural stench special ability—its save DC increases by 2, and creatures that fail their saving throws against your stench become nauseated rather than sickened.",
                          desc: "You amplify your natural stench special ability—its save DC increases by 2, and creatures that fail their saving throws against your stench become nauseated rather than sickened. If your stench ability normally causes a creature to become nauseated (such as with the foul stench ability), the radius of your stench doubles instead. This spell has no effect if you don’t possess the stench special ability.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Aura of Cannibalism", school: "Necromancy", levels: "arcanist 3, cleric 3, oracle 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of flesh from another creature of your species)",
                          range: "personal", area: "20-ft.-radius emanation centered on you", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "You emanate an aura that saps the strength of others of your kind and channels their energy into you.",
                          desc: "You emanate an aura that saps the strength of others of your kind and channels their energy into you. Each round that a creature starts its turn in the spell’s area and shares both your creature type and at least one subtype you possess (if any), that creature must succeed at a Fortitude save or take 1d4 points of damage. You gain a number of temporary hit points equal to the amount of damage you deal with this spell (maximum 10 + your caster level). These temporary hit points go away when the spell ends. As long as you have at least 5 temporary hit points while this spell is in effect, you gain a +1 competence bonus on attack rolls, saving throws, and skill checks. If you have 15 or more temporary hit points, this competence bonus increases to +2.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Blood in the Water", school: "Necromancy", levels: "arcanist 2, cleric 2, mesmerist 2, oracle 2, psychic 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "20 ft.", area: "20-ft.-radius emanation centered on you", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "As part of the casting of this spell, you must deal 1 point of piercing or slashing damage to yourself to release your blood. This causes you to take 1 point of bleed damage.",
                          desc: "As part of the casting of this spell, you must deal 1 point of piercing or slashing damage to yourself to release your blood. This causes you to take 1 point of bleed damage. While the spell is in effect, all sharks, feeders in the depths, and creatures with the blood frenzy ability in the area gain a +2 bonus to Strength and Constitution and take a –2 penalty to AC. This is treated as blood frenzy for the purposes of other feats and effects, and doesn’t stack with the effects of actual blood frenzy. If you cease bleeding, the spell immediately ends.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bouncy Body", school: "Transmutation", levels: "alchemist 1, arcanist 1, bloodrager 1, investigator 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "None", sr: false,
                          summary: "The target’s flesh becomes flexible and rubbery. It gains a +2 circumstance bonus on grapple combat maneuver checks and Escape Artist checks, as well as to its CMD against combat maneuver checks to…",
                          desc: "The target’s flesh becomes flexible and rubbery. It gains a +2 circumstance bonus on grapple combat maneuver checks and Escape Artist checks, as well as to its CMD against combat maneuver checks to grapple. Anytime the target would take falling damage, it treats falls as 20 feet shorter (minimum 0) for the purpose of determining damage. In addition, if the target falls against a hard surface, it can attempt an Acrobatics check (DC = the distance fallen) to attempt to bounce upward; success means the creature bounces upward half the distance fallen.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Control Vermin", school: "Transmutation", levels: "arcanist 3, cleric 3, druid 2, hunter 2, oracle 3, ranger 4, sorcerer 3, warpriest 3, witch 2, wizard 3",
                          castingTime: "1 standard action", components: "V, S, DF/M (a beetle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to 1 HD/level of vermin, no two of which can be more than 30 ft. apart",
                          duration: "1 hour/level",
                          savingThrow: "Will negates;", sr: false,
                          summary: "You and a number of allies less than or equal to your caster level designated upon casting can use Handle Animal and Ride checks to influence or control the targeted vermin as if they were animals…",
                          desc: "You and a number of allies less than or equal to your caster level designated upon casting can use Handle Animal and Ride checks to influence or control the targeted vermin as if they were animals and had animal-level intelligence.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Dust Ward", school: "Abjuration", levels: "arcanist 6, cleric 6, oracle 6, sorcerer 6, warpriest 6, witch 6, wizard 6",
                          castingTime: "10 minutes", components: "V, S, M (a pinch of pumice)",
                          range: "touch", area: "", targets: "one magic item",
                          duration: "permanent",
                          savingThrow: "none;", sr: false,
                          summary: "You ward a magic item against other creatures who try to learn to use or copy it. When you cast the spell, you designate one creature type, subtype, or a specific individual.",
                          desc: "You ward a magic item against other creatures who try to learn to use or copy it. When you cast the spell, you designate one creature type, subtype, or a specific individual. If the item is worn or carried for 1 continuous hour or more by a creature that doesn’t match the designation, the dust ward disintegrates the item into worthless gray dust. This destruction also occurs if the creature attempts to study the item in order to learn its properties or how to magically craft it (a",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Endothermic Touch", school: "Transmutation", levels: "arcanist 1, druid 1, hunter 1, shaman 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small bit of snakeskin)",
                          range: "touch", area: "", targets: "one living creature that has the dragon type or the reptilian subtype",
                          duration: "1 round/level",
                          savingThrow: "Fort negates;", sr: true,
                          summary: "This spell slows the metabolism and other bodily functions of a creature for a short amount of time.",
                          desc: "This spell slows the metabolism and other bodily functions of a creature for a short amount of time. The target is staggered and moves at half its normal speed (round down to the next 5-foot increment), but it can hold its breath for twice as long as normal.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Fleshy Facade", school: "Transmutation (Polymorph)", levels: "alchemist 2, arcanist 2, bard 2, inquisitor 2, investigator 2, psychic 2, skald 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "corporeal undead creature touched",
                          duration: "10 minutes/level (D)",
                          savingThrow: "yes (harmless);", sr: true,
                          summary: "The target’s flesh fills out and gains a healthy, natural color. This gives the target the appearance of a living creature of the type it was when it was still alive (if applicable).",
                          desc: "The target’s flesh fills out and gains a healthy, natural color. This gives the target the appearance of a living creature of the type it was when it was still alive (if applicable). Creatures casting spells such as detect undead must succeed at a saving throw (with a DC equal to the spell’s save DC) to detect the target’s presence, and if the target is intelligent, it gains a +10 bonus on Disguise checks to appear alive or recently deceased. If the undead has any features different from those of the type of living creature it most resembles (such as a ghoul’s elongated teeth and claws), those features shrink and become less prominent, and the subject deals damage as though it were one size smaller. This spell has no effect on creatures that are skeletal or otherwise lack flesh.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Gift of the Deep", school: "Transmutation (Polymorph)", levels: "arcanist 5, cleric 4, oracle 4, sorcerer 5, warpriest 4, wizard 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one non-mutated sahuagin/level, no two of which can be more than 30 ft. apart",
                          duration: "1 minute/level (D)",
                          savingThrow: "Fortitude negate (harmless);", sr: true,
                          summary: "You give the targets the appearance and many of the abilities of sahuagin mutants, with effects as described below. Choose one benefit for all targets of this spell.",
                          desc: "You give the targets the appearance and many of the abilities of sahuagin mutants, with effects as described below. Choose one benefit for all targets of this spell. This spell has no effect on sahuagin that are already mutants or already under the effects of gift of the deep .",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Hungry Earth", school: "Transmutation", levels: "arcanist 5, druid 5, hunter 5, sorcerer 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "20-foot-radius spread", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "The ground attempts to pull creatures beneath its surface as if hungry for the flesh of mortals.",
                          desc: "The ground attempts to pull creatures beneath its surface as if hungry for the flesh of mortals. Immediately, and at the beginning of each of your turns, every creature touching the ground within the area of the spell is the target of a grapple combat maneuver. Creatures that enter the area of effect are also automatically attacked. The ground does not provoke attacks of opportunity. The earth’s CMB is equal to 5 + your caster level for the purpose of this combat maneuver check. Attempt the combat maneuver check only once each round and apply the result to all creatures in the area of effect. Each time the ground succeeds at a combat maneuver check to grapple a foe, it drags the creature farther down, eventually forcing the creature below its surface. With the first successful check, the target gains the grappled condition. Grappled opponents can’t move without first breaking the grapple (doing so requires a successful DC 20 combat maneuver or Escape Artist check). The ground receives a +5 bonus on combat maneuver checks to grapple opponents it is already grappling. After the second successful grapple combat maneuver check, the grappled creature is pulled to the ground and becomes prone. On the third successful grapple combat maneuver check, the creature is fully buried and must hold its breath or begin suffocating. A buried creature can’t attempt to escape unless the effect ends or it breaks the grapple. The DC to escape the grapple increases to 25 for a creature that has been pulled beneath the earth.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ice Slick", school: "Evocation", levels: "arcanist 2, druid 2, hunter 2, magus 2, ranger 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "5-ft.-radius burst", targets: "",
                          duration: "instantaneous (see text)",
                          savingThrow: "None", sr: false,
                          summary: "You create a blast of intense cold, coating all solid surfaces in the area with a thin coating of ice.",
                          desc: "You create a blast of intense cold, coating all solid surfaces in the area with a thin coating of ice. Any creature in the area when the spell is cast takes 1d6 points of cold damage + 1 point per caster level (maximum +10) and falls prone; creatures that succeed at a Reflex save take half damage and don’t fall prone. Spell resistance applies to this initial effect. A creature can walk within or through the area of ice at half its normal speed with a successful DC 10 Acrobatics check. Failure by 4 or less means the creature can’t move that round (and must succeed at a Reflex save or fall); failure by 5 or more means it falls (see the Acrobatics skill on page 87 of the Pathfinder RPG Core Rulebook for details). Creatures that do not move on their turn do not need to attempt this check. A 5-foot square of ice has hardness 0 and 3 hit points. The ice is an instantaneous effect, but persists as nonmagical ice. Under temperate conditions, the ice lasts 1 minute per level. In tropical environments, it might last only half as long. In cold environments where ice and snow persist without melting, it could last indefinitely.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Ironskin", school: "Transmutation", levels: "alchemist 2, antipaladin 2, bloodrager 2, cleric 2, druid 2, hunter 2, investigator 2, oracle 2, paladin 2, psychic 2, ranger 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S, DF/M (a pinch of forge soot)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D; see text)",
                          savingThrow: "None", sr: false,
                          summary: "Your skin hardens and takes on the color and texture of rough iron.",
                          desc: "Your skin hardens and takes on the color and texture of rough iron. You gain a +4 enhancement bonus to your existing natural armor bonus (if you do not have a natural armor bonus, you are considered to have an effective natural armor bonus of +0). This enhancement bonus increases by 1 for every 4 caster levels above 4th, to a maximum of +7 at 15th level. While you’re under the effects of this spell, if an opponent confirms a critical hit or sneak attack against you with a physical weapon (not a spell or magical effect), you can dismiss this spell to negate the critical hit or sneak attack and treat it is as a normal hit. Dismissing the spell in this way is not an action, but you must be conscious and aware of the attack to do so.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Isolate", school: "Illusion (Glamer)", levels: "antipaladin 3, arcanist 3, bard 3, inquisitor 3, mesmerist 3, psychic 3, skald 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level (D)",
                          savingThrow: "Will partial;", sr: true,
                          summary: "You cause the target to become invisible and silent, but only to his allies.",
                          desc: "You cause the target to become invisible and silent, but only to his allies. Any creature with an attitude of indifferent or worse toward the target, and any creature that wishes the target harm, can see the target normally. The target can see and hear himself, can cast spells with verbal components, and can use command words normally, but any effect that requires allies to see or hear the target does not function. An ally that can see invisible creatures can both see and hear the target of isolate . If the target succeeds at its save, the duration of the spell is reduced to 1 round.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Magic Boulder", school: "Transmutation", levels: "cleric 2, druid 2, hunter 2, oracle 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "up to three boulders touched",
                          duration: "30 minutes or until discharged",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "This spell works like magic stone , except you transmute as many as three boulders (rocks up to two size categories smaller than yourself) to use with the rock throwing ability or as siege engine…",
                          desc: "This spell works like magic stone , except you transmute as many as three boulders (rocks up to two size categories smaller than yourself) to use with the rock throwing ability or as siege engine ammunition. The boulder’s damage increases by one step, and the boulder gains a +1 enhancement bonus on attack and damage rolls.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mark of the Reptile God", school: "Transmutation (Curse)", levels: "antipaladin 4, cleric 4, inquisitor 4, oracle 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "permanent",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "If you succeed at a ranged touch attack, you burn your handprint onto the flesh of a creature, dealing 1d6 points of acid damage.",
                          desc: "If you succeed at a ranged touch attack, you burn your handprint onto the flesh of a creature, dealing 1d6 points of acid damage. The mark can be placed on any exposed portion of the creature, typically the head or forearm. The flesh around the handprint becomes rough and scaly, like the hide of a lizard. It also glows with a green radiance (shedding light as a torch) when brought within 60 feet of you. While the handprint glows, the target takes a -2 penalty to AC against your attacks and on saving throws to resist any spell you cast or spell-like ability you use. Additionally, each day the target remains cursed, more and more of its flesh becomes covered in reptilian scales. The target must succeed at a Fortitude save each day or take 1d4 points of Charisma damage, 1 point of which is Charisma drain instead. A creature reduced to 0 Charisma by this effect is immediately transformed into a small, harmless cave lizard, as the baleful polymorph spell.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mud Buddy", school: "Conjuration (Creation)", levels: "arcanist 2, druid 2, hunter 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (1 pint of water)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "5 cubic feet of earth or mud",
                          duration: "1 hour/level (D) (see text)",
                          savingThrow: "None", sr: false,
                          summary: "You create a Small minion out of mud, and it obeys your commands. The mud buddy has AC 12, 10 hit points, Strength 5, and a speed of 30 feet.",
                          desc: "You create a Small minion out of mud, and it obeys your commands. The mud buddy has AC 12, 10 hit points, Strength 5, and a speed of 30 feet. It can perform any tasks an unseen servant can, plus any similar tasks its Strength allows (it’s able to lift up to 50 pounds), but instead of walking on water, it gains a swim speed of 30 feet. You can command a mud buddy to move up to 5 feet and trip an opponent (CMB = your caster level + your spellcasting ability score modifier). After the trip attempt is resolved, the spell ends. When the spell ends, the",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Scale Spikes", school: "Transmutation", levels: "alchemist 2, arcanist 2, bloodrager 2, druid 2, hunter 2, investigator 2, ranger 2, shaman 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small thorn)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature/level that is a reptile, has the dragon type, or has the reptilian subtype, and that also has a natural armor bonus of at least +1",
                          duration: "1 minute/level",
                          savingThrow: "Fort negates (harmless);", sr: true,
                          summary: "When the target is affected by this spell, its scales grow jagged spikes. These spikes act like +1 armor spikes . The subject is automatically considered proficient with these scale spikes.",
                          desc: "When the target is affected by this spell, its scales grow jagged spikes. These spikes act like +1 armor spikes . The subject is automatically considered proficient with these scale spikes. Scale Spikes, Greater",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Scale Spikes, Greater", school: "Transmutation", levels: "alchemist 2, arcanist 2, bloodrager 2, druid 2, hunter 2, investigator 2, ranger 2, shaman 2, sorcerer 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small thorn)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature/level that is a reptile, has the dragon type, or has the reptilian subtype, and that also has a natural armor bonus of at least +1",
                          duration: "1 minute/level",
                          savingThrow: "Fort negates (harmless);", sr: true,
                          summary: "This spell functions like scale spikes , except that the spikes growing out of the scales have an enhancement bonus on attack and damage rolls equal to +1 for every 4 caster levels (maximum +5).",
                          desc: "This spell functions like scale spikes , except that the spikes growing out of the scales have an enhancement bonus on attack and damage rolls equal to +1 for every 4 caster levels (maximum +5). This bonus does not allow the spikes to bypass damage reduction aside from magic.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Spellsteal", school: "Abjuration", levels: "arcanist 5, cleric 5, oracle 5, psychic 5, sorcerer 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "instantaneous and see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You create a discordant blast of energy that disrupts the target’s available magic and transfers knowledge of that magic to you.",
                          desc: "You create a discordant blast of energy that disrupts the target’s available magic and transfers knowledge of that magic to you. If the target prepares spells, it must choose one of its prepared 3rd-level spells, which is immediately lost. If the target has no 3rd-level spells prepared, it loses a 2nd-level spell it has prepared. This progresses down to a 1st-level spell if the target has no 2nd-level spells prepared, and this spell has no effect if the target also has no 1st-level spells prepared. If the spell is on your spell list, you can cast this lost spell (using your caster level) on your next turn. If the target is a spontaneous spellcaster, it loses one of its available 3rd-level spell slots. If the target has no available 3rdlevel spell slots, it must lose a 2nd-level spell slot (progressing as above). Randomly select one of the target’s spells known of that spell level; if that spell is on your spell list, you can cast it (using your caster level) on your next turn. You must provide any focus or material components to cast the stolen spell. If the target has more than one spellcasting class, choose one at random to be affected. This spell has no effect on spelllike abilities. Any spell or spell slot lost because of this spell is treated as if the caster had failed a concentration check while trying to cast—the spell or spell slot is wasted and has no effect, but it is recovered normally the next time the character prepares spells or regains spell slots.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Sundered Serpent Coil", school: "Conjuration (Creation)", levels: "arcanist 3, magus 3, sorcerer 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a snake scale)",
                          range: "medium (100 ft. + 10 ft./level)", area: "one 5-foot square", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions like black tentacles , except it creates a Large decapitated snake, which erupts from the ground and grapples a creature you specify within its 5-foot reach.",
                          desc: "This spell functions like black tentacles , except it creates a Large decapitated snake, which erupts from the ground and grapples a creature you specify within its 5-foot reach. As a standard action, you can command the snake to release its grappled target and direct it to attack a different creature.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Swarm of Fangs", school: "Conjuration (Summoning)", levels: "arcanist 3, druid 3, hunter 3, psychic 3, sorcerer 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 round", components: "V, S, M (a lizard’s tooth)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one swarm of animate teeth", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "You summon a swarm consisting of thousands of animate, flying teeth in a 10-foot-by-10-foot cube. These fangs attack all creatures within the swarm’s area.",
                          desc: "You summon a swarm consisting of thousands of animate, flying teeth in a 10-foot-by-10-foot cube. These fangs attack all creatures within the swarm’s area. You can summon the swarm so that it shares an area with other creatures, and you can move the swarm up to 40 feet each round as a move action. If you choose not to move the swarm, it automatically moves up to 40 feet to envelop the nearest creature (including you) if it has not already done so. Creatures caught inside the swarm’s area of effect take 2d6 points of damage. The fangs deal damage to all creatures sharing their area when they first appear, and at the end of their movement each round.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Transfer Regeneration", school: "Transmutation", levels: "cleric 3, druid 3, hunter 3, oracle 3, psychic 3, shaman 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "1 willing living creature",
                          duration: "1 minute",
                          savingThrow: "none;", sr: false,
                          summary: "You bestow your regenerative abilities on the target. Your regeneration stops functioning for the duration of the spell, and the target gains your regeneration.",
                          desc: "You bestow your regenerative abilities on the target. Your regeneration stops functioning for the duration of the spell, and the target gains your regeneration. For example, if you have regeneration 5 (acid or fire), your target gains regeneration 5 (acid or fire). This regeneration overlaps (does not stack) with any regeneration the creature already has, including other castings of this spell. This spell has no effect if you don’t have the regeneration ability or your regeneration isn’t functioning when you cast the spell.",
                          source: "Monster Codex", isPremium: true)
        )
        try await db.insertSpell(
        .make("Trial of Fire and Acid", school: "Evocation", levels: "arcanist 3, bloodrager 3, cleric 3, magus 3, oracle 3, shaman 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Fortitude half (see text);", sr: false,
                          summary: "The target creature is covered in burning acid that deals 1d6 points of acid damage and 1d6 points of fire damage each round.",
                          desc: "The target creature is covered in burning acid that deals 1d6 points of acid damage and 1d6 points of fire damage each round. The subject can attempt a Fortitude saving throw each round to reduce the damage by half. Dousing the target in water ends the effect (both the acid and the fire), but rolling on the ground does not extinguish the fire or affect the acid.",
                          source: "Monster Codex", isPremium: true),

                    // // MARK: - Monster Hunter's Handbook
        )
        try await db.insertSpell(
        .make("Guarding Knowledge", school: "Abjuration", levels: "alchemist 3, arcanist 3, bard 3, cleric 3, inquisitor 2, investigator 3, occultist 3, oracle 3, psychic 3, skald 3, sorcerer 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (see text)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 minute/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Upon casting this spell, choose a specific variety of monster (red dragon rather than dragon) and one of its special attacks that you have successfully identified with a Knowledge check or otherwise…",
                          desc: "Upon casting this spell, choose a specific variety of monster (red dragon rather than dragon) and one of its special attacks that you have successfully identified with a Knowledge check or otherwise researched, such as a cockatrice’s petrification ability or a spider swarm’s poison. You gain a +4 insight bonus on saving throws against the selected special attack. The bonus does not apply to saves against other monsters’ abilities of the same name, spell-like abilities, or special attacks derived from class levels or equipment. If you use a trophy from a monster of the exact same variety as an optional material component, the bonus increases to +6.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Huntmaster's Spear", school: "Transmutation", levels: "antipaladin 1, bloodrager 2, druid 2, hunter 1, inquisitor 2, magus 2, occultist 2, paladin 1, ranger 1, shaman 2",
                          castingTime: "10 minutes", components: "V, S, M/DF (see text)",
                          range: "touch", area: "", targets: "nonmagical spear touched",
                          duration: "24 hours or until discharged",
                          savingThrow: "Will negates (harmless, object);", sr: true,
                          summary: "Choose one creature type (and subtype, if applicable) from the ranger’s favored enemy list.",
                          desc: "Choose one creature type (and subtype, if applicable) from the ranger’s favored enemy list. When you cast this spell, the targeted spear hums with destructive energy and functions as a +1 spear against creatures of the selected type. You can discharge this spell in order to make an especially powerful attack with the spear. The spear’s critical range becomes 18–20 and its critical multiplier becomes ×3. If you make this attack as part of a charge action, you gain an enhancement bonus of +30 feet to your base speed while performing the charge. If you throw the spear as part of this attack, its range increment increases to 80 feet. If you cast this spell on a masterwork spear, it also gains the",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Protection from Natural Attacks", school: "Abjuration", levels: "alchemist 3, druid 4, hunter 2, investigator 3, psychic 4, ranger 2, shaman 4, spiritualist 3, summoner 3, summoner (unchained) 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (a scale from a lizard)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "Upon casting this spell, select one type of natural attack from the following: bite, claw, gore, hoof, pincers, slam, sting, swarm, tail slap, talon, tentacle, or wing.",
                          desc: "Upon casting this spell, select one type of natural attack from the following: bite, claw, gore, hoof, pincers, slam, sting, swarm, tail slap, talon, tentacle, or wing. For the duration of the spell, the target gains DR 5/— against all attacks from natural weapons of the selected type.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Repugnant Taste", school: "Transmutation", levels: "alchemist 3, bard 3, druid 4, hunter 3, investigator 3, mesmerist 3, ranger 3, shaman 4, skald 3, witch 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (mustard seed)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The target creature begins sweating a foul liquid that makes it repugnant to most living creatures.",
                          desc: "The target creature begins sweating a foul liquid that makes it repugnant to most living creatures. When a creature deals damage to the affected creature with a bite attack or the swallow whole ability, it must succeed at a Fortitude saving throw or become nauseated until the end of its next turn. After a creature has become nauseated by this spell, each subsequent failed saving throw against the spell instead gives it the sickened condition until the end of its next turn.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Revealing Light", school: "Evocation", levels: "arcanist 2, bard 1, cleric 2, inquisitor 2, medium 1, oracle 2, psychic 2, skald 1, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (piece of a mirror)",
                          range: "touch", area: "", targets: "object touched",
                          duration: "10 minutes/level",
                          savingThrow: "none;", sr: false,
                          summary: "The touched object emits a shimmering light (as per light ) that causes shadows to shift constantly in a 20-foot radius.",
                          desc: "The touched object emits a shimmering light (as per light ) that causes shadows to shift constantly in a 20-foot radius. Creatures lose any racial bonus on Stealth checks while in the area, and the light suppresses any bonuses on Stealth checks granted by visual camouflage (such as from camouflage netting",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Slick Walls", school: "Conjuration (Creation)", levels: "arcanist 2, bard 2, magus 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (drop of oil)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "30-ft.-radius emanation centered on a point in space", targets: "",
                          duration: "1 minute/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You coat all walls and ceilings within the spell’s area with a slick substance. The DC of all Climb checks for the affected surfaces increases by twice your caster level (maximum +20).",
                          desc: "You coat all walls and ceilings within the spell’s area with a slick substance. The DC of all Climb checks for the affected surfaces increases by twice your caster level (maximum +20). Creatures cannot take 10 on Climb checks while scaling the affected surfaces, even if they have a climb speed or other ability that would normally allow taking 10. This spell has no effect on magical walls or surfaces, such as the sides of a hole created with create pit APG .",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Solidify Earth", school: "Transmutation", levels: "arcanist 2, cleric 2, druid 2, hunter 2, oracle 2, shaman 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "up to two 10-foot cubes per level (S)", targets: "",
                          duration: "1 minute/level",
                          savingThrow: "Reflex negates (see text);", sr: false,
                          summary: "Stone, dirt, and other types of earth within the area become more tightly packed. Burrowing creature (including those using earth glide) treat the area as difficult terrain.",
                          desc: "Stone, dirt, and other types of earth within the area become more tightly packed. Burrowing creature (including those using earth glide) treat the area as difficult terrain. Any creature that begins its turn burrowing in the affected area becomes entangled for 1 round (Reflex negates). Tremorsense and similar senses are ineffective within the affected area. Creatures with the earth mastery special ability (such as earth elementals) double their bonus on attack and damage rolls so long as both they and their targets are touching the area affected by this spell.",
                          source: "Monster Hunter's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Telepathic Silence", school: "Illusion (Glamer)", levels: "medium 4, mesmerist 4, occultist 4, psychic 4, spiritualist 4",
                          castingTime: "1 round", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "60-ft.-radius emanation centered on a point in space", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Creatures within the area cannot send or receive telepathic messages, and anyone in the area casting a spell with a thought component must succeed at a concentration check (DC = 20 + twice the…",
                          desc: "Creatures within the area cannot send or receive telepathic messages, and anyone in the area casting a spell with a thought component must succeed at a concentration check (DC = 20 + twice the spell’s level; this includes the increased concentration DC for casting spells with a thought component) or lose the spell. Furthermore, the thoughts of creatures within the area cannot be detected, located, or read with thoughtsense, detect thoughts, or similar effects. Telepathic silence does not hinder spells that target a creature’s mind or that do not rely on communication, such as",
                          source: "Monster Hunter's Handbook", isPremium: true),

                    // // MARK: - Monster Summoner's Handbook
        )
        try await db.insertSpell(
        .make("Alter Summoned Monster", school: "Conjuration (Summoning)", levels: "antipaladin 2, arcanist 2, bard 2, cleric 2, druid 2, hunter 2, oracle 2, ranger 2, skald 2, sorcerer 2, summoner 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one summoned creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You swap a creature summoned by a conjuration (summoning) spell for a creature you could summon with a summon monster or",
                          desc: "You swap a creature summoned by a conjuration (summoning) spell for a creature you could summon with a summon monster or",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Final Sacrifice", school: "Evocation", levels: "antipaladin 3, arcanist 3, bloodrager 2, cleric 3, oracle 3, shaman 3, sorcerer 3, summoner 2, warpriest 3, witch 4, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one summoned creature",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates, then Reflex half (see text);", sr: true,
                          summary: "You disrupt the conjuring energies within a summoned creature, causing it to violently explode.",
                          desc: "You disrupt the conjuring energies within a summoned creature, causing it to violently explode. If the target fails its Fortitude save, it is immediately slain and all creatures within 20 feet of the target take 1d4 points of damage per spell level of the summoning spell that conjured the target. This damage is fire damage unless the target creature has the cold or water subtype, in which case it’s cold damage. Creatures caught in this explosion take half damage if they succeed at their Reflex saves against this spell’s DC. Final sacrifice can detonate a summoner’s eidolon, though an eidolon receives a +4 bonus on its Fortitude save unless the spell is cast by the eidolon’s own summoner. If this spell targets an eidolon, creatures within 20 feet of the eidolon take an amount of damage equal to 1d4 + 1/2 the caster level of the summoner who controlled the eidolon.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Gird Ally", school: "Abjuration", levels: "arcanist 2, cleric 2, druid 2, hunter 2, oracle 2, sorcerer 2, summoner 2, warpriest 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one summoned creature you control/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create a magical field around summoned creatures you control that deflects attacks made against them.",
                          desc: "You create a magical field around summoned creatures you control that deflects attacks made against them. The targets gain a deflection bonus to their AC equal to 1 + 1 for every 6 caster levels you possess (maximum +4 deflection bonus at 18th level). A summoner can target his eidolon with this spell.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Instant Restoration", school: "Conjuration (Healing)", levels: "cleric 4, druid 4, hunter 4, oracle 4, shaman 4, summoner 4, warpriest 4, witch 4",
                          castingTime: "1 immediate action", components: "V, S, F/DF (a thimble of water and a seed)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one summoned creature you control",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Instant restoration channels planar energy into a summoned creature. This spell can be cast as an immediate action when a summoned creature you control drops to 0 or fewer hit points.",
                          desc: "Instant restoration channels planar energy into a summoned creature. This spell can be cast as an immediate action when a summoned creature you control drops to 0 or fewer hit points. Rather than immediately disappear, the creature is healed for 4d8 hp + 1 hit point per caster level (maximum 4d8+10 hit points). If this healing brings your summoned creature’s hit point total to 1 or more hit points, it remains as if its hit points had never dropped to 0 or fewer. Creatures slain by death effects cannot be saved by instant restoration . A summoner can target his eidolon with this spell.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Master's Escape", school: "Conjuration (Teleportation)", levels: "arcanist 4, cleric 4, druid 4, hunter 4, oracle 4, sorcerer 4, summoner 3, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "you and one summoned creature you control",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create an extradimensional link between yourself and one summoned creature you control that allows you to switch places.",
                          desc: "You create an extradimensional link between yourself and one summoned creature you control that allows you to switch places. After casting master’s escape , you can teleport to your summoned creature’s space as a swift action, causing your summoned creature to teleport to your former space. If your summoned creature is reduced to 0 or fewer hit points before you can use this spell’s effect, you can teleport to a space that you can see within 30 feet as an immediate action. After using either of these effects, the spell ends. A summoner can target his eidolon with this spell.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Master's Mutation", school: "Transmutation (Polymorph)", levels: "arcanist 5, druid 5, hunter 5, sorcerer 5, summoner 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "you and one summoned creature you control",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You can mold the ephemeral substance of the Outer Planes, mutating one summoned creature that you control to better suit your needs.",
                          desc: "You can mold the ephemeral substance of the Outer Planes, mutating one summoned creature that you control to better suit your needs. Select up to two of the following abilities and grant them to the target for the spell’s duration: burrow 30 feet, climb 40 feet, constrict, darkvision 90 feet, ferocity, fly 60 feet (average maneuverability), grab, jet, low-light vision, poison, rake, scent, swim 60 feet, trample, trip, or water breathing. Additionally, instead of selecting an ability, you can replace one of the target’s primary natural attacks with another natural attack that deals the same amount of damage, such as replacing a Medium target’s bite attack (1d6) with a gore attack (1d6). If you choose to alter a creature’s natural attacks, all attacks of the chosen type are altered. A summoner can target his eidolon with this spell.",
                          source: "Monster Summoner's Handbook", isPremium: true)
        )
        try await db.insertSpell(
        .make("Summon Laborers", school: "Conjuration (Summoning)", levels: "cleric 6, oracle 6, shaman 6, summoner 6, warpriest 6, witch 6",
                          castingTime: "10 minutes", components: "V, S, F/DF (a strip of rune-inscribed parchment)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned petitioner/caster level", targets: "",
                          duration: "8 hours (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Summon laborers summons one humanoid petitioner per caster level. These petitioners hail from one plane of your choice and perform tasks at your direction.",
                          desc: "Summon laborers summons one humanoid petitioner per caster level. These petitioners hail from one plane of your choice and perform tasks at your direction. The petitioners cannot fight or travel to dangerous lands, but do assist your downtime activities ( Pathfinder RPG Ultimate Campaign 8 4) within a settlement, increasing the effect of Influence or Labor you spend by 50%, to a maximum of 1 additional point of Influence or Labor for every 2 caster levels you possess. This stacks with any increase to the effect of Influence or Labor that you receive from your followers within the settlement where the downtime activity takes place (if any).",
                          source: "Monster Summoner's Handbook", isPremium: true),

                    // // MARK: - Mythic Adventures
        )
        try await db.insertSpell(
        .make("Ascension", school: "Universal", levels: "arcanist 9, cleric 9, druid 9, oracle 9, psychic 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "1 hour", components: "V, S, F (minor artifact), M (10,000 gp in rare herbs, gems, and other exotic materials)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one non-mythic creature/3 levels",
                          duration: "2 hours/level; see text",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You imbue a number of creatures with mythic power, granting each of them 1st tier in a mythic path of its choice. The creatures immediately gain the benefits of their chosen paths.",
                          desc: "You imbue a number of creatures with mythic power, granting each of them 1st tier in a mythic path of its choice. The creatures immediately gain the benefits of their chosen paths. Divide the duration evenly among all targets. The targets retain their mythic tier only while they’re within 100 feet of the spell’s focus component. A target that goes outside this range loses its mythic tier, but instantly regains it if it moves into range again. If the focus component is destroyed while the spell is in effect, the spell immediately ends and all targets gain 1d4 permanent negative levels.",
                          source: "Mythic Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Bleed Glory", school: "Necromancy", levels: "arcanist 3, cleric 3, medium 1, mesmerist 3, oracle 3, psychic 3, sorcerer 3, warpriest 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one mythic creature",
                          duration: "1 minute/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "The mythic power cost for all path abilities, feats, spells, and other effects used by the target increases by 1.",
                          desc: "The mythic power cost for all path abilities, feats, spells, and other effects used by the target increases by 1.",
                          source: "Mythic Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Deathless", school: "Necromancy", levels: "alchemist 4, arcanist 4, cleric 4, inquisitor 4, investigator 4, medium 4, oracle 4, psychic 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The target’s soul is strongly anchored to its body, preventing death from hit point damage. No matter how low the target’s hit points get, it remains alive (though not necessarily conscious).",
                          desc: "The target’s soul is strongly anchored to its body, preventing death from hit point damage. No matter how low the target’s hit points get, it remains alive (though not necessarily conscious). This spell doesn’t prevent death from sources other than hit point damage—such as Constitution damage or drain, death effects, or energy drain. Spells that cure hit points affect the creature normally.",
                          source: "Mythic Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Lend Path", school: "Transmutation", levels: "arcanist 5, bard 4, cleric 5, druid 5, hunter 5, magus 4, medium 2, oracle 5, psychic 5, skald 4, sorcerer 5, summoner 4, summoner (unchained) 4, warpriest 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 minutes/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You temporarily transfer one of your mythic path abilities to another creature, which can use it as if it were part of the creature’s own path.",
                          desc: "You temporarily transfer one of your mythic path abilities to another creature, which can use it as if it were part of the creature’s own path. If the target is unable to expend mythic power, it can’t activate any part of the ability that requires expending uses of mythic power, but the ability otherwise functions as if the creature were 1st tier. While your path ability is transferred in this way, you can’t use it yourself (even if it’s an automatic ability or one that doesn’t require expending uses of mythic power).",
                          source: "Mythic Adventures", isPremium: true)
        )
        try await db.insertSpell(
        .make("Mythic Severance", school: "Necromancy", levels: "arcanist 4, cleric 4, inquisitor 3, medium 2, mesmerist 3, oracle 4, psychic 4, sorcerer 4, warpriest 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You restrict the target’s access to its mythic power. Each time the target attempts to cast a mythic spell, expend mythic power to activate a path ability, or use any other effect that requires…",
                          desc: "You restrict the target’s access to its mythic power. Each time the target attempts to cast a mythic spell, expend mythic power to activate a path ability, or use any other effect that requires expending uses of mythic power, it must attempt a Will saving throw against the DC of this spell. If it fails this saving throw, the creature loses its action and the ability it was attempting to use has no effect. This spell has no effect on mythic abilities that don’t require the target to expend mythic power.",
                          source: "Mythic Adventures", isPremium: true)
        )
        try await seedSpellsI()
    }
}

// MARK: - SpellEntry factory
private extension SpellEntry {
    static func make(
        _ title: String,
        school: String,
        levels: String,
        castingTime: String,
        components: String,
        range: String,
        area: String = "",
        targets: String = "",
        duration: String,
        savingThrow: String,
        sr: Bool,
        summary: String,
        desc: String,
        source: String = "Core Rulebook",
        isPremium: Bool = false
    ) -> SpellEntry {
        SpellEntry(
            id: UUID(),
            title: title,
            summary: summary,
            isPremium: isPremium,
            school: school,
            levels: levels,
            castingTime: castingTime,
            components: components,
            range: range,
            area: area,
            targets: targets,
            duration: duration,
            savingThrow: savingThrow,
            spellResistance: sr,
            description: desc,
            source: source
        )
    }
}