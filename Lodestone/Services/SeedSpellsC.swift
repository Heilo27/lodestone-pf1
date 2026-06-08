import Foundation

extension SeedDataBuilder {
    func seedSpellsC() async throws {
        try await db.insertSpell(
        .make("Passwall", school: "Transmutation", levels: "arcanist 5, mesmerist 5, psychic 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (sesame seeds)",
                          range: "touch", area: "5-ft.-by-8-ft. opening, 10 ft. deep plus 5 ft. deep per three additional levels", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create a passage through wooden, plaster, or stone walls, but not through metal or other harder materials.",
                          desc: "You create a passage through wooden, plaster, or stone walls, but not through metal or other harder materials. The passage is 10 feet deep plus an additional 5 feet deep per three caster levels above 9th (15 feet at 12th, 20 feet at 15th, and a maximum of 25 feet deep at 18th level). If the wall's thickness is more than the depth of the passage created, then a single passwall simply makes a niche or short tunnel. Several",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Permanency", school: "Universal", levels: "arcanist 5, psychic 5, sorcerer 5, wizard 5",
                          castingTime: "2 rounds", components: "V, S, M (see tables below)",
                          range: "see text", area: "", targets: "see text",
                          duration: "permanent; see text",
                          savingThrow: "none;", sr: false,
                          summary: "This spell makes the duration of certain other spells permanent. You first cast the desired spell and then follow it with the permanency spell.",
                          desc: "This spell makes the duration of certain other spells permanent. You first cast the desired spell and then follow it with the permanency spell. Depending on the spell, you must be of a minimum caster level and must expend a specific gp value of diamond dust as a material component. You can make the following spells permanent in regard to yourself.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Permanent Image", school: "Illusion (Figment)", levels: "arcanist 6, bard 6, mesmerist 6, occultist 6, psychic 6, skald 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, F (a bit of fleece)",
                          range: "long (400 ft. + 40 ft./level)", area: "figment that cannot extend beyond a 20-ft. cube + one 10-ft. cube/level (S)", targets: "",
                          duration: "permanent (D)",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "This spell functions like silent image , except that the figment includes visual, auditory, olfactory, and thermal elements, and the spell is permanent.",
                          desc: "This spell functions like silent image , except that the figment includes visual, auditory, olfactory, and thermal elements, and the spell is permanent. By concentrating, you can move the image within the limits of the range, but it is static while you are not concentrating.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Persistent Image", school: "Illusion (Figment)", levels: "arcanist 5, bard 5, medium 4, mesmerist 5, occultist 5, psychic 5, skald 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (a bit of fleece)",
                          range: "long (400 ft. + 40 ft./level)", area: "visual figment that cannot extend beyond four 10-ft. cubes + one 10-ft. cube/level (S)", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "This spell functions like silent image , except that the figment includes visual, auditory, olfactory, and thermal components, and the figment follows a script determined by you.",
                          desc: "This spell functions like silent image , except that the figment includes visual, auditory, olfactory, and thermal components, and the figment follows a script determined by you. The figment follows that script without your having to concentrate on it. The illusion can include intelligible speech if you wish.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Phantasmal Killer", school: "Illusion (Phantasm)", levels: "arcanist 4, bloodrager 4, magus 4, medium 3, mesmerist 4, psychic 4, redmantisassassin 4, sorcerer 4, spiritualist 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Will disbelief, then Fortitude partial; see text;", sr: true,
                          summary: "You create a phantasmal image of the most fearsome creature imaginable to the subject simply by forming the fears of the subject's subconscious mind into something that its conscious mind can…",
                          desc: "You create a phantasmal image of the most fearsome creature imaginable to the subject simply by forming the fears of the subject's subconscious mind into something that its conscious mind can visualize: this most horrible beast. Only the spell's subject can see the phantasmal killer . You see only a vague shape. The target first gets a Will save to recognize the image as unreal. If that save fails, the phantasm touches the subject, and the subject must succeed on a Fortitude save or die from fear. Even if the Fortitude save is successful, the subject takes 3d6 points of damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Phantom Steed", school: "Conjuration (Creation)", levels: "arcanist 3, bard 3, bloodrager 3, magus 3, occultist 3, skald 3, sorcerer 3, spiritualist 3, summoner 2, summoner (unchained) 2, wizard 3",
                          castingTime: "10 minutes", components: "V, S",
                          range: "0 ft.", area: "one quasi-real, horselike creature", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure a Large, quasi-real, horselike creature (the exact coloration can be customized as you wish).",
                          desc: "You conjure a Large, quasi-real, horselike creature (the exact coloration can be customized as you wish). It can be ridden only by you or by the one person for whom you specifically created the mount. A phantom steed has a black head and body, gray mane and tail, and smoke-colored, insubstantial hooves that make no sound. It has what seems to be a saddle, bit, and bridle. It does not fight, but animals shun it and refuse to attack it. The mount is AC 18 (–1 size, +4 natural armor, +5 Dex) and 7 hit points + 1 hit point per caster level. If it loses all its hit points, the phantom steed disappears. A phantom steed has a speed of 20 feet per two caster levels, to a maximum of 100 feet at 10th level. It can bear its rider's weight plus up to 10 pounds per caster level. These mounts gain certain powers according to caster level. A mount's abilities include those of mounts of lower caster levels.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Phantom Steed, Communal", school: "Conjuration (Creation)", levels: "arcanist 3, bard 3, bloodrager 3, magus 3, occultist 3, skald 3, sorcerer 3, spiritualist 3, summoner 2, summoner (unchained) 2, wizard 3",
                          castingTime: "10 minutes", components: "V, S",
                          range: "0 ft.", area: "one quasi-real, horselike creature", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like phantom steed , except you can summon up to six steeds, and you divide the duration in 1-hour intervals among the steeds summoned.",
                          desc: "This spell functions like phantom steed , except you can summon up to six steeds, and you divide the duration in 1-hour intervals among the steeds summoned.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Phantom Trap", school: "Illusion (Glamer)", levels: "arcanist 2, mesmerist 2, occultist 2, psychic 2, redmantisassassin 2, sorcerer 2, spiritualist 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (special dust worth 50 gp)",
                          range: "touch", area: "", targets: "object touched",
                          duration: "permanent (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell makes a lock or other small mechanism seem to be trapped to anyone who can detect traps.",
                          desc: "This spell makes a lock or other small mechanism seem to be trapped to anyone who can detect traps. You place the spell upon any small mechanism or device, such as a lock, hinge, hasp, cork, cap, or ratchet. Any character able to detect traps, or who uses any spell or device enabling trap detection, is certain a real trap exists. Of course, the effect is illusory and nothing happens if the trap is “sprung”; its primary purpose is to frighten away thieves or make them waste precious time. If another phantom trap is active within 50 feet when the spell is cast, the casting fails.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Phase Door", school: "Conjuration (Creation)", levels: "arcanist 7, psychic 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V",
                          range: "touch", area: "ethereal 5-ft.-by-8-ft. opening, 10 ft. deep + 5 ft. deep per three levels", targets: "",
                          duration: "one usage per two levels",
                          savingThrow: "none;", sr: false,
                          summary: "This spell creates an ethereal passage through wooden, plaster, or stone walls, but not other materials.",
                          desc: "This spell creates an ethereal passage through wooden, plaster, or stone walls, but not other materials. The phase door is invisible and inaccessible to all creatures except you, and only you can use the passage. You disappear when you enter the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Phase Step", school: "Conjuration (Teleportation)", levels: "arcanist 4, bard 4, magus 4, medium 3, mesmerist 4, occultist 4, psychic 4, skald 4, sorcerer 4, spiritualist 4, summoner 3, summoner (unchained) 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "you and touched objects or other touched willing creatures",
                          duration: "instantaneous",
                          savingThrow: "none and Will negates (object);", sr: true,
                          summary: "You instantly transfer the touched creature to a point you designate within range.",
                          desc: "You instantly transfer the touched creature to a point you designate within range. This otherwise functions as the spell dimension door , except that you must have line of sight and line of effect to the target’s destination for this spell’s effects to properly function.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Planar Ally", school: "Conjuration (Calling)", levels: "cleric 6, oracle 6, psychic 6, shaman 6, warpriest 6",
                          castingTime: "10 minutes", components: "V, S, M (offerings worth 1,250 gp plus payment), DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one or two called outsiders, totaling no more than 12 HD, which cannot be more than 30 ft. apart when they appear", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like lesser planar ally , except you may call a single creature of 12 HD or less, or two creatures of the same kind whose HD total no more than 12.",
                          desc: "This spell functions like lesser planar ally , except you may call a single creature of 12 HD or less, or two creatures of the same kind whose HD total no more than 12. The creatures agree to help you and request your return payment together. Planar Ally, Greater",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Planar Ally, Greater", school: "Conjuration (Calling)", levels: "cleric 6, oracle 6, psychic 6, shaman 6, warpriest 6",
                          castingTime: "10 minutes", components: "V, S, M (offerings worth 1,250 gp plus payment), DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one or two called outsiders, totaling no more than 12 HD, which cannot be more than 30 ft. apart when they appear", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like lesser planar ally , except that you may call a single creature of 18 HD or less, or up to three creatures of the same kind whose Hit Dice total no more than 18.",
                          desc: "This spell functions like lesser planar ally , except that you may call a single creature of 18 HD or less, or up to three creatures of the same kind whose Hit Dice total no more than 18. The creatures agree to help you and request your return payment together. Planar Ally, Lesser",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Planar Ally, Lesser", school: "Conjuration (Calling)", levels: "cleric 6, oracle 6, psychic 6, shaman 6, warpriest 6",
                          castingTime: "10 minutes", components: "V, S, M (offerings worth 1,250 gp plus payment), DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one or two called outsiders, totaling no more than 12 HD, which cannot be more than 30 ft. apart when they appear", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "By casting this spell, you request your deity to send you an outsider (of 6 HD or less) of the deity's choice.",
                          desc: "By casting this spell, you request your deity to send you an outsider (of 6 HD or less) of the deity's choice. If you serve no particular deity, the spell is a general plea answered by a creature sharing your philosophical alignment. If you know an individual creature's name, you may request that individual by speaking the name during the spell (though you might get a different creature anyway). You may ask the creature to perform one task in exchange for a payment from you. Tasks might range from the simple to the complex. You must be able to communicate with the creature called in order to bargain for its services. The creature called requires a payment for its services. This payment can take a variety of forms, from donating gold or magic items to an allied temple, to a gift given directly to the creature, to some other action on your part that matches the creature's alignment and goals. Regardless, this payment must be made before the creature agrees to perform any services. The bargaining takes at least 1 round, so any actions by the creature begin in the round after it arrives. A task taking up to 1 minute per caster level requires a payment of 100 gp per HD of the creature called. For a task taking up to 1 hour per caster level, the creature requires a payment of 500 gp per HD. A long-term task, one requiring up to 1 day per caster level, requires a payment of 1,000 gp per HD. A nonhazardous task requires only half the indicated payment, while an especially hazardous task might require a greater gift. Few if any creatures will accept a task that seems suicidal (remember, a called creature actually dies when it is killed, unlike a summoned creature). However, if the task is strongly aligned with the creature's ethos, it may halve or even waive the payment. At the end of its task, or when the duration bargained for expires, the creature returns to its home plane (after reporting back to you, if appropriate and possible). Note: When you use a calling spell that calls an air, chaotic, earth, evil, fire, good, lawful, or water creature, it is a spell of that type. Due to cleric spell alignment restrictions, if a cleric with an outsider subdomain wanted to create a calling diagram to improve her chances, she could enlist the aid of another caster to cast the required magic circle spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Planar Binding", school: "Conjuration (Calling)", levels: "arcanist 6, occultist 6, psychic 6, sorcerer 6, summoner 5, summoner (unchained) 6, wizard 6",
                          castingTime: "10 minutes", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one elemental or outsider with 6 HD or less",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like lesser planar binding , except that you may call a single creature of 12 HD or less, or up to three creatures of the same kind whose Hit Dice total no more than 12.",
                          desc: "This spell functions like lesser planar binding , except that you may call a single creature of 12 HD or less, or up to three creatures of the same kind whose Hit Dice total no more than 12. Each creature gets a saving throw, makes an independent attempt to escape, and must be individually persuaded to aid you. Planar Binding, Greater",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Planar Binding, Greater", school: "Conjuration (Calling)", levels: "arcanist 6, occultist 6, psychic 6, sorcerer 6, summoner 5, summoner (unchained) 6, wizard 6",
                          castingTime: "10 minutes", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one elemental or outsider with 6 HD or less",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like lesser planar binding , except that you may call a single creature of 18 HD or less, or up to three creatures of the same kind whose Hit Dice total no more than 18.",
                          desc: "This spell functions like lesser planar binding , except that you may call a single creature of 18 HD or less, or up to three creatures of the same kind whose Hit Dice total no more than 18. Each creature gets a saving throw, makes an independent attempt to escape, and must be individually persuaded to aid you. Planar Binding, Lesser",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Planar Binding, Lesser", school: "Conjuration (Calling)", levels: "arcanist 6, occultist 6, psychic 6, sorcerer 6, summoner 5, summoner (unchained) 6, wizard 6",
                          castingTime: "10 minutes", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one elemental or outsider with 6 HD or less",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "Casting this spell attempts a dangerous act: to lure a creature from another plane to a specifically prepared trap, which must lie within the spell's range.",
                          desc: "Casting this spell attempts a dangerous act: to lure a creature from another plane to a specifically prepared trap, which must lie within the spell's range. The called creature is held in the trap until it agrees to perform one service in return for its freedom. To create the trap, you must use a magic circle spell, focused inward. The kind of creature to be bound must be known and stated. If you wish to call a specific individual, you must use that individual's proper name in casting the spell. The target creature is allowed a Will saving throw. If the saving throw succeeds, the creature resists the spell. If the saving throw fails, the creature is immediately drawn to the trap (spell resistance does not keep it from being called). The creature can escape from the trap by successfully pitting its spell resistance against your caster level check, by dimensional travel, or with a successful Charisma check (DC 15 + 1/2 your caster level + your Charisma modifier). It can try each method once per day. If it breaks loose, it can flee or attack you. A",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Planar Inquiry", school: "Conjuration (Calling)", levels: "cleric 4, medium 3, oracle 4, psychic 4, shaman 4, warpriest 4",
                          castingTime: "10 minutes", components: "V, S, M (offerings worth 500 gp plus payment, see text), DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one called outsider of 6 HD or less", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "Although he was hardly the first to turn to the Outer Planes for answers, Jatembe’s dealings with outsiders in his pursuit of enlightenment are legendary, and the Magaambya credits the Old-Mage with…",
                          desc: "Although he was hardly the first to turn to the Outer Planes for answers, Jatembe’s dealings with outsiders in his pursuit of enlightenment are legendary, and the Magaambya credits the Old-Mage with the creation of this spell. This spell calls a creature from another plane to your precise location, functioning like lesser planar ally except as noted. When you call a creature using",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Plane Shift", school: "Conjuration (Teleportation)", levels: "arcanist 7, cleric 5, medium 4, oracle 5, psychic 5, shaman 7, sorcerer 7, spiritualist 5, summoner 5, summoner (unchained) 6, warpriest 5, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, F (a forked metal rod attuned to the plane of travel)",
                          range: "touch", area: "", targets: "creature touched, or up to eight willing creatures joining hands",
                          duration: "instantaneous",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You move yourself or some other creature to another plane of existence or alternate dimension.",
                          desc: "You move yourself or some other creature to another plane of existence or alternate dimension. If several willing persons link hands in a circle, as many as eight can be affected by the plane shift at the same time. Precise accuracy as to a particular arrival location on the intended plane is nigh impossible. From the Material Plane, you can reach any other plane, though you appear 5 to 500 miles (5d%) from your intended destination.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Plant Growth", school: "Transmutation", levels: "druid 3, hunter 3, ranger 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "see text", area: "", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "Plant growth has different effects depending on the version chosen.",
                          desc: "Plant growth has different effects depending on the version chosen. Overgrowth : This effect causes normal vegetation (grasses, briars, bushes, creepers, thistles, trees, vines, and so on) within long range (400 feet + 40 feet per caster level) to become thick and overgrown. The plants entwine to form a thicket or jungle that creatures must hack or force a way through. Speed drops to 5 feet, or 10 feet for Large or larger creatures. The area must have brush and trees in it for this spell to take effect. If this spell is cast on an area that is already affected by any spell or effect that enhances plants, such as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Plant Shape I", school: "Transmutation (Polymorph)", levels: "alchemist 5, arcanist 5, investigator 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "When you cast this spell you can assume the form of any Small or Medium creature of the plant type.",
                          desc: "When you cast this spell you can assume the form of any Small or Medium creature of the plant type. If the form you assume has any of the following abilities, you gain the listed ability: darkvision 60 feet, low-light vision, constrict, grab, and poison. If the form you assume does not possess the ability to move, your speed is reduced to 5 feet and you lose all other forms of movement. If the creature has vulnerability to an element, you gain that vulnerability. Small plant : If the form you take is that of a Small plant, you gain a +2 size bonus to your Constitution and a +2 natural armor bonus.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Plant Shape II", school: "Transmutation (Polymorph)", levels: "alchemist 5, arcanist 5, investigator 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as plant shape I except that it also allows you to assume the form of a Large creature of the plant type.",
                          desc: "This spell functions as plant shape I except that it also allows you to assume the form of a Large creature of the plant type. If the creature has immunity or resistance to any elements, you gain resistance 20 to those elements. If the creature has vulnerability to an element, you gain that vulnerability.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Plant Shape III", school: "Transmutation (Polymorph)", levels: "alchemist 5, arcanist 5, investigator 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as plant shape II except that it also allows you to assume the form of a Huge creature of the plant type.",
                          desc: "This spell functions as plant shape II except that it also allows you to assume the form of a Huge creature of the plant type. If the form you assume has any of the following abilities, you gain the listed ability: DR, regeneration 5, and trample.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Poison", school: "Necromancy", levels: "antipaladin 4, cleric 4, druid 3, hunter 3, mesmerist 4, occultist 4, oracle 4, shaman 4, warpriest 4, witch 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous; see text",
                          savingThrow: "Fortitude negates; see text;", sr: true,
                          summary: "Calling upon the venomous powers of natural predators, you infect the subject with a horrible poison by making a successful melee touch attack.",
                          desc: "Calling upon the venomous powers of natural predators, you infect the subject with a horrible poison by making a successful melee touch attack. This poison deals 1d3 Constitution damage per round for 6 rounds. Poisoned creatures can make a Fortitude save each round to negate the damage and end the affliction.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Poisonous Cloud", school: "Conjuration (Creation)", levels: "arcanist 2, druid 2, hunter 2, magus 2, shaman 2, sorcerer 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "fog spreads in 20-ft. radius", targets: "",
                          duration: "10 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "Poisonous cloud creates a bank of fog like that created by fog cloud , except that the vapors are toxic.",
                          desc: "Poisonous cloud creates a bank of fog like that created by fog cloud , except that the vapors are toxic. The cloud deals 1d2 points of Constitution damage per round to living creatures that fail their Fortitude saves. A creature that succeeds at its save but remains in the cloud must continue to attempt a new saving throw each round on your turn.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Polar Ray", school: "Evocation", levels: "arcanist 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, F (a white ceramic cone or prism)",
                          range: "medium (100 ft. + 10 ft./level)", area: "ray", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "A blue-white ray of freezing air and ice springs from your hand. You must succeed on a ranged touch attack with the ray to deal damage to a target.",
                          desc: "A blue-white ray of freezing air and ice springs from your hand. You must succeed on a ranged touch attack with the ray to deal damage to a target. The ray deals 1d6 points of cold damage per caster level (maximum 25d6) and 1d4 points of Dexterity drain.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Polymorph", school: "Transmutation (Polymorph)", levels: "adept 4, alchemist 5, arcanist 5, investigator 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you choose)",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell transforms a willing creature into an animal, humanoid or elemental of your choosing; the spell has no effect on unwilling creatures, nor can the creature being targeted by this spell…",
                          desc: "This spell transforms a willing creature into an animal, humanoid or elemental of your choosing; the spell has no effect on unwilling creatures, nor can the creature being targeted by this spell influence the new form assumed (apart from conveying its wishes, if any, to you verbally). If you use this spell to cause the target to take on the form of an animal or magical beast, the spell functions as beast shape II . If the form is that of an elemental, the spell functions as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Polymorph Any Object", school: "Transmutation (Polymorph)", levels: "arcanist 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M/DF (mercury, gum arabic, and smoke)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature, or one nonmagical object of up to 100 cu. ft./level",
                          duration: "see text",
                          savingThrow: "Fortitude negates (object); see text;", sr: true,
                          summary: "This spell functions like greater polymorph , except that it changes one object or creature into another.",
                          desc: "This spell functions like greater polymorph , except that it changes one object or creature into another. You can use this spell to transform all manner of objects and creatures into new forms—you aren't limited to transforming a living creature into another living form. The duration of the spell depends on how radical a change is made from the original state to its transmuted state. The duration is determined by using the following guidelines. Changed Subject Is...",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Polymorph, Greater", school: "Transmutation (Polymorph)", levels: "arcanist 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you choose)",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as polymorph except that it allows the creature to take on the form of a dragon or plant creature.",
                          desc: "This spell functions as polymorph except that it allows the creature to take on the form of a dragon or plant creature. If you use this spell to cause the target to take on the form of an animal or magical beast, it functions as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Possess Object", school: "Necromancy", levels: "alchemist 5, arcanist 5, investigator 5, sorcerer 5, summoner 4, summoner (unchained) 5, witch 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S, F (a gem or crystal worth at least 100 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one creature",
                          duration: "1 hour/level or until you return to your body",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "This spell functions as magic jar , except you transfer your mind to a single object, animating it as if using animate objects, except your mind controls the object as if it were your own body.",
                          desc: "This spell functions as magic jar , except you transfer your mind to a single object, animating it as if using animate objects, except your mind controls the object as if it were your own body. You cannot speak or cast spells while possessing the object. Because your original body is effectively dead while under the effect of this spell, this temporarily suspends disease, poisons, and other afflictions affecting you.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Power Word Blind", school: "Enchantment (Compulsion)", levels: "arcanist 7, mesmerist 6, psychic 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature with 200 hp or less",
                          duration: "see text",
                          savingThrow: "none;", sr: true,
                          summary: "You utter a single word of power that causes a creature to become blinded, whether the creature can hear the word or not. The duration of the spell depends on the target's current hit point total.",
                          desc: "You utter a single word of power that causes a creature to become blinded, whether the creature can hear the word or not. The duration of the spell depends on the target's current hit point total. Any creature that currently has 201 or more hit points is unaffected. Hit Points Duration",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Power Word Kill", school: "Enchantment (Compulsion)", levels: "arcanist 9, psychic 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature with 100 hp or less",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You utter a single word of power that instantly kills one creature of your choice, whether the creature can hear the word or not.",
                          desc: "You utter a single word of power that instantly kills one creature of your choice, whether the creature can hear the word or not. Any creature that currently has 101 or more hit points is unaffected by power word kill .",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Power Word Stun", school: "Enchantment (Compulsion)", levels: "arcanist 8, psychic 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 standard action", components: "V",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature with 150 hp or less",
                          duration: "see text",
                          savingThrow: "none;", sr: true,
                          summary: "You utter a single word of power that instantly causes one creature of your choice to become stunned, whether the creature can hear the word or not.",
                          desc: "You utter a single word of power that instantly causes one creature of your choice to become stunned, whether the creature can hear the word or not. The duration of the spell depends on the target's current hit point total. Any creature that currently has 151 or more hit points is unaffected by power word stun .",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Prayer", school: "Enchantment (Compulsion)", levels: "cleric 3, inquisitor 3, oracle 3, paladin 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "40 ft.", area: "all allies and foes within a 40-ft.-radius burst centered on you", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: true,
                          summary: "You bring special favor upon yourself and your allies while bringing disfavor to your enemies.",
                          desc: "You bring special favor upon yourself and your allies while bringing disfavor to your enemies. You and each of your allies gain a +1 luck bonus on attack rolls, weapon damage rolls, saves, and skill checks, while each of your foes takes a –1 penalty on such rolls.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Prestidigitation", school: "Universal", levels: "arcanist 0, bard 0, magus 0, medium 0, mesmerist 0, psychic 0, skald 0, sorcerer 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "10 ft.", area: "", targets: "",
                          duration: "1 hour",
                          savingThrow: "see text;", sr: false,
                          summary: "Prestidigitations are minor tricks that novice spellcasters use for practice. Once cast, a prestidigitation spell enables you to perform simple magical effects for 1 hour.",
                          desc: "Prestidigitations are minor tricks that novice spellcasters use for practice. Once cast, a prestidigitation spell enables you to perform simple magical effects for 1 hour. The effects are minor and have severe limitations. A prestidigitation can slowly lift 1 pound of material. It can color, clean, or soil items in a 1-foot cube each round. It can chill, warm, or flavor 1 pound of nonliving material. It cannot deal damage or affect the concentration of spellcasters.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Prismatic Sphere", school: "Abjuration", levels: "arcanist 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V",
                          range: "10 ft.", area: "10-ft.-radius sphere centered on you", targets: "",
                          duration: "10 min./level (D)",
                          savingThrow: "see text;", sr: false,
                          summary: "This spell functions like prismatic wall , except you conjure up an immobile, opaque globe of shimmering, multicolored light that surrounds you and protects you from all forms of attack.",
                          desc: "This spell functions like prismatic wall , except you conjure up an immobile, opaque globe of shimmering, multicolored light that surrounds you and protects you from all forms of attack. The sphere flashes in all colors of the visible spectrum.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Prismatic Spray", school: "Evocation", levels: "arcanist 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "see text;", sr: true,
                          summary: "This spell causes seven shimmering, multicolored beams of light to spray from your hand. Each beam has a different power.",
                          desc: "This spell causes seven shimmering, multicolored beams of light to spray from your hand. Each beam has a different power. Creatures in the area of the spell with 8 HD or less are automatically blinded for 2d4 rounds. Every creature in the area is randomly struck by one or more beams, which have additional effects. 1d8 Color of Beam",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Prismatic Wall", school: "Abjuration", levels: "arcanist 8, psychic 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "wall 4 ft./level wide, 2 ft./level high", targets: "",
                          duration: "10 min./level (D)",
                          savingThrow: "see text;", sr: false,
                          summary: "Prismatic wall creates a vertical, opaque wall—a shimmering, multicolored plane of light that protects you from all forms of attack.",
                          desc: "Prismatic wall creates a vertical, opaque wall—a shimmering, multicolored plane of light that protects you from all forms of attack. The wall flashes with seven colors, each of which has a distinct power and purpose. The wall is immobile, and you can pass through and remain near the wall without harm. Any other creature with less than 8 HD that is within 20 feet of the wall is blinded by the colors for 2d4 rounds if it looks at the wall. The wall's maximum proportions are 4 feet wide per caster level and 2 feet high per caster level. A",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Produce Flame", school: "Evocation", levels: "druid 1, hunter 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "0 ft.", area: "flame in your palm", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "Flames as bright as a torch appear in your open hand. The flames harm neither you nor your equipment. In addition to providing illumination, the flames can be hurled or used to touch enemies.",
                          desc: "Flames as bright as a torch appear in your open hand. The flames harm neither you nor your equipment. In addition to providing illumination, the flames can be hurled or used to touch enemies. You can strike an opponent with a melee touch attack, dealing fire damage equal to 1d6 + 1 point per caster level (maximum +5). Alternatively, you can hurl the flames up to 120 feet as a thrown weapon. When doing so, you attack with a ranged touch attack (with no range penalty) and deal the same damage as with the melee attack. No sooner do you hurl the flames than a new set appears in your hand. Each attack you make reduces the remaining duration by 1 minute. If an attack reduces the remaining duration to 0 minutes or less, the spell ends after the attack resolves. This spell does not function underwater.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Prognostication", school: "Divination", levels: "cleric 4, inquisitor 4, medium 3, oracle 4, psychic 4, sahirafiyun 4, shaman 4, spiritualist 4, warpriest 4, witch 4",
                          castingTime: "10 minutes", components: "V, S, M (incense and an appropriate offering worth 25 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You glimpse the future. Prognostication functions as",
                          desc: "You glimpse the future. Prognostication functions as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Programmed Image", school: "Illusion (Figment)", levels: "arcanist 6, bard 6, mesmerist 6, psychic 6, skald 6, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (fleece and jade dust worth 25 gp)",
                          range: "long (400 ft. + 40 ft./level)", area: "visual figment that cannot extend beyond a 20-ft. cube + one 10-ft. cube/level (S)", targets: "",
                          duration: "permanent until triggered, then 1 round/level",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "This spell functions like silent image , except that this spell's figment activates when a specific condition occurs.",
                          desc: "This spell functions like silent image , except that this spell's figment activates when a specific condition occurs. The figment includes visual, auditory, olfactory, and thermal elements, including intelligible speech. You set the triggering condition (which may be a special word) when casting the spell. The event that triggers the illusion can be as general or as specific and detailed as desired but must be based on an audible, tactile, olfactory, or visual trigger. The trigger cannot be based on some quality not normally obvious to the senses, such as alignment. See",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Project Image", school: "Illusion (Shadow)", levels: "arcanist 7, bard 6, mesmerist 6, occultist 6, psychic 7, skald 6, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a small replica of you worth 5 gp)",
                          range: "medium (100 ft. + 10 ft./level)", area: "one shadow duplicate", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "You tap energy from the Plane of Shadow to create a quasi-real, illusory version of yourself. The projected image looks, sounds, and smells like you but is intangible.",
                          desc: "You tap energy from the Plane of Shadow to create a quasi-real, illusory version of yourself. The projected image looks, sounds, and smells like you but is intangible. The projected image mimics your actions (including speech) unless you direct it to act differently (which is a move action). You can see through its eyes and hear through its ears as if you were standing where it is, and during your turn you can switch from using its senses to using your own, or back again, as a free action. While you are using its senses, your body is considered blinded and deafened. If you desire, any spell you cast whose range is touch or greater can originate from the projected image instead of from you. The projected image can't cast any spells on itself except for illusion spells. The spells affect other targets normally, despite originating from the projected image. Objects are affected by the projected image as if they had succeeded on their Will save. You must maintain line of effect to the projected image at all times. If your line of effect is obstructed, the spell ends. If you use",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Arrows", school: "Abjuration", levels: "alchemist 2, arcanist 2, bloodrager 2, investigator 2, psychic 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (a piece of tortoiseshell or turtle shell)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level or until discharged",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The warded creature gains resistance to ranged weapons. The subject gains damage reduction 10/magic against ranged weapons.",
                          desc: "The warded creature gains resistance to ranged weapons. The subject gains damage reduction 10/magic against ranged weapons. This spell doesn't grant you the ability to damage creatures with similar damage reduction. Once the spell has prevented a total of 10 points of damage per caster level (maximum 100 points), it is discharged.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Arrows, Communal", school: "Abjuration", levels: "alchemist 2, arcanist 2, bloodrager 2, investigator 2, psychic 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, F (a piece of tortoiseshell or turtle shell)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level or until discharged",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like protection from arrows , except you divide the duration in 1-hour intervals among the creatures touched.",
                          desc: "This spell functions like protection from arrows , except you divide the duration in 1-hour intervals among the creatures touched. Once the spell absorbs 10 points of damage per caster level (maximum 100 points) for a subject, the spell’s effects end for that subject.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Chaos", school: "Abjuration", levels: "adept 1, arcanist 1, bloodrager 1, cleric 1, inquisitor 1, medium 1, oracle 1, paladin 1, shaman 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like protection from evil , except that the deflection and resistance bonuses apply to attacks made by chaotic creatures.",
                          desc: "This spell functions like protection from evil , except that the deflection and resistance bonuses apply to attacks made by chaotic creatures. The target receives a new saving throw against control by chaotic creatures and chaotic summoned creatures cannot touch the target.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Chaos, Communal", school: "Abjuration", levels: "adept 1, arcanist 1, bloodrager 1, cleric 1, inquisitor 1, medium 1, oracle 1, paladin 1, shaman 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like protection from chaos , except you divide the duration in 1-minute intervals among the creatures touched. Protection from Evil, Communal",
                          desc: "This spell functions like protection from chaos , except you divide the duration in 1-minute intervals among the creatures touched. Protection from Evil, Communal",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Energy", school: "Abjuration", levels: "alchemist 3, arcanist 3, bloodrager 3, cleric 3, druid 3, hunter 2, inquisitor 3, investigator 3, occultist 3, oracle 3, psychic 3, ranger 2, shaman 3, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level or until discharged",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "Protection from energy grants temporary immunity to the type of energy you specify when you cast it (acid, cold, electricity, fire, or sonic).",
                          desc: "Protection from energy grants temporary immunity to the type of energy you specify when you cast it (acid, cold, electricity, fire, or sonic). When the spell absorbs 12 points per caster level of energy damage (to a maximum of 120 points at 10th level), it is discharged. Protection from energy overlaps (and does not stack with)",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Energy, Communal", school: "Abjuration", levels: "alchemist 3, arcanist 3, bloodrager 3, cleric 3, druid 3, hunter 2, inquisitor 3, investigator 3, occultist 3, oracle 3, psychic 3, ranger 2, shaman 3, sorcerer 3, spiritualist 3, summoner 3, summoner (unchained) 3, warpriest 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level or until discharged",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This spell functions like protection from energy , except you divide the duration in 10-minute intervals among the creatures touched.",
                          desc: "This spell functions like protection from energy , except you divide the duration in 10-minute intervals among the creatures touched. Once the spell absorbs 12 points of energy damage per caster level (maximum 120 points) for a subject, the spell’s effects end for that subject.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Evil", school: "Abjuration", levels: "adept 1, arcanist 1, bloodrager 1, cleric 1, inquisitor 1, medium 1, oracle 1, paladin 1, shaman 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell wards a creature from attacks by evil creatures, from mental control, and from summoned creatures. It creates a magical barrier around the subject at a distance of 1 foot.",
                          desc: "This spell wards a creature from attacks by evil creatures, from mental control, and from summoned creatures. It creates a magical barrier around the subject at a distance of 1 foot. The barrier moves with the subject and has three major effects. First, the subject gains a +2 deflection bonus to AC and a +2 resistance bonus on saves. Both these bonuses apply against attacks made or effects created by evil creatures. Second, the subject immediately receives another saving throw (if one was allowed to begin with) against any spells or effects that possess or exercise mental control over the creature (including enchantment [charm] effects and enchantment [compulsion] effects, such as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Evil, Communal", school: "Abjuration", levels: "adept 1, arcanist 1, bloodrager 1, cleric 1, inquisitor 1, medium 1, oracle 1, paladin 1, shaman 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like protection from evil , except you divide the duration in 1-minute intervals among the creatures touched.",
                          desc: "This spell functions like protection from evil , except you divide the duration in 1-minute intervals among the creatures touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Good", school: "Abjuration", levels: "adept 1, arcanist 1, bloodrager 1, cleric 1, inquisitor 1, medium 1, oracle 1, paladin 1, shaman 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like protection from evil , except that the deflection and resistance bonuses apply to attacks made by good creatures.",
                          desc: "This spell functions like protection from evil , except that the deflection and resistance bonuses apply to attacks made by good creatures. The target receives a new saving throw against control by good creatures and good summoned creatures cannot touch the target.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Good, Communal", school: "Abjuration", levels: "adept 1, arcanist 1, bloodrager 1, cleric 1, inquisitor 1, medium 1, oracle 1, paladin 1, shaman 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like protection from good , except you divide the duration in 1-minute intervals among the creatures touched.",
                          desc: "This spell functions like protection from good , except you divide the duration in 1-minute intervals among the creatures touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Law", school: "Abjuration", levels: "adept 1, arcanist 1, bloodrager 1, cleric 1, inquisitor 1, medium 1, oracle 1, paladin 1, shaman 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like protection from evil , except that the deflection and resistance bonuses apply to attacks made by lawful creatures.",
                          desc: "This spell functions like protection from evil , except that the deflection and resistance bonuses apply to attacks made by lawful creatures. The target receives a new saving throw against control by lawful creatures and lawful summoned creatures cannot touch the target.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Law, Communal", school: "Abjuration", levels: "adept 1, arcanist 1, bloodrager 1, cleric 1, inquisitor 1, medium 1, oracle 1, paladin 1, shaman 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, M/DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: false,
                          summary: "This spell functions like protection from law , except you divide the duration in 1-minute intervals among the creatures touched.",
                          desc: "This spell functions like protection from law , except you divide the duration in 1-minute intervals among the creatures touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Protection from Spells", school: "Abjuration", levels: "arcanist 8, psychic 8, sorcerer 8, summoner 6, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M (diamond worth 500 gp), F (One 1,000 gp diamond per target. Each subject must carry the gem for the duration of the spell. If a subject loses the gem, the spell ceases to affect him.)",
                          range: "touch", area: "", targets: "up to one creature touched per four levels",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject gains a +8 resistance bonus on saving throws against spells and spell-like abilities (but not against supernatural and extraordinary abilities).",
                          desc: "The subject gains a +8 resistance bonus on saving throws against spells and spell-like abilities (but not against supernatural and extraordinary abilities).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Prying Eyes", school: "Divination", levels: "arcanist 5, mesmerist 5, occultist 5, psychic 5, sorcerer 5, spiritualist 5, witch 5, wizard 5",
                          castingTime: "1 minute", components: "V, S, M (a handful of crystal marbles)",
                          range: "1 mile", area: "10 or more levitating eyes", targets: "",
                          duration: "1 hour/level; see text (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create a number of semitangible, visible magical orbs (called “eyes”) equal to 1d4 + your caster level. These eyes move out, scout around, and return as you direct them when casting the spell.",
                          desc: "You create a number of semitangible, visible magical orbs (called “eyes”) equal to 1d4 + your caster level. These eyes move out, scout around, and return as you direct them when casting the spell. Each eye can see 120 feet (normal vision only) in all directions. While the individual eyes are quite fragile, they're small and difficult to spot. Each eye is a Fine construct, about the size of a small apple, that has 1 hit point, AC 18 (+8 bonus for its size), flies at a speed of 30 feet with a +20 bonus on Fly skill checks and a +16 bonus on Stealth skill checks. It has a Perception modifier equal to your caster level (maximum +15) and is subject to illusions, darkness, fog, and any other factors that affect your ability to receive visual information about your surroundings. An eye traveling in darkness must find its way by touch. When you create the eyes, you specify instructions you want them to follow in a command of no more than 25 words. Any knowledge you possess is known by the eyes as well. In order to report their findings, the eyes must return to your hand. Each replays in your mind all it has seen during its existence. It takes an eye 1 round to replay 1 hour of recorded images. After relaying its findings, an eye disappears. If an eye ever gets more than 1 mile away from you, it instantly ceases to exist. However, your link with the eye is such that you won't know if the eye was destroyed because it wandered out of range or because of some other event. The eyes exist for up to 1 hour per caster level or until they return to you.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Prying Eyes, Greater", school: "Divination", levels: "arcanist 8, psychic 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 minute", components: "V, S, M (a handful of crystal marbles)",
                          range: "1 mile", area: "10 or more levitating eyes", targets: "",
                          duration: "1 hour/level; see text (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like prying eyes , except that the eyes can see all things as they actually are, just as if they had",
                          desc: "This spell functions like prying eyes , except that the eyes can see all things as they actually are, just as if they had",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Purify Food and Drink", school: "Transmutation", levels: "adept 0, cleric 0, druid 0, hunter 0, occultist 0, oracle 0, shaman 0, warpriest 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "10 ft.", area: "", targets: "1 cu. ft./level of contaminated food and water",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "This spell makes spoiled, rotten, diseased, poisonous, or otherwise contaminated food and water pure and suitable for eating and drinking.",
                          desc: "This spell makes spoiled, rotten, diseased, poisonous, or otherwise contaminated food and water pure and suitable for eating and drinking. This spell does not prevent subsequent natural decay or spoilage. Unholy water and similar food and drink of significance is spoiled by purify food and drink , but the spell has no effect on creatures of any type nor upon magic potions. Water weighs about 8 pounds per gallon. One cubic foot of water contains roughly 8 gallons and weighs about 60 pounds.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Pyrotechnics", school: "Transmutation", levels: "arcanist 2, bard 2, bloodrager 2, magus 2, mesmerist 2, psychic 2, redmantisassassin 2, skald 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (one fire source)",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "one fire source, up to a 20-ft. cube",
                          duration: "1d4+1 rounds, or 1d4+1 rounds after creatures leave the smoke cloud; see text",
                          savingThrow: "Will negates or Fortitude negates; see text;", sr: true,
                          summary: "Pyrotechnics turns a fire into a burst of blinding fireworks or a thick cloud of choking smoke, depending on your choice. The spell uses one fire source, which is immediately extinguished.",
                          desc: "Pyrotechnics turns a fire into a burst of blinding fireworks or a thick cloud of choking smoke, depending on your choice. The spell uses one fire source, which is immediately extinguished. A fire so large that it exceeds a 20-foot cube is only partly extinguished. Magical fires are not extinguished, although a fire-based creature used as a source takes 1 point of damage per caster level. Fireworks : The fireworks are a flashing, fiery, momentary burst of glowing, colored aerial lights. This effect causes creatures within 120 feet of the fire source to become blinded for 1d4+1 rounds (Will negates). These creatures must have line of sight to the fire to be affected. Spell resistance can prevent blindness.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Quench", school: "Transmutation", levels: "druid 3, hunter 3",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none or Will negates (object);", sr: true,
                          summary: "Quench is often used to put out forest fires and other conflagrations. It extinguishes all nonmagical fires in its area.",
                          desc: "Quench is often used to put out forest fires and other conflagrations. It extinguishes all nonmagical fires in its area. The spell also dispels any fire spells in its area, though you must succeed on a dispel check (1d20 +1 per caster level, maximum +15) against each spell to dispel it. The DC to dispel such spells is 11 + the caster level of the fire spell. Each creature with the fire subtype within the area of a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Rage", school: "Enchantment (Compulsion)", levels: "alchemist 3, arcanist 3, bard 2, bloodrager 3, investigator 3, mesmerist 2, psychic 3, skald 2, sorcerer 3, summoner 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one willing living creature per three levels, no two of which may be more than 30 ft. apart",
                          duration: "concentration + 1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "Each affected creature gains a +2 morale bonus to Strength and Constitution, a +1 morale bonus on Will saves, and a –2 penalty to AC.",
                          desc: "Each affected creature gains a +2 morale bonus to Strength and Constitution, a +1 morale bonus on Will saves, and a –2 penalty to AC. The effect is otherwise identical with a barbarian's rage except that the subjects aren't fatigued at the end of the rage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Rain of Frogs", school: "Conjuration (Summoning)", levels: "arcanist 2, bard 2, druid 2, hunter 2, shaman 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 round", components: "V, S, M/DF (a square of red cloth)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one swarm of bats, rats, or spiders", targets: "",
                          duration: "concentration + 2 rounds",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as summon swarm , except you summon a swarm of poisonous frogs.",
                          desc: "This spell functions as summon swarm , except you summon a swarm of poisonous frogs. This swarm has the statistics of a centipede swarm, except it has the animal type and its poison deals Constitution damage instead of Dexterity damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Rainbow Pattern", school: "Illusion (Pattern)", levels: "arcanist 4, bard 4, psychic 4, redmantisassassin 4, skald 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V (bard only), S, M (a piece of phosphor), F (a crystal prism); see text",
                          range: "medium (100 ft. + 10 ft./level)", area: "colorful lights with a 20-ft.-radius spread", targets: "",
                          duration: "concentration + 1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "A glowing, rainbow-hued pattern of interweaving colors fascinates those within it. Rainbow pattern fascinates a maximum of 24 HD of creatures. Creatures with the fewest HD are affected first.",
                          desc: "A glowing, rainbow-hued pattern of interweaving colors fascinates those within it. Rainbow pattern fascinates a maximum of 24 HD of creatures. Creatures with the fewest HD are affected first. Among creatures with equal HD, those who are closest to the spell's point of origin are affected first. An affected creature that fails its saves is fascinated by the pattern. With a simple gesture (a free action), you can make the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Raise Animal Companion", school: "Conjuration (Healing)", levels: "adept 5, cleric 5, oracle 5, shaman 6, spiritualist 5, warpriest 5, witch 6",
                          castingTime: "1 minute", components: "V, S, M (diamond worth 5,000 gp), DF",
                          range: "touch", area: "", targets: "dead creature touched",
                          duration: "instantaneous",
                          savingThrow: "none, see text;", sr: true,
                          summary: "This spell functions as raise dead , but it only affects an animal companion, familiar, or paladin’s bonded mount.",
                          desc: "This spell functions as raise dead , but it only affects an animal companion, familiar, or paladin’s bonded mount.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Raise Dead", school: "Conjuration (Healing)", levels: "adept 5, cleric 5, oracle 5, shaman 6, spiritualist 5, warpriest 5, witch 6",
                          castingTime: "1 minute", components: "V, S, M (diamond worth 5,000 gp), DF",
                          range: "touch", area: "", targets: "dead creature touched",
                          duration: "instantaneous",
                          savingThrow: "none, see text;", sr: true,
                          summary: "You restore life to a deceased creature. You can raise a creature that has been dead for no longer than 1 day per caster level. In addition, the subject's soul must be free and willing to return.",
                          desc: "You restore life to a deceased creature. You can raise a creature that has been dead for no longer than 1 day per caster level. In addition, the subject's soul must be free and willing to return. If the subject's soul is not willing to return, the spell does not work; therefore, a subject that wants to return receives no saving throw. Coming back from the dead is an ordeal. The subject of the spell gains two permanent negative levels when it is raised, just as if it had been hit by an energy-draining creature. If the subject is 1st level, it takes 2 points of Constitution drain instead (if this would reduce its Con to 0 or less, it can't be raised). A character who died with spells prepared has a 50% chance of losing any given spell upon being raised. A spellcasting creature that doesn't prepare spells (such as a sorcerer) has a 50% chance of losing any given unused spell slot as if it had been used to cast a spell. A raised creature has a number of hit points equal to its current HD. Any ability scores damaged to 0 are raised to 1. Normal poison and normal disease are cured in the process of raising the subject, but magical diseases and curses are not undone. While the spell closes mortal wounds and repairs lethal damage of most kinds, the body of the creature to be raised must be whole. Otherwise, missing parts are still missing when the creature is brought back to life. None of the dead creature's equipment or possessions are affected in any way by this spell. A creature who has been turned into an undead creature or killed by a death effect can't be raised by this spell. Constructs, elementals, outsiders, and undead creatures can't be raised. The spell cannot bring back a creature that has died of old age.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Ray of Enfeeblement", school: "Necromancy", levels: "arcanist 1, bloodrager 1, magus 1, mesmerist 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "ray", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Fortitude half;", sr: true,
                          summary: "A coruscating ray springs from your hand. You must succeed on a ranged touch attack to strike a target. The subject takes a penalty to Strength equal to 1d6+1 per two caster levels (maximum 1d6+5).",
                          desc: "A coruscating ray springs from your hand. You must succeed on a ranged touch attack to strike a target. The subject takes a penalty to Strength equal to 1d6+1 per two caster levels (maximum 1d6+5). The subject's Strength score cannot drop below 1. A successful Fortitude save reduces this penalty by half. This penalty does not stack with itself. Apply the highest penalty instead.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Ray of Exhaustion", school: "Necromancy", levels: "arcanist 3, bloodrager 3, magus 3, mesmerist 3, sorcerer 3, spiritualist 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a drop of sweat)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "ray", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Fortitude partial; see text;", sr: true,
                          summary: "A black ray projects from your pointing finger. You must succeed on a ranged touch attack with the ray to strike a target. The subject is immediately exhausted for the spell's duration.",
                          desc: "A black ray projects from your pointing finger. You must succeed on a ranged touch attack with the ray to strike a target. The subject is immediately exhausted for the spell's duration. A successful Fortitude save means the creature is only fatigued. A character that is already fatigued instead becomes exhausted. This spell has no effect on a creature that is already exhausted. Unlike normal exhaustion or fatigue, the effect ends as soon as the spell's duration expires.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Ray of Frost", school: "Evocation", levels: "arcanist 0, magus 0, sorcerer 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "ray", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "A ray of freezing air and ice projects from your pointing finger. You must succeed on a ranged touch attack with the ray to deal damage to a target. The ray deals 1d3 points of cold damage.",
                          desc: "A ray of freezing air and ice projects from your pointing finger. You must succeed on a ranged touch attack with the ray to deal damage to a target. The ray deals 1d3 points of cold damage.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Ray of Sickening", school: "Necromancy", levels: "arcanist 3, bloodrager 3, magus 3, mesmerist 3, sorcerer 3, spiritualist 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a drop of sweat)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "ray", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Fortitude partial; see text;", sr: true,
                          summary: "This spell functions as ray of exhaustion , except the target is sickened if it fails its save and unaffected if it makes its save.",
                          desc: "This spell functions as ray of exhaustion , except the target is sickened if it fails its save and unaffected if it makes its save.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Read Magic", school: "Divination", levels: "adept 0, antipaladin 1, arcanist 0, bard 0, cleric 0, druid 0, hunter 0, inquisitor 0, magus 0, medium 0, mesmerist 0, occultist 0, oracle 0, paladin 1, psychic 0, ranger 1, shaman 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, warpriest 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S, F (a clear crystal or mineral prism)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 min./level",
                          savingThrow: "None", sr: false,
                          summary: "You can decipher magical inscriptions on objects—books, scrolls, weapons, and the like—that would otherwise be unintelligible.",
                          desc: "You can decipher magical inscriptions on objects—books, scrolls, weapons, and the like—that would otherwise be unintelligible. This deciphering does not normally invoke the magic contained in the writing, although it may do so in the case of a cursed or trapped scroll. Furthermore, once the spell is cast and you have read the magical inscription, you are thereafter able to read that particular writing without recourse to the use of read magic . You can read at the rate of one page (250 words) per minute. The spell allows you to identify a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Reduce Animal", school: "Transmutation", levels: "druid 2, hunter 2, ranger 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one willing animal of Small, Medium, Large, or Huge size",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like reduce person , except that it affects a single willing animal.",
                          desc: "This spell functions like reduce person , except that it affects a single willing animal. Reduce the damage dealt by the animal's natural attacks as appropriate for its new size (see Equipment how to adjust damage for size).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Reduce Person", school: "Transmutation", levels: "alchemist 1, arcanist 1, bloodrager 1, investigator 1, magus 1, medium 1, occultist 1, psychic 1, redmantisassassin 1, sorcerer 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, M (a pinch of powdered iron)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1 min./level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell causes instant diminution of a humanoid creature, halving its height, length, and width and dividing its weight by 8.",
                          desc: "This spell causes instant diminution of a humanoid creature, halving its height, length, and width and dividing its weight by 8. This decrease changes the creature's size category to the next smaller one. The target gains a +2 size bonus to Dexterity, a –2 size penalty to Strength (to a minimum of 1), and a +1 bonus on attack rolls and AC due to its reduced size. A Small humanoid creature whose size decreases to Tiny has a space of 2-1/2 feet and a natural reach of 0 feet (meaning that it must enter an opponent's square to attack). A Large humanoid creature whose size decreases to Medium has a space of 5 feet and a natural reach of 5 feet. This spell doesn't change the target's speed. All equipment worn or carried by a creature is similarly reduced by the spell. Melee and projectile weapons deal less damage. Other magical properties are not affected by this spell. Any",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Reduce Person, Mass", school: "Transmutation", levels: "alchemist 1, arcanist 1, bloodrager 1, investigator 1, magus 1, medium 1, occultist 1, psychic 1, redmantisassassin 1, sorcerer 1, summoner 1, summoner (unchained) 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, M (a pinch of powdered iron)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one humanoid creature",
                          duration: "1 min./level (D)",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions like reduce person , except that it affects multiple creatures.",
                          desc: "This spell functions like reduce person , except that it affects multiple creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Refuge", school: "Conjuration (Teleportation)", levels: "arcanist 9, cleric 7, oracle 7, psychic 8, sorcerer 9, witch 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, M (a prepared object worth 1,500 gp)",
                          range: "touch", area: "", targets: "object touched",
                          duration: "permanent until discharged",
                          savingThrow: "none;", sr: false,
                          summary: "When you cast this spell, you create powerful magic in a specially prepared object.",
                          desc: "When you cast this spell, you create powerful magic in a specially prepared object. This object contains the power to instantly transport its possessor across any distance within the same plane to your abode. Once the item is so enhanced, you must give it willingly to a creature and at the same time inform it of a command word to be spoken when the item is used. To make use of the item, the subject speaks the command word at the same time that it rends or breaks the item (a standard action). When this is done, the individual and all objects it is wearing and carrying (to a maximum of the character's heavy load) are instantly transported to your abode. No other creatures are affected (aside from a familiar or animal companion that is touching the subject). You can alter the spell when casting it so that it transports you to within 10 feet of the possessor of the item when it is broken and the command word spoken. You will have a general idea of the location and situation of the item possessor at the time the refuge spell is discharged, but once you decide to alter the spell in this fashion, you have no choice whether or not to be transported.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Regenerate", school: "Conjuration (Healing)", levels: "cleric 7, druid 9, oracle 7, shaman 7, witch 7",
                          castingTime: "3 full rounds", components: "V, S, DF",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "The subject's severed body members (fingers, toes, hands, feet, arms, legs, tails, or even heads of multiheaded creatures), broken bones, and ruined organs grow back.",
                          desc: "The subject's severed body members (fingers, toes, hands, feet, arms, legs, tails, or even heads of multiheaded creatures), broken bones, and ruined organs grow back. After the spell is cast, the physical regeneration is complete in 1 round if the severed members are present and touching the creature. It takes 2d10 rounds otherwise. Regenerate also cures 4d8 points of damage + 1 point per caster level (maximum +35), rids the subject of exhaustion and fatigue, and eliminates all nonlethal damage the subject has taken. It has no effect on nonliving creatures (including undead).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Reincarnate", school: "Transmutation", levels: "druid 4, hunter 4, medium 4, shaman 4, witch 5",
                          castingTime: "10 minutes", components: "V, S, DF, M (oils worth 1,000 gp)",
                          range: "touch", area: "", targets: "dead creature touched",
                          duration: "instantaneous",
                          savingThrow: "none, see text;", sr: true,
                          summary: "With this spell, you bring back a dead creature in another body, provided that its death occurred no more than 1 week before the casting of the spell and the subject’s soul is free and willing to…",
                          desc: "With this spell, you bring back a dead creature in another body, provided that its death occurred no more than 1 week before the casting of the spell and the subject’s soul is free and willing to return. If the subject’s soul is not willing to return, the spell does not work; therefore, a subject that wants to return receives no saving throw. Since the dead creature is returning in a new body, all physical ills and afflictions are repaired. The condition of the remains is not a factor. So long as some small portion of the creature’s body still exists, it can be reincarnated, but the portion receiving the spell must have been part of the creature’s body at the time of death. The magic of the spell creates an entirely new young adult body for the soul to inhabit from the natural elements at hand. This process takes 1 hour to complete. When the body is ready, the subject is reincarnated. A reincarnated creature recalls the majority of its former life and form. It retains any class abilities, feats, or skill ranks it formerly possessed. Its class, base attack bonus, base save bonuses, and hit points are unchanged. Strength, Dexterity, and Constitution scores depend partly on the new body. First eliminate the subject’s racial adjustments (since it is no longer necessarily of his previous race) and then apply the adjustments found below to its remaining ability scores. The subject of the spell gains two permanent negative levels when it is reincarnated. Negative levels equal to or greater than the creature’s Hit Dice are instead applied as Constitution drain (if this would reduce its Con to 0 or less, it can’t be reincarnated). A character who died with spells prepared has a 50% chance of losing any given spell upon being reincarnated. A spellcasting creature that doesn’t prepare spells (such as a sorcerer) has a 50% chance of losing any given unused spell slot as if it had been used to cast a spell. It’s possible for the change in the subject’s ability scores to make it difficult for it to pursue its previous character class. If this is the case, the subject is advised to become a multiclass character. For a humanoid creature, the new incarnation is determined using the table on the next page. For nonhumanoid creatures, a similar table of creatures of the same type should be created. A creature that has been turned into an undead creature or killed by a death effect can’t be returned to life by this spell. Constructs, elementals, outsiders, and undead creatures can’t be reincarnated. The spell can bring back a creature that has died of old age.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Reincarnate Spy", school: "Transmutation", levels: "druid 4, hunter 4, medium 4, shaman 4, witch 5",
                          castingTime: "10 minutes", components: "V, S, DF, M (oils worth 1,000 gp)",
                          range: "touch", area: "", targets: "dead creature touched",
                          duration: "instantaneous",
                          savingThrow: "none, see text;", sr: true,
                          summary: "This spell functions as reincarnate except that you can cause the new body to resemble a particular creature, matching its age category and sex and rerolling any race result that would be the wrong…",
                          desc: "This spell functions as reincarnate except that you can cause the new body to resemble a particular creature, matching its age category and sex and rerolling any race result that would be the wrong size category. The subject further gains a +5 bonus on Disguise checks to impersonate the chosen creature due to similar features, although it might take a penalty for being the wrong race. The spell automatically leaves you with a small piece of the creature’s new body, typically a lock of hair (useful for",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Remove Blindness/Deafness", school: "Conjuration (Healing)", levels: "alchemist 3, cleric 3, investigator 3, mesmerist 3, oracle 3, paladin 3, shaman 3, spiritualist 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "Remove blindness/deafness cures blindness or deafness (your choice), whether the effect is normal or magical in nature.",
                          desc: "Remove blindness/deafness cures blindness or deafness (your choice), whether the effect is normal or magical in nature. The spell does not restore ears or eyes that have been lost, but it repairs them if they are damaged. Remove blindness/deafness",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Remove Curse", school: "Abjuration", levels: "adept 3, alchemist 3, arcanist 4, bard 3, cleric 3, inquisitor 3, investigator 3, medium 3, mesmerist 3, oracle 3, paladin 3, shaman 3, skald 3, sorcerer 4, spiritualist 4, warpriest 3, witch 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Remove curse can remove all curses on an object or a creature. If the target is a creature, you must make a caster level check (1d20 + caster level) against the DC of each curse affecting the target.",
                          desc: "Remove curse can remove all curses on an object or a creature. If the target is a creature, you must make a caster level check (1d20 + caster level) against the DC of each curse affecting the target. Success means that the curse is removed. Remove curse does not remove the curse from a cursed shield, weapon, or suit of armor, although a successful caster level check enables the creature afflicted with any such cursed item to remove and get rid of it.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Remove Disease", school: "Conjuration (Healing)", levels: "adept 3, alchemist 3, cleric 3, druid 3, hunter 3, inquisitor 3, investigator 3, oracle 3, ranger 3, shaman 3, spiritualist 3, warpriest 3, witch 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "Remove disease can cure all diseases from which the subject is suffering. You must make a caster level check (1d20 + caster level) against the DC of each disease affecting the target.",
                          desc: "Remove disease can cure all diseases from which the subject is suffering. You must make a caster level check (1d20 + caster level) against the DC of each disease affecting the target. Success means that the disease is cured. The spell also kills some hazards and parasites, including green slime and others. Since the spell's duration is instantaneous, it does not prevent reinfection after a new exposure to the same disease at a later date.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Remove Fear", school: "Abjuration", levels: "bard 1, cleric 1, inquisitor 1, medium 1, mesmerist 1, oracle 1, psychic 1, sahirafiyun 1, shaman 1, skald 1, spiritualist 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature plus one additional creature per four levels, no two of which can be more than 30 ft. apart",
                          duration: "10 minutes; see text",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You instill courage in the subject, granting it a +4 morale bonus against fear effects for 10 minutes.",
                          desc: "You instill courage in the subject, granting it a +4 morale bonus against fear effects for 10 minutes. If the subject is under the influence of a fear effect when receiving the spell, that effect is suppressed for the duration of the spell. Remove fear counters and dispels",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Remove Paralysis", school: "Conjuration (Healing)", levels: "cleric 2, inquisitor 2, oracle 2, paladin 2, shaman 2, spiritualist 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "up to four creatures, no two of which can be more than 30 ft. apart",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You can free one or more creatures from the effects of temporary paralysis or related magic, including spells and effects that cause a creature to gain the staggered condition.",
                          desc: "You can free one or more creatures from the effects of temporary paralysis or related magic, including spells and effects that cause a creature to gain the staggered condition. If the spell is cast on one creature, the paralysis is negated. If cast on two creatures, each receives another save with a +4 resistance bonus against the effect that afflicts it. If cast on three or four creatures, each receives another save with a +2 resistance bonus. The spell does not restore ability scores reduced by penalties, damage, or drain.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Repel Metal or Stone", school: "Abjuration", levels: "druid 8",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "60-ft. line from you", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell creates waves of invisible energy that roll forth from you. All metal or stone objects in the path of the spell are pushed away from you to the limit of the range.",
                          desc: "This spell creates waves of invisible energy that roll forth from you. All metal or stone objects in the path of the spell are pushed away from you to the limit of the range. Fixed metal or stone objects larger than 3 inches in diameter and loose objects weighing more than 500 pounds are not affected. Anything else, including animated objects, small boulders, and creatures in metal armor, moves back. Fixed objects 3 inches in diameter or smaller bend or break, and the pieces move with the wave of energy. Objects affected by the spell are repelled at the rate of 40 feet per round. Objects such as metal armor, swords, and the like are pushed back, dragging their bearers with them. Even magic items with metal components are repelled, although an antimagic field blocks the effects. A creature being dragged by an item it is carrying can let go. A creature being dragged by a shield can loose it as a move action and drop it as a free action. The waves of energy continue to sweep down the set path for the spell's duration. After you cast the spell, the path is set, and you can then do other things or go elsewhere without affecting the spell's power.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Repel Vermin", school: "Abjuration", levels: "bard 4, cleric 4, druid 4, hunter 3, oracle 4, ranger 3, shaman 4, skald 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "10 ft.", area: "10-ft.-radius emanation centered on you", targets: "",
                          duration: "10 min./level (D)",
                          savingThrow: "none or Will negates; see text;", sr: true,
                          summary: "An invisible barrier holds back vermin. A vermin with HD of less than one-third your level cannot penetrate the barrier.",
                          desc: "An invisible barrier holds back vermin. A vermin with HD of less than one-third your level cannot penetrate the barrier. A vermin with HD of one-third your level or more can penetrate the barrier if it succeeds on a Will save. Even so, crossing the barrier deals the vermin 2d6 points of damage, and pressing against the barrier causes pain, which deters most vermin.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Repel Wood", school: "Transmutation", levels: "druid 6, hunter 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "60 ft.", area: "60-ft. line-shaped emanation from you", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Waves of energy roll forth from you, moving in the direction that you determine, causing all wooden objects in the path of the spell to be pushed away from you to the limit of the range.",
                          desc: "Waves of energy roll forth from you, moving in the direction that you determine, causing all wooden objects in the path of the spell to be pushed away from you to the limit of the range. Wooden objects larger than 3 inches in diameter that are fixed firmly are not affected, but loose objects are. Objects 3 inches in diameter or smaller that are fixed in place splinter and break, and the pieces move with the wave of energy. Objects affected by the spell are repelled at the rate of 40 feet per round. Objects such as wooden shields, spears, wooden weapon shafts and hafts, and arrows and bolts are pushed back, dragging those carrying them along. A creature being dragged by an item it is carrying can let go. A creature being dragged by a shield can loose it as a move action and drop it as a free action. If a spear is planted (set) in a way that prevents this forced movement, it splinters. Even magic items with wooden sections are repelled, although an antimagic field blocks the effects. The waves of energy continue to sweep down the set path for the spell's duration. After you cast the spell, the path is set, and you can then do other things or go elsewhere without affecting the spell's power.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Repulsion", school: "Abjuration", levels: "arcanist 6, cleric 7, inquisitor 6, occultist 6, oracle 7, psychic 7, sorcerer 6, spiritualist 6, summoner 5, summoner (unchained) 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, F/DF (a pair of canine statuettes worth 50 gp)",
                          range: "up to 10 ft./level", area: "up to 10-ft.-radius/level emanation centered on you", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "An invisible, mobile field surrounds you and prevents creatures from approaching you. You decide how big the field is at the time of casting (to the limit your level allows).",
                          desc: "An invisible, mobile field surrounds you and prevents creatures from approaching you. You decide how big the field is at the time of casting (to the limit your level allows). Any creature within or entering the field must attempt a save. If it fails, it becomes unable to move toward you for the duration of the spell. Repelled creatures' actions are not otherwise restricted. They can fight other creatures and can cast spells and attack you with ranged weapons. If you move closer to an affected creature, nothing happens. The creature is not forced back. The creature is free to make melee attacks against you if you come within reach. If a repelled creature moves away from you and then tries to turn back toward you, it cannot move any closer if it is still within the spell's area.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Resilient Sphere", school: "Evocation", levels: "arcanist 4, occultist 4, psychic 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, F (a crystal sphere)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "1-ft.-diameter/level sphere, centered around a creature", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "Reflex negates;", sr: true,
                          summary: "A globe of shimmering force encloses a creature, provided the creature is small enough to fit within the diameter of the sphere. The sphere contains its subject for the spell's duration.",
                          desc: "A globe of shimmering force encloses a creature, provided the creature is small enough to fit within the diameter of the sphere. The sphere contains its subject for the spell's duration. The sphere functions as a wall of force , except that it can be negated by",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Resist Energy", school: "Abjuration", levels: "adept 2, alchemist 2, arcanist 2, bloodrager 2, cleric 2, druid 2, hunter 1, inquisitor 2, investigator 2, occultist 2, oracle 2, paladin 2, psychic 2, ranger 1, shaman 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This abjuration grants a creature limited protection from damage of whichever one of five energy types you select: acid, cold, electricity, fire, or sonic.",
                          desc: "This abjuration grants a creature limited protection from damage of whichever one of five energy types you select: acid, cold, electricity, fire, or sonic. The subject gains resist energy 10 against the energy type chosen, meaning that each time the creature is subjected to such damage (whether from a natural or magical source), that damage is reduced by 10 points before being applied to the creature's hit points. The value of the energy resistance granted increases to 20 points at 7th level and to a maximum of 30 points at 11th level. The spell protects the recipient's equipment as well. Resist energy absorbs only damage. The subject could still suffer unfortunate side effects.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Resist Energy, Communal", school: "Abjuration", levels: "adept 2, alchemist 2, arcanist 2, bloodrager 2, cleric 2, druid 2, hunter 1, inquisitor 2, investigator 2, occultist 2, oracle 2, paladin 2, psychic 2, ranger 1, shaman 2, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Fortitude negates (harmless);", sr: true,
                          summary: "This spell functions like resist energy , except you divide the duration in 10-minute intervals among the creatures touched.",
                          desc: "This spell functions like resist energy , except you divide the duration in 10-minute intervals among the creatures touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Resistance", school: "Abjuration", levels: "arcanist 0, bard 0, cleric 0, druid 0, hunter 0, inquisitor 0, medium 0, occultist 0, oracle 0, paladin 1, psychic 0, shaman 0, skald 0, sorcerer 0, spiritualist 0, summoner 0, summoner (unchained) 0, warpriest 0, witch 0, wizard 0",
                          castingTime: "1 standard action", components: "V, S, M/DF (a miniature cloak)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 minute",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You imbue the subject with magical energy that protects it from harm, granting it a +1 resistance bonus on saves. Resistance can be made permanent with a",
                          desc: "You imbue the subject with magical energy that protects it from harm, granting it a +1 resistance bonus on saves. Resistance can be made permanent with a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Restoration", school: "Conjuration (Healing)", levels: "adept 4, alchemist 4, cleric 4, inquisitor 4, investigator 4, mesmerist 4, oracle 4, paladin 4, shaman 4, spiritualist 4, warpriest 4",
                          castingTime: "3 rounds", components: "V, S, M (diamond dust worth 100 gp or 1,000 gp, see text)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like lesser restoration , except that it also dispels temporary negative levels or one permanent negative level.",
                          desc: "This spell functions like lesser restoration , except that it also dispels temporary negative levels or one permanent negative level. If this spell is used to dispel a permanent negative level, it has a material component of diamond dust worth 1,000 gp. This spell cannot be used to dispel more than one permanent negative level possessed by a target in a 1-week period.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Restoration, Greater", school: "Conjuration (Healing)", levels: "adept 4, alchemist 4, cleric 4, inquisitor 4, investigator 4, mesmerist 4, oracle 4, paladin 4, shaman 4, spiritualist 4, warpriest 4",
                          castingTime: "3 rounds", components: "V, S, M (diamond dust worth 100 gp or 1,000 gp, see text)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like lesser restoration , except that it dispels all permanent and temporary negative levels afflicting the healed creature.",
                          desc: "This spell functions like lesser restoration , except that it dispels all permanent and temporary negative levels afflicting the healed creature.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Restoration, Lesser", school: "Conjuration (Healing)", levels: "adept 4, alchemist 4, cleric 4, inquisitor 4, investigator 4, mesmerist 4, oracle 4, paladin 4, shaman 4, spiritualist 4, warpriest 4",
                          castingTime: "3 rounds", components: "V, S, M (diamond dust worth 100 gp or 1,000 gp, see text)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Lesser restoration dispels any magical effects reducing one of the subject's ability scores or cures 1d4 points of temporary ability damage to one of the subject's ability scores.",
                          desc: "Lesser restoration dispels any magical effects reducing one of the subject's ability scores or cures 1d4 points of temporary ability damage to one of the subject's ability scores. It also eliminates any fatigue suffered by the character, and improves an exhausted condition to fatigued. It does not restore permanent ability drain.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Resurrection", school: "Conjuration (Healing)", levels: "cleric 7, oracle 7, shaman 8, witch 8",
                          castingTime: "1 minute", components: "V, S, M (diamond worth 10,000 gp), DF",
                          range: "touch", area: "", targets: "dead creature touched",
                          duration: "instantaneous",
                          savingThrow: "none, see text;", sr: true,
                          summary: "This spell functions like raise dead , except that you are able to restore life and complete strength to any deceased creature. The condition of the remains is not a factor.",
                          desc: "This spell functions like raise dead , except that you are able to restore life and complete strength to any deceased creature. The condition of the remains is not a factor. So long as some small portion of the creature's body still exists, it can be resurrected, but the portion receiving the spell must have been part of the creature's body at the time of death. (The remains of a creature hit by a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Reverse Gravity", school: "Transmutation", levels: "arcanist 7, druid 8, psychic 7, sorcerer 7, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M/DF (lodestone and iron fillings)",
                          range: "medium (100 ft. + 10 ft./level)", area: "up to one 10-ft. cube/level (S)", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none, see text;", sr: false,
                          summary: "This spell reverses gravity in an area, causing unattached objects and creatures in the area to fall upward and reach the top of the area in 1 round.",
                          desc: "This spell reverses gravity in an area, causing unattached objects and creatures in the area to fall upward and reach the top of the area in 1 round. If a solid object (such as a ceiling) is encountered in this fall, falling objects and creatures strike it in the same manner as they would during a normal downward fall. If an object or creature reaches the top of the area without striking anything, it remains there, oscillating slightly, until the spell ends. At the end of the spell duration, affected objects and creatures fall downward. Provided it has something to hold onto, a creature caught in the area can attempt a Reflex save to secure itself when the spell strikes. Creatures who can fly or levitate can keep themselves from falling.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Righteous Might", school: "Transmutation", levels: "cleric 5, inquisitor 5, oracle 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 round/level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Your height immediately doubles, and your weight increases by a factor of eight. This increase changes your size category to the next larger one.",
                          desc: "Your height immediately doubles, and your weight increases by a factor of eight. This increase changes your size category to the next larger one. You gain a +4 size bonus to Strength and Constitution and take a –2 penalty to your Dexterity. You gain a +2 enhancement bonus to your natural armor. You gain DR 5/evil (if you normally channel positive energy) or DR 5/good (if you normally channel negative energy). At 15th level, this DR becomes 10/evil or 10/good (the maximum). Your size modifier for AC and attacks changes as appropriate to your new size category. This spell doesn't change your speed. Determine space and reach as appropriate to your new size. If insufficient room is available for the desired growth, you attain the maximum possible size and may make a Strength check (using your increased Strength) to burst any enclosures in the process (see Additional Rules for rules on breaking objects). If you fail, you are constrained without harm by the materials enclosing you—the spell cannot crush you by increasing your size. All equipment you wear or carry is similarly enlarged by the spell. Melee weapons deal more damage. Other magical properties are not affected by this spell. Any enlarged item that leaves your possession (including a projectile or thrown weapon) instantly returns to its normal size. This means that thrown and projectile weapons deal their normal damage. Magical effects that increase size do not stack.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Rope Trick", school: "Transmutation", levels: "arcanist 2, medium 2, occultist 2, psychic 2, redmantisassassin 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (powdered corn and a twisted loop of parchment)",
                          range: "touch", area: "", targets: "one touched piece of rope from 5 ft. to 30 ft. long",
                          duration: "1 hour/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "When this spell is cast upon a piece of rope from 5 to 30 feet long, one end of the rope rises into the air until the whole rope hangs perpendicular to the ground, as if affixed at the upper end.",
                          desc: "When this spell is cast upon a piece of rope from 5 to 30 feet long, one end of the rope rises into the air until the whole rope hangs perpendicular to the ground, as if affixed at the upper end. The upper end is, in fact, fastened to an extradimensional space that is outside the usual multiverse of extradimensional spaces. Creatures in the extradimensional space are hidden, beyond the reach of spells (including divinations), unless those spells work across planes. The space holds as many as eight creatures (of any size). The rope cannot be removed or hidden. The rope can support up to 16,000 pounds. A weight greater than that can pull the rope free. Spells cannot be cast across the extradimensional interface, nor can area effects cross it. Those in the extradimensional space can see out of it as if a 3-foot-by-5-foot window were centered on the rope. The window is invisible, and even creatures that can see the window can't see through it. Anything inside the extradimensional space drops out when the spell ends. The rope can be climbed by only one person at a time. The rope trick spell enables climbers to reach a normal place if they do not climb all the way to the extradimensional space.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Rusting Grasp", school: "Transmutation", levels: "druid 4, hunter 4, occultist 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one nonmagical ferrous object (or the volume of the object within 3 ft. of the touched point) or one ferrous creature",
                          duration: "see text",
                          savingThrow: "none;", sr: false,
                          summary: "Any iron or iron alloy item you touch crumbles into rust. If the item is so large that it cannot fit within a 3-foot radius, a 3-foot-radius volume of the metal is rusted and destroyed.",
                          desc: "Any iron or iron alloy item you touch crumbles into rust. If the item is so large that it cannot fit within a 3-foot radius, a 3-foot-radius volume of the metal is rusted and destroyed. Magic items made of metal are immune to this spell. You may employ rusting grasp in combat with a successful melee touch attack. Rusting grasp used in this way instantaneously destroys 1d6 points of AC gained from metal armor (to the maximum amount of protection the armor offers) through corrosion. Weapons in use by an opponent targeted by the spell are more difficult to grasp. You must succeed on a melee touch attack against the weapon. A metal weapon that is hit is destroyed. Striking at an opponent's weapon provokes an attack of opportunity. Also, you must touch the weapon and not the other way around. Against a ferrous creature,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sanctuary", school: "Abjuration", levels: "cleric 1, inquisitor 1, oracle 1, spiritualist 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: false,
                          summary: "Any opponent attempting to directly attack the warded creature, even with a targeted spell, must attempt a Will save.",
                          desc: "Any opponent attempting to directly attack the warded creature, even with a targeted spell, must attempt a Will save. If the save succeeds, the opponent can attack normally and is unaffected by that casting of the spell. If the save fails, the opponent can't follow through with the attack, that part of its action is lost, and it can't directly attack the warded creature for the duration of the spell. Those not attempting to attack the subject remain unaffected. This spell does not prevent the warded creature from being attacked or affected by area of effect spells. The subject cannot attack without breaking the spell but may use nonattack spells or otherwise act.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Scare", school: "Necromancy", levels: "antipaladin 2, arcanist 2, bard 2, medium 2, mesmerist 2, occultist 2, psychic 2, shaman 2, skald 2, sorcerer 2, spiritualist 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a bone from an undead creature)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one living creature per three levels, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level or 1 round; see text for cause fear",
                          savingThrow: "Will partial;", sr: true,
                          summary: "This spell functions like cause fear , except that it causes all targeted creatures of less than 6 HD to become frightened.",
                          desc: "This spell functions like cause fear , except that it causes all targeted creatures of less than 6 HD to become frightened.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Scintillating Pattern", school: "Illusion (Pattern)", levels: "arcanist 8, psychic 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M (a crystal prism)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "colorful lights in a 20-ft.-radius spread", targets: "",
                          duration: "concentration + 2 rounds",
                          savingThrow: "none;", sr: true,
                          summary: "A twisting pattern of coruscating colors weaves through the air, affecting creatures within. The spell affects a total number of HD of creatures equal to your caster level (maximum 20).",
                          desc: "A twisting pattern of coruscating colors weaves through the air, affecting creatures within. The spell affects a total number of HD of creatures equal to your caster level (maximum 20). Creatures with the fewest HD are affected first, and among creatures with equal HD, those who are closest to the spell's point of origin are affected first. HD that are not sufficient to affect a creature are wasted. The spell affects each subject according to its HD. 6 or less : Unconscious for 1d4 rounds, then stunned for 1d4 rounds, and then",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Scorching Ray", school: "Evocation", levels: "adept 2, arcanist 2, bloodrager 2, magus 2, sorcerer 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one or more rays", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "You blast your enemies with a searing beam of fire. You may fire one ray, plus one additional ray for every four levels beyond 3rd (to a maximum of three rays at 11th level).",
                          desc: "You blast your enemies with a searing beam of fire. You may fire one ray, plus one additional ray for every four levels beyond 3rd (to a maximum of three rays at 11th level). Each ray requires a ranged touch attack to hit and deals 4d6 points of fire damage. The rays may be fired at the same or different targets, but all rays must be aimed at targets within 30 feet of each other and fired simultaneously.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Screen", school: "Illusion (Glamer)", levels: "arcanist 8, psychic 8, sorcerer 8, wizard 8",
                          castingTime: "10 minutes", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "30-ft. cube/level (S)", targets: "",
                          duration: "24 hours",
                          savingThrow: "none or Will disbelief (if interacted with); see text;", sr: false,
                          summary: "This spell creates a powerful protection from scrying and observation. When casting the spell, you dictate what will and will not be observed in the spell's area.",
                          desc: "This spell creates a powerful protection from scrying and observation. When casting the spell, you dictate what will and will not be observed in the spell's area. The illusion created must be stated in general terms. Once the conditions are set, they cannot be changed. Attempts to scry the area automatically detect the image stated by you with no save allowed. Sight and sound are appropriate to the illusion created. Direct observation may allow a save (as per a normal illusion), if there is cause to disbelieve what is seen. Even entering the area does not cancel the illusion or necessarily allow a save, assuming that hidden beings take care to stay out of the way of those affected by the illusion.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Scrying", school: "Divination (Scrying)", levels: "arcanist 4, bard 3, cleric 5, druid 4, hunter 4, medium 3, mesmerist 3, occultist 4, oracle 5, psychic 4, shaman 4, skald 3, sorcerer 4, spiritualist 5, warpriest 5, witch 4, wizard 4",
                          castingTime: "1 hour", components: "V, S, M/DF (a pool of water), F (a silver mirror worth 1,000 gp)",
                          range: "see text", area: "magical sensor", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You can observe a creature at any distance. If the subject succeeds on a Will save, the spell fails.",
                          desc: "You can observe a creature at any distance. If the subject succeeds on a Will save, the spell fails. The difficulty of the save depends on how well your knowledge of the subject and what sort of physical connection (if any) you have to that creature. Furthermore, if the subject is on another plane, it gets a +5 bonus on its Will save. Knowledge Will Save Modifier",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Scrying, Greater", school: "Divination (Scrying)", levels: "arcanist 4, bard 3, cleric 5, druid 4, hunter 4, medium 3, mesmerist 3, occultist 4, oracle 5, psychic 4, shaman 4, skald 3, sorcerer 4, spiritualist 5, warpriest 5, witch 4, wizard 4",
                          castingTime: "1 hour", components: "V, S, M/DF (a pool of water), F (a silver mirror worth 1,000 gp)",
                          range: "see text", area: "magical sensor", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like scrying , except as noted above. Additionally, all of the following spells function reliably through the sensor:",
                          desc: "This spell functions like scrying , except as noted above. Additionally, all of the following spells function reliably through the sensor:",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sculpt Sound", school: "Transmutation", levels: "bard 3, skald 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature or object/level, no two of which can be more than 30 ft. apart",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You can change the sounds that creatures or objects make. You can create sounds where none exist, deaden sounds, or transform sounds into other sounds.",
                          desc: "You can change the sounds that creatures or objects make. You can create sounds where none exist, deaden sounds, or transform sounds into other sounds. All affected creatures or objects must be transmuted in the same way. Once the transmutation is made, you cannot change it. You can change the qualities of sounds but cannot create words with which you are unfamiliar yourself. A spellcaster whose voice is changed dramatically is unable to cast spells with verbal components.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Searing Light", school: "Evocation", levels: "cleric 3, inquisitor 3, oracle 3, warpriest 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "ray", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "Focusing divine power like a ray of the sun, you project a blast of light from your open palm. You must succeed on a ranged touch attack to strike your target.",
                          desc: "Focusing divine power like a ray of the sun, you project a blast of light from your open palm. You must succeed on a ranged touch attack to strike your target. A creature struck by this ray of light takes 1d8 points of damage per two caster levels (maximum 5d8). An undead creature takes 1d6 points of damage per caster level (maximum 10d6), and an undead creature particularly vulnerable to bright light takes 1d8 points of damage per caster level (maximum 10d8). A construct or inanimate object takes only 1d6 points of damage per two caster levels (maximum 5d6).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Secret Chest", school: "Conjuration (Summoning)", levels: "arcanist 5, mesmerist 5, occultist 5, psychic 5, sorcerer 5, spiritualist 5, witch 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S, F (the chest and its replica)",
                          range: "see text", area: "", targets: "one chest and up to 1 cu. ft. of goods/caster level",
                          duration: "60 days or until discharged",
                          savingThrow: "none;", sr: false,
                          summary: "You hide a chest on the Ethereal Plane for as long as 60 days and can retrieve it at will.",
                          desc: "You hide a chest on the Ethereal Plane for as long as 60 days and can retrieve it at will. The chest can contain up to 1 cubic foot of material per caster level (regardless of the chest's actual size, which is about 3 feet by 2 feet by 2 feet). If any living creatures are in the chest, there is a 75% chance that the spell simply fails. Once the chest is hidden, you can retrieve it by concentrating (a standard action), and it appears next to you. The chest must be exceptionally well crafted and expensive, constructed for you by master crafters. The cost of such a chest is never less than 5,000 gp. Once it is constructed, you must make a tiny replica (of the same materials and perfect in every detail) so that the miniature of the chest appears to be a perfect copy. (The replica costs 50 gp.) The chests are nonmagical and can be fitted with locks, wards, and so on, just as any normal chest can be. To hide the chest, you cast the spell while touching both the chest and the replica. The chest vanishes into the Ethereal Plane. You need the replica to recall the chest. After 60 days, there is a cumulative chance of 5% per day that the chest is irretrievably lost. If the miniature of the chest is lost or destroyed, there is no way, even with a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Secret Coffer", school: "Conjuration (Summoning)", levels: "arcanist 5, mesmerist 5, occultist 5, psychic 5, sorcerer 5, spiritualist 5, witch 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S, F (the chest and its replica)",
                          range: "see text", area: "", targets: "one chest and up to 1 cu. ft. of goods/caster level",
                          duration: "60 days or until discharged",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like secret chest , except the coffer is only 1 foot square and can contain only 1 cubic foot of goods, and the container can remain safely hidden on the Ethereal Plane for only…",
                          desc: "This spell functions like secret chest , except the coffer is only 1 foot square and can contain only 1 cubic foot of goods, and the container can remain safely hidden on the Ethereal Plane for only 14 days before it risks becoming lost. The spell automatically fails if a living creature enters the coffer. The coffer used as a focus for",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Secret Page", school: "Transmutation", levels: "arcanist 3, bard 3, mesmerist 3, occultist 3, redmantisassassin 3, skald 3, sorcerer 3, wizard 3",
                          castingTime: "10 minutes", components: "V, S, M (powdered herring scales and a vial of will-o'-wisp essence)",
                          range: "touch", area: "", targets: "page touched, up to 3 sq. ft. in size",
                          duration: "permanent",
                          savingThrow: "none;", sr: false,
                          summary: "Secret page alters the contents of a page so that it appears to be something entirely different. The text of a spell can be changed to show another spell of equal or lower level known by the caster.",
                          desc: "Secret page alters the contents of a page so that it appears to be something entirely different. The text of a spell can be changed to show another spell of equal or lower level known by the caster. This spell cannot be used to change a spell contained on a scroll, but it can be used to hide a scroll. Explosive runes",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Secret Vault", school: "Conjuration (Summoning)", levels: "arcanist 5, mesmerist 5, occultist 5, psychic 5, sorcerer 5, spiritualist 5, witch 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S, F (the chest and its replica)",
                          range: "see text", area: "", targets: "one chest and up to 1 cu. ft. of goods/caster level",
                          duration: "60 days or until discharged",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like secret chest , except it affects a small structure, vault, or oversized chest. Living creatures within a",
                          desc: "This spell functions like secret chest , except it affects a small structure, vault, or oversized chest. Living creatures within a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Secure Shelter", school: "Conjuration (Creation)", levels: "arcanist 4, bard 4, skald 4, sorcerer 4, witch 4, wizard 4",
                          castingTime: "10 minutes", components: "V, S, M (a chip of stone, sand, a drop of water, and a wood splinter)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-square structure", targets: "",
                          duration: "2 hours/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You conjure a sturdy cottage or lodge made of material that is common in the area where the spell is cast. The floor is level, clean, and dry.",
                          desc: "You conjure a sturdy cottage or lodge made of material that is common in the area where the spell is cast. The floor is level, clean, and dry. The lodging resembles a normal cottage, with a sturdy door, two shuttered windows, and a small fireplace. The shelter must be heated as a normal dwelling, and extreme heat adversely affects it and its occupants. The dwelling does, however, provide considerable security otherwise—it is as strong as a normal stone building, regardless of its material composition. The dwelling resists flames and fire as if it were stone. It is impervious to normal missiles (but not the sort cast by siege engines or giants). The door, shutters, and even chimney are secure against intrusion, the former two being secured with",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("See Invisibility", school: "Divination", levels: "adept 2, alchemist 2, arcanist 2, bard 3, bloodrager 2, inquisitor 2, investigator 2, mesmerist 3, occultist 2, psychic 2, skald 3, sorcerer 2, spiritualist 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (talc and powdered silver)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 min./level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "You can see any objects or beings that are invisible within your range of vision, as well as any that are ethereal, as if they were normally visible.",
                          desc: "You can see any objects or beings that are invisible within your range of vision, as well as any that are ethereal, as if they were normally visible. Such creatures are visible to you as translucent shapes, allowing you easily to discern the difference between visible, invisible, and ethereal creatures. The spell does not reveal the method used to obtain invisibility. It does not reveal illusions or enable you to see through opaque objects. It does not reveal creatures who are simply hiding, concealed, or otherwise hard to see. See invisibility",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Seeming", school: "Illusion (Glamer)", levels: "arcanist 5, bard 5, medium 4, mesmerist 5, occultist 5, psychic 5, skald 5, sorcerer 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature per two levels, no two of which can be more than 30 ft. apart",
                          duration: "12 hours (D)",
                          savingThrow: "Will negates or Will disbelief (if interacted with);", sr: true,
                          summary: "This spell functions like disguise self , except that you can change the appearance of other people as well. Affected creatures resume their normal appearances if slain.",
                          desc: "This spell functions like disguise self , except that you can change the appearance of other people as well. Affected creatures resume their normal appearances if slain. Unwilling targets can negate the spell's effect on them by making Will saves or with spell resistance.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Selective Alarm", school: "Abjuration", levels: "arcanist 1, bard 1, hunter 1, inquisitor 1, occultist 1, psychic 1, ranger 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F/DF (a tiny bell and a piece of very fine silver wire)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "20-ft.-radius emanation centered on a point in space", targets: "",
                          duration: "2 hours/level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as alarm , except that you can tweak the spell to be more discerning in what types of creatures or objects trigger the alarm.",
                          desc: "This spell functions as alarm , except that you can tweak the spell to be more discerning in what types of creatures or objects trigger the alarm. Instead of being triggered whenever a creature of Tiny size or larger enters the warded area, you can set whatever triggering conditions you wish, as long as they are based on observable phenomenon. For example, you could cause the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sending", school: "Evocation", levels: "alchemist 5, arcanist 5, cleric 4, inquisitor 4, investigator 5, medium 3, mesmerist 3, occultist 4, oracle 4, psychic 4, shaman 4, sorcerer 5, spiritualist 5, summoner 4, summoner (unchained) 5, warpriest 4, wizard 5",
                          castingTime: "10 minutes", components: "V, S, M/DF (fine copper wire)",
                          range: "see text", area: "", targets: "one creature",
                          duration: "1 round; see text",
                          savingThrow: "none;", sr: false,
                          summary: "You contact a particular creature with which you are familiar and send a short message of 25 words or less to the subject. The subject recognizes you if it knows you.",
                          desc: "You contact a particular creature with which you are familiar and send a short message of 25 words or less to the subject. The subject recognizes you if it knows you. It can answer in like manner immediately. A creature with an Intelligence score as low as 1 can understand the sending, though the subject's ability to react is limited as normal by its Intelligence. Even if the sending is received, the subject is not obligated to act upon it in any manner. If the creature in question is not on the same plane of existence as you are, there is a 5% chance that the sending does not arrive. (Local conditions on other planes may worsen this chance considerably.)",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sepia Snake Sigil", school: "Conjuration (Creation)", levels: "arcanist 3, bard 3, occultist 3, skald 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "10 minutes", components: "V, S, M (powdered amber worth 500 gp and a snake scale)",
                          range: "touch", area: "", targets: "one touched book or written work",
                          duration: "permanent or until discharged; until released or 1d4 days + 1 day/level; see text",
                          savingThrow: "Reflex negates;", sr: false,
                          summary: "You cause a small symbol to appear in the text of a written work. The text containing the symbol must be at least 25 words long.",
                          desc: "You cause a small symbol to appear in the text of a written work. The text containing the symbol must be at least 25 words long. When anyone reads the text containing the symbol, the sepia snake sigil springs into being, transforming into a large sepia serpent that strikes at the reader, provided there is line of effect between the symbol and the reader. Simply seeing the enspelled text is not sufficient to trigger the spell; the subject must deliberately read it. The target is entitled to a save to evade the snake's strike. If it succeeds, the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sequester", school: "Abjuration", levels: "arcanist 7, psychic 7, sorcerer 7, summoner 5, summoner (unchained) 6, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M (a basilisk eyelash and gum arabic)",
                          range: "touch", area: "", targets: "one willing creature or object (up to a 2-ft. cube/level) touched",
                          duration: "1 day/level (D)",
                          savingThrow: "none or Will negates (object);", sr: true,
                          summary: "When cast, this spell prevents divination spells from detecting or locating the target and also renders the affected target invisible (as the invisibility spell).",
                          desc: "When cast, this spell prevents divination spells from detecting or locating the target and also renders the affected target invisible (as the invisibility spell). The spell does not prevent the subject from being discovered through tactile means or through the use of devices. Creatures affected by",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shades", school: "Illusion (Shadow)", levels: "arcanist 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "see text", area: "see text", targets: "",
                          duration: "see text",
                          savingThrow: "Will disbelief (if interacted with); varies; see text;", sr: true,
                          summary: "This spell functions like shadow conjuration , except that it mimics conjuration spells of 8th level or lower.",
                          desc: "This spell functions like shadow conjuration , except that it mimics conjuration spells of 8th level or lower. The illusory conjurations created deal four-fifths (80%) damage to nonbelievers, and nondamaging effects are 80% likely to work against nonbelievers.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shadow Conjuration", school: "Illusion (Shadow)", levels: "arcanist 4, bard 4, mesmerist 4, redmantisassassin 4, skald 4, sorcerer 4, spiritualist 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "see text", area: "see text", targets: "",
                          duration: "see text",
                          savingThrow: "Will disbelief (if interacted with); varies; see text;", sr: true,
                          summary: "You use material from the Plane of Shadow to shape quasi-real illusions of one or more creatures, objects, or forces.",
                          desc: "You use material from the Plane of Shadow to shape quasi-real illusions of one or more creatures, objects, or forces. Shadow conjuration can mimic any sorcerer or wizard conjuration (summoning) or conjuration (creation) spell of 3rd level or lower.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shadow Conjuration, Greater", school: "Illusion (Shadow)", levels: "arcanist 4, bard 4, mesmerist 4, redmantisassassin 4, skald 4, sorcerer 4, spiritualist 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "see text", area: "see text", targets: "",
                          duration: "see text",
                          savingThrow: "Will disbelief (if interacted with); varies; see text;", sr: true,
                          summary: "This spell functions like shadow conjuration , except that it duplicates any sorcerer or wizard conjuration (summoning) or conjuration (creation) spell of 6th level or lower.",
                          desc: "This spell functions like shadow conjuration , except that it duplicates any sorcerer or wizard conjuration (summoning) or conjuration (creation) spell of 6th level or lower. The illusory conjurations created deal three-fifths (60%) damage to nonbelievers, and nondamaging effects are 60% likely to work against nonbelievers.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shadow Evocation", school: "Illusion (Shadow)", levels: "arcanist 5, bard 5, mesmerist 5, skald 5, sorcerer 5, spiritualist 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "see text", area: "see text", targets: "",
                          duration: "see text",
                          savingThrow: "Will disbelief (if interacted with);", sr: true,
                          summary: "You tap energy from the Plane of Shadow to cast a quasi-real, illusory version of a sorcerer or wizard evocation spell of 4th level or lower.",
                          desc: "You tap energy from the Plane of Shadow to cast a quasi-real, illusory version of a sorcerer or wizard evocation spell of 4th level or lower. Spells that deal damage have normal effects unless an affected creature succeeds on a Will save. Each disbelieving creature takes only one-fifth damage from the attack. If the disbelieved attack has a special effect other than damage, that effect is one-fifth as strong (if applicable) or only 20% likely to occur. If recognized as a shadow evocation , a damaging spell deals only one-fifth (20%) damage. Regardless of the result of the save to disbelieve, an affected creature is also allowed any save (or spell resistance) that the spell being simulated allows, but the save DC is set according to",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shadow Evocation, Greater", school: "Illusion (Shadow)", levels: "arcanist 5, bard 5, mesmerist 5, skald 5, sorcerer 5, spiritualist 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "see text", area: "see text", targets: "",
                          duration: "see text",
                          savingThrow: "Will disbelief (if interacted with);", sr: true,
                          summary: "This spell functions like shadow evocation , except that it enables you to create partially real, illusory versions of sorcerer or wizard evocation spells of 7th level or lower. If recognized as a",
                          desc: "This spell functions like shadow evocation , except that it enables you to create partially real, illusory versions of sorcerer or wizard evocation spells of 7th level or lower. If recognized as a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shadow Walk", school: "Illusion (Shadow)", levels: "alchemist 6, arcanist 6, bard 5, investigator 6, mesmerist 5, skald 5, sorcerer 6, spiritualist 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "up to one touched creature/level",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates;", sr: true,
                          summary: "To use the shadow walk spell, you must be in an area of dim light.",
                          desc: "To use the shadow walk spell, you must be in an area of dim light. You and any creature you touch are then transported along a coiling path of shadowstuff to the edge of the Material Plane where it borders the Plane of Shadow. The effect is largely illusory, but the path is quasi-real. You can take more than one creature along with you (subject to your level limit), but all must be touching each other. In the region of shadow, you move at a rate of 50 miles per hour, moving normally on the borders of the Plane of Shadow but much more rapidly relative to the Material Plane. Thus, you can use this spell to travel rapidly by stepping onto the Plane of Shadow, moving the desired distance, and then stepping back onto the Material Plane. Because of the blurring of reality between the Plane of Shadow and the Material Plane, you can't make out details of the terrain or areas you pass over during transit, nor can you predict perfectly where your travel will end. It's impossible to judge distances accurately, making the spell virtually useless for scouting or spying. Furthermore, when the spell effect ends, you are shunted 1d10 × 100 feet in a random horizontal direction from your desired endpoint. If this would place you within a solid object, you are shunted 1d10 × 1,000 feet in the same direction. If this would still place you within a solid object, you (and any creatures with you) are shunted to the nearest empty space available, but the strain of this activity renders each creature fatigued (no save).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shambler", school: "Conjuration (Creation)", levels: "druid 9, shaman 9",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "three or more shambling mounds, no two of which can be more than 30 ft. apart; see text", targets: "",
                          duration: "7 days or 7 months (D); see text",
                          savingThrow: "none;", sr: false,
                          summary: "The shambler spell creates 1d4+2 shambling mounds with the advanced template. The creatures willingly aid you in combat or battle, perform a specific mission, or serve as bodyguards.",
                          desc: "The shambler spell creates 1d4+2 shambling mounds with the advanced template. The creatures willingly aid you in combat or battle, perform a specific mission, or serve as bodyguards. The creatures remain with you for 7 days unless you dismiss them. If the shamblers are created only for guard duty, however, the duration of the spell is 7 months. In this case, the shamblers can only be ordered to guard a specific site or location. Shamblers summoned to guard duty cannot move outside the spell's range, which is measured from the point where each first appeared. You can only have one",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shapechange", school: "Transmutation (Polymorph)", levels: "arcanist 9, druid 9, shaman 9, sorcerer 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, F (jade circlet worth 1,500 gp)",
                          range: "personal", area: "", targets: "you",
                          duration: "10 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell allows you to take the form of a wide variety of creatures. This spell can function as alter self ,",
                          desc: "This spell allows you to take the form of a wide variety of creatures. This spell can function as alter self ,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Share Shape", school: "Transmutation (Polymorph)", levels: "alchemist 3, arcanist 3, bloodrager 3, investigator 3, magus 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a piece of the creature whose form you plan to assume)",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as beast shape II , but you may only assume the form of an animal of a type identical to your animal companion or familiar.",
                          desc: "This spell functions as beast shape II , but you may only assume the form of an animal of a type identical to your animal companion or familiar. If your familiar or companion is not an animal, this spell has no effect.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shatter", school: "Evocation", levels: "arcanist 2, bard 2, bloodrager 2, cleric 2, magus 2, occultist 2, oracle 2, psychic 2, skald 2, sorcerer 2, warpriest 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M/DF (a chip of mica)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Will negates (object); Will negates (object) or Fortitude half; see text;", sr: true,
                          summary: "Shatter creates a loud, ringing noise that breaks brittle, nonmagical objects; sunders a single solid, nonmagical object; or damages a crystalline creature. Used as an area attack,",
                          desc: "Shatter creates a loud, ringing noise that breaks brittle, nonmagical objects; sunders a single solid, nonmagical object; or damages a crystalline creature. Used as an area attack,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shield", school: "Abjuration", levels: "alchemist 1, arcanist 1, bloodrager 1, investigator 1, magus 1, occultist 1, psychic 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level (D)",
                          savingThrow: "None", sr: false,
                          summary: "Shield creates an invisible shield of force that hovers in front of you. It negates magic missile attacks directed at you. The disk also provides a +4 shield bonus to AC.",
                          desc: "Shield creates an invisible shield of force that hovers in front of you. It negates magic missile attacks directed at you. The disk also provides a +4 shield bonus to AC. This bonus applies against incorporeal touch attacks, since it is a force effect. The",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shield Companion (AA)", school: "Abjuration", levels: "cleric 2, inquisitor 2, oracle 2, paladin 2, psychic 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, F (a pair of platinum rings worth 50 gp worn by both you and the target)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions as shield other but affects only the caster’s animal companion or familiar.",
                          desc: "This spell functions as shield other but affects only the caster’s animal companion or familiar. Spellcasters from classes that do not normally gain an animal companion, familiar, or fiendish servant but who gain one through an alternate class feature, archetype, or prestige class can prepare and cast this spell as a 1st-level spell if they are capable of casting spells.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shield Other", school: "Abjuration", levels: "cleric 2, inquisitor 2, oracle 2, paladin 2, psychic 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, F (a pair of platinum rings worth 50 gp worn by both you and the target)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell wards the subject and creates a mystic connection between you and the subject so that some of its wounds are transferred to you.",
                          desc: "This spell wards the subject and creates a mystic connection between you and the subject so that some of its wounds are transferred to you. The subject gains a +1 deflection bonus to AC and a +1 resistance bonus on saves. Additionally, the subject takes only half damage from all wounds and attacks (including those dealt by special abilities) that deal hit point damage. The amount of damage not taken by the warded creature is taken by you. Forms of harm that do not involve hit points, such as charm effects, temporary ability damage, level draining, and death effects, are not affected. If the subject suffers a reduction of hit points from a lowered Constitution score, the reduction is not split with you because it is not hit point damage. When the spell ends, subsequent damage is no longer divided between the subject and you, but damage already split is not reassigned to the subject. If you and the subject of the spell move out of range of each other, the spell ends.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shield of Faith", school: "Abjuration", levels: "cleric 1, inquisitor 1, oracle 1, warpriest 1",
                          castingTime: "1 standard action", components: "V, S, M (parchment with a holy text written on it)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell creates a shimmering, magical field around the target that averts and deflects attacks.",
                          desc: "This spell creates a shimmering, magical field around the target that averts and deflects attacks. The spell grants the subject a +2 deflection bonus to AC, with an additional +1 to the bonus for every six levels you have (maximum +5 deflection bonus at 18th level).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shield of Law", school: "Abjuration", levels: "cleric 8, oracle 8",
                          castingTime: "1 standard action", components: "V, S, F (a reliquary worth 500 gp)",
                          range: "20 ft.", area: "", targets: "one creature/level in a 20-ft.-radius burst centered on you",
                          duration: "1 round/level (D)",
                          savingThrow: "see text;", sr: true,
                          summary: "A dim, blue glow surrounds the subjects, protecting them from attacks, granting them resistance to spells cast by chaotic creatures, and slowing chaotic creatures when they strike the subjects.",
                          desc: "A dim, blue glow surrounds the subjects, protecting them from attacks, granting them resistance to spells cast by chaotic creatures, and slowing chaotic creatures when they strike the subjects. This abjuration has four effects. First, each warded creature gains a +4 deflection bonus to AC and a +4 resistance bonus on saves. Unlike protection from chaos , this benefit applies against all attacks, not just against attacks by chaotic creatures. Second, a warded creature gains spell resistance 25 against chaotic spells and spells cast by chaotic creatures. Third, the abjuration protects you from possession and mental influence, just as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shillelagh", school: "Transmutation", levels: "druid 1, hunter 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "one touched nonmagical oak club or quarterstaff",
                          duration: "1 min./level",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "Your own nonmagical club or quarterstaff becomes a weapon with a +1 enhancement bonus on attack and damage rolls. A quarterstaff gains this enhancement for both ends of the weapon.",
                          desc: "Your own nonmagical club or quarterstaff becomes a weapon with a +1 enhancement bonus on attack and damage rolls. A quarterstaff gains this enhancement for both ends of the weapon. It deals damage as if it were two size categories larger (a Small club or quarterstaff so transmuted deals 1d8 points of damage, a Medium 2d6, and a Large 3d6), +1 for its enhancement bonus. These effects only occur when the weapon is wielded by you. If you do not wield it, the weapon behaves as if unaffected by this spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shocking Grasp", school: "Evocation", levels: "arcanist 1, bloodrager 1, magus 1, occultist 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "creature or object touched",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: true,
                          summary: "Your successful melee touch attack deals 1d6 points of electricity damage per caster level (maximum 5d6).",
                          desc: "Your successful melee touch attack deals 1d6 points of electricity damage per caster level (maximum 5d6). When delivering the jolt, you gain a +3 bonus on attack rolls if the opponent is wearing metal armor (or is carrying a metal weapon or is made of metal).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shout", school: "Evocation", levels: "arcanist 4, bard 4, bloodrager 4, magus 4, occultist 4, psychic 4, skald 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial or Reflex negates (object); see text;", sr: true,
                          summary: "You emit an ear-splitting yell that deafens and damages creatures in its path. Any creature within the area is deafened for 2d6 rounds and takes 5d6 points of sonic damage.",
                          desc: "You emit an ear-splitting yell that deafens and damages creatures in its path. Any creature within the area is deafened for 2d6 rounds and takes 5d6 points of sonic damage. A successful save negates the deafness and reduces the damage by half. Any exposed brittle or crystalline object or crystalline creature takes 1d6 points of sonic damage per caster level (maximum 15d6). An affected creature is allowed a Fortitude save to reduce the damage by half, and a creature holding fragile objects can negate damage to them with a successful Reflex save. A shout spell cannot penetrate a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shout, Greater", school: "Evocation", levels: "arcanist 4, bard 4, bloodrager 4, magus 4, occultist 4, psychic 4, skald 4, sorcerer 4, wizard 4",
                          castingTime: "1 standard action", components: "V",
                          range: "30 ft.", area: "cone-shaped burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial or Reflex negates (object); see text;", sr: true,
                          summary: "This spell functions like shout , except that the cone deals 10d6 points of sonic damage (or 1d6 points of sonic damage per caster level, maximum 20d6, against exposed brittle or crystalline objects…",
                          desc: "This spell functions like shout , except that the cone deals 10d6 points of sonic damage (or 1d6 points of sonic damage per caster level, maximum 20d6, against exposed brittle or crystalline objects or crystalline creatures). It also causes creatures to be stunned for 1 round and deafened for 4d6 rounds. A creature in the area of the cone can negate the stunning and halve both the damage and the duration of the deafness with a successful Fortitude save. A creature holding vulnerable objects can attempt a Reflex save to negate the damage to those objects.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Shrink Item", school: "Transmutation", levels: "arcanist 3, occultist 3, psychic 3, redmantisassassin 3, sorcerer 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one touched object of up to 2 cu. ft./level",
                          duration: "1 day/level; see text",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You are able to shrink one nonmagical item (if it is within the size limit) to 1/16 of its normal size in each dimension (to about 1/4,000 the original volume and mass).",
                          desc: "You are able to shrink one nonmagical item (if it is within the size limit) to 1/16 of its normal size in each dimension (to about 1/4,000 the original volume and mass). This change effectively reduces the object's size by four categories. Optionally, you can also change its now shrunken composition to a clothlike one. Objects changed by a shrink item spell can be returned to normal composition and size merely by tossing them onto any solid surface or by a word of command from the original caster. Even a burning fire and its fuel can be shrunk by this spell. Restoring the shrunken object to its normal size and composition ends the spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sickening Entanglement", school: "Transmutation", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "long (400 ft. + 40 ft./level)", area: "plants in a 40-ft.-radius spread", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "Reflex partial; see text;", sr: false,
                          summary: "This spell functions as entangle , except the plants are coated with an irritating sap that creates a painful, itching rash on creatures that touch them.",
                          desc: "This spell functions as entangle , except the plants are coated with an irritating sap that creates a painful, itching rash on creatures that touch them. Any creature that enters the area or ends its turn there must succeed at a Fortitude save or be sickened as long as it remains in the area and for 1d4 rounds afterward. This is a poison effect.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Signs of the Land", school: "Divination", levels: "druid 5, hunter 4, psychic 5, ranger 4, shaman 5",
                          castingTime: "10 minutes", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as commune with nature except it reveals up to three details about the territory you currently occupy from the following list: bodies of water, features, minerals, or plants.",
                          desc: "This spell functions as commune with nature except it reveals up to three details about the territory you currently occupy from the following list: bodies of water, features, minerals, or plants. For each feature you learn about, you automatically know the skills you can use to discover that feature and you gain 1d6 Discovery Points toward finding it (see page 124).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Silence", school: "Illusion (Glamer)", levels: "antipaladin 2, bard 2, cleric 2, inquisitor 2, mesmerist 2, oracle 2, psychic 2, skald 2, warpriest 2",
                          castingTime: "1 round", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "20-ft.-radius emanation centered on a creature, object, or point in space", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "Will negates; see text or none (object);", sr: true,
                          summary: "Upon the casting of this spell, complete silence prevails in the affected area.",
                          desc: "Upon the casting of this spell, complete silence prevails in the affected area. All sound is stopped: Conversation is impossible, spells with verbal components cannot be cast, and no noise whatsoever issues from, enters, or passes through the area. The spell can be cast on a point in space, but the effect is stationary unless cast on a mobile object. The spell can be centered on a creature, and the effect then radiates from the creature and moves as it moves. An unwilling creature can attempt a Will save to negate the spell and can use spell resistance, if any. Items in a creature's possession or magic items that emit sound receive the benefits of saves and spell resistance, but unattended objects and points in space do not. Creatures in an area of a silence spell are immune to sonic or language-based attacks, spells, and effects.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Silent Image", school: "Illusion (Figment)", levels: "arcanist 1, bard 1, magus 1, medium 1, mesmerist 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (a bit of fleece)",
                          range: "long (400 ft. + 40 ft./level)", area: "visual figment that cannot extend beyond four 10-ft. cubes + one 10-ft. cube/level (S)", targets: "",
                          duration: "concentration",
                          savingThrow: "Will disbelief (if interacted with);", sr: false,
                          summary: "This spell creates the visual illusion of an object, creature, or force, as visualized by you. The illusion does not create sound, smell, texture, or temperature.",
                          desc: "This spell creates the visual illusion of an object, creature, or force, as visualized by you. The illusion does not create sound, smell, texture, or temperature. You can move the image within the limits of the size of the effect.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Simulacrum", school: "Illusion (Shadow)", levels: "arcanist 7, psychic 7, sorcerer 7, summoner 5, wizard 7",
                          castingTime: "12 hours", components: "V, S, M (ice sculpture of the target plus powdered rubies worth 500 gp per HD of the simulacrum)",
                          range: "0 ft.", area: "one duplicate creature", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "Simulacrum creates an illusory duplicate of any creature. The duplicate creature is partially real and formed from ice or snow.",
                          desc: "Simulacrum creates an illusory duplicate of any creature. The duplicate creature is partially real and formed from ice or snow. It appears to be the same as the original, but it has only half of the real creature's levels or HD (and the appropriate hit points, feats, skill ranks, and special abilities for a creature of that level or HD). You can't create a simulacrum of a creature whose HD or levels exceed twice your caster level. You must make a Disguise check when you cast the spell to determine how good the likeness is. A creature familiar with the original might detect the ruse with a successful Perception check (opposed by the caster's Disguise check) or a DC 20 Sense Motive check. At all times, the simulacrum remains under your absolute command. No special telepathic link exists, so command must be exercised in some other manner. A simulacrum has no ability to become more powerful. It cannot increase its level or abilities. If reduced to 0 hit points or otherwise destroyed, it reverts to snow and melts instantly into nothingness. A complex process requiring at least 24 hours, 100 gp per hit point, and a fully equipped magical laboratory can repair damage to a simulacrum. Simulacrum, Lesser",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Simulacrum, Lesser", school: "Illusion (Shadow)", levels: "arcanist 7, psychic 7, sorcerer 7, summoner 5, wizard 7",
                          castingTime: "12 hours", components: "V, S, M (ice sculpture of the target plus powdered rubies worth 500 gp per HD of the simulacrum)",
                          range: "0 ft.", area: "one duplicate creature", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as simulacrum , except you can’t create a",
                          desc: "This spell functions as simulacrum , except you can’t create a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Slay Living", school: "Necromancy", levels: "antipaladin 4, cleric 5, oracle 5, shaman 6, spiritualist 5, warpriest 5, witch 6",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "living creature touched",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You can attempt to slay any one living creature. When you cast this spell, your hand seethes with eerie dark fire. You must succeed on a melee touch attack to touch the target.",
                          desc: "You can attempt to slay any one living creature. When you cast this spell, your hand seethes with eerie dark fire. You must succeed on a melee touch attack to touch the target. The target takes 12d6 points of damage + 1 point per caster level. If the target's Fortitude saving throw succeeds, it instead takes 3d6 points of damage + 1 point per caster level. The subject might die from damage even if it succeeds on its saving throw.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sleep", school: "Enchantment (Compulsion)", levels: "adept 1, arcanist 1, bard 1, mesmerist 1, occultist 1, psychic 1, sahirafiyun 1, shaman 1, skald 1, sorcerer 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, M (fine sand, rose petals, or a live cricket)",
                          range: "medium (100 ft. + 10 ft./level)", area: "one or more living creatures within a 10-ft.-radius burst", targets: "",
                          duration: "1 min./level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "A sleep spell causes a magical slumber to come upon 4 HD of creatures. Creatures with the fewest HD are affected first.",
                          desc: "A sleep spell causes a magical slumber to come upon 4 HD of creatures. Creatures with the fewest HD are affected first. Among creatures with equal HD, those who are closest to the spell's point of origin are affected first. HD that are not sufficient to affect a creature are wasted. Sleeping creatures are helpless. Slapping or wounding awakens an affected creature, but normal noise does not. Awakening a creature is a standard action (an application of the aid another action).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sleet Storm", school: "Conjuration (Creation)", levels: "arcanist 3, bloodrager 3, druid 3, hunter 3, magus 3, shaman 3, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M/DF (dust and water)",
                          range: "long (400 ft. + 40 ft./level)", area: "cylinder (40-ft. radius, 20 ft. high)", targets: "",
                          duration: "1 round/level",
                          savingThrow: "none;", sr: false,
                          summary: "Driving sleet blocks all sight (even darkvision) within it and causes the ground in the area to be icy.",
                          desc: "Driving sleet blocks all sight (even darkvision) within it and causes the ground in the area to be icy. A creature can walk within or through the area of sleet at half normal speed with a DC 10 Acrobatics check. Failure means it can't move in that round, while failure by 5 or more means it falls (see the Acrobatics skill for details). The sleet extinguishes torches and small fires.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Slow", school: "Transmutation", levels: "arcanist 3, bard 3, bloodrager 3, magus 3, medium 2, occultist 3, psychic 3, redmantisassassin 3, skald 3, sorcerer 3, spiritualist 3, summoner 2, summoner (unchained) 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a drop of molasses)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature/level, no two of which can be more than 30 ft. apart",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "An affected creature moves and attacks at a drastically slowed rate.",
                          desc: "An affected creature moves and attacks at a drastically slowed rate. Creatures affected by this spell are staggered and can take only a single move action or standard action each turn, but not both (nor may it take full-round actions). Additionally, it takes a –1 penalty on attack rolls, AC, and Reflex saves. A slowed creature moves at half its normal speed (round down to the next 5-foot increment), which affects the creature's jumping distance as normal for decreased speed.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Snare", school: "Transmutation", levels: "druid 3, hunter 2, ranger 2",
                          castingTime: "3 rounds", components: "V, S, DF",
                          range: "touch", area: "", targets: "touched nonmagical circle of vine, rope, or thong with a 2 ft. diameter + 2 ft./level",
                          duration: "until triggered or broken",
                          savingThrow: "none;", sr: false,
                          summary: "This spell enables you to make a snare that functions as a magic trap. The snare can be made from any supple vine, a thong, or a rope.",
                          desc: "This spell enables you to make a snare that functions as a magic trap. The snare can be made from any supple vine, a thong, or a rope. When you cast snare upon it, the cordlike object blends with its surroundings (DC 23 Perception check for a character with the trapfinding ability to locate). One end of the snare is tied in a loop that contracts around one or more of the limbs of any creature stepping inside the circle. If a strong and supple tree is nearby, the snare can be fastened to it. The spell causes the tree to bend, straightening when the loop is triggered, dealing 1d6 points of damage to the creature trapped and lifting it off the ground by the trapped limb or limbs. If no such tree is available, the cordlike object tightens around the creature, dealing no damage but causing it to be entangled. The snare is magical. To escape, a trapped creature must make a DC 23 Escape Artist check or a DC 23 Strength check that is a full-round action. The snare has AC 7 and 5 hit points. A successful escape from the snare breaks the loop and ends the spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Soften Earth and Stone", school: "Transmutation", levels: "druid 2, hunter 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "10-ft. square/level; see text", targets: "",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "When this spell is cast, all natural, undressed earth or stone in the spell's area is softened.",
                          desc: "When this spell is cast, all natural, undressed earth or stone in the spell's area is softened. Wet earth becomes thick mud, dry earth becomes loose sand or dirt, and stone becomes soft clay that is easily molded or chopped. You affect a 10-foot square area to a depth of 1 to 4 feet, depending on the toughness or resilience of the ground at that spot. Magical, enchanted, dressed, or worked stone cannot be affected. Earth or stone creatures are not affected. A creature in mud must succeed on a Reflex save or be caught for 1d2 rounds and unable to move, attack, or cast spells. A creature that succeeds on its save can move through the mud at half speed, and it can't run or charge. Loose dirt is not as troublesome as mud, but all creatures in the area can move at only half their normal speed and can't run or charge over the surface. Stone softened into clay does not hinder movement, but it does allow characters to cut, shape, or excavate areas they may not have been able to affect before. While this spell does not affect dressed or worked stone, cavern ceilings or vertical surfaces such as cliff faces can be affected. Usually, this causes a moderate collapse or landslide as the loosened material peels away from the face of the wall or roof and falls (treat as a cave-in with no bury zone, see Environment). A moderate amount of structural damage can be dealt to a manufactured structure by softening the ground beneath it, causing it to settle. However, most well-built structures will only be damaged by this spell, not destroyed.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Solid Fog", school: "Conjuration (Creation)", levels: "arcanist 4, magus 4, mesmerist 4, shaman 4, sorcerer 4, spiritualist 4, summoner (unchained) 4, witch 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (powdered peas and an animal hoof)",
                          range: "medium (100 ft. + 10 ft./level)", area: "fog spreads in 20-ft. radius", targets: "",
                          duration: "1 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like fog cloud , but in addition to obscuring sight, the",
                          desc: "This spell functions like fog cloud , but in addition to obscuring sight, the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Song of Discord", school: "Enchantment (Compulsion)", levels: "bard 5, psychic 5, skald 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "creatures within a 20-ft.-radius spread", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell causes those within the area to turn on each other rather than attack their foes. Each affected creature has a 50% chance to attack the nearest target each round.",
                          desc: "This spell causes those within the area to turn on each other rather than attack their foes. Each affected creature has a 50% chance to attack the nearest target each round. (Roll to determine each creature's behavior every round at the beginning of its turn.) A creature that does not attack its nearest neighbor is free to act normally for that round. Creatures forced by a song of discord to attack their fellows employ all methods at their disposal, choosing their deadliest spells and most advantageous combat tactics. They do not, however, harm targets that have fallen unconscious. Song of Discord, Greater",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Song of Discord, Greater", school: "Enchantment (Compulsion)", levels: "bard 5, psychic 5, skald 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "creatures within a 20-ft.-radius spread", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions as song of discord except that affected creatures automatically attack the nearest target each round.",
                          desc: "This spell functions as song of discord except that affected creatures automatically attack the nearest target each round. In addition, all affected creatures gain a +4 morale bonus to Strength for the duration of the spell. A creature that succeeds at the Will save reduces the effect’s duration to 1 round.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Soul Bind", school: "Necromancy", levels: "arcanist 9, cleric 9, oracle 9, psychic 9, shaman 9, sorcerer 9, witch 9, wizard 9",
                          castingTime: "1 standard action", components: "V, S, F (see text)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "corpse",
                          duration: "permanent",
                          savingThrow: "Will negates;", sr: false,
                          summary: "You draw the soul from a newly dead body and imprison it in a black sapphire gem. The subject must have been dead no more than 1 round per caster level.",
                          desc: "You draw the soul from a newly dead body and imprison it in a black sapphire gem. The subject must have been dead no more than 1 round per caster level. The soul, once trapped in the gem, cannot be returned through clone ,",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Soul Transfer", school: "Conjuration (Summoning)", levels: "arcanist 8, psychic 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "1 standard action or see text", components: "V, S, M (gem worth 1,000 gp per HD of the trapped creature)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "permanent; see text",
                          savingThrow: "see text;", sr: true,
                          summary: "This spell functions like the spell completion option of trap the soul , except it works only on bodiless souls (such as incorporeal undead or a soul trapped in a gem) and creatures whose substance…",
                          desc: "This spell functions like the spell completion option of trap the soul , except it works only on bodiless souls (such as incorporeal undead or a soul trapped in a gem) and creatures whose substance is a physical incarnation of a soul (such as a petitioner). It does not work on creatures formed from souls or planar material (such as most outsiders).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sound Burst", school: "Evocation", levels: "bard 2, cleric 2, occultist 2, oracle 2, skald 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, F/DF (a musical instrument)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "10-ft.-radius spread", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Fortitude partial;", sr: true,
                          summary: "You blast an area with a tremendous cacophony. Every creature in the area takes 1d8 points of sonic damage and must succeed on a Fortitude save to avoid being stunned for 1 round.",
                          desc: "You blast an area with a tremendous cacophony. Every creature in the area takes 1d8 points of sonic damage and must succeed on a Fortitude save to avoid being stunned for 1 round. Creatures that cannot hear are not stunned but are still damaged.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Source Severance", school: "Abjuration", levels: "arcanist 6, cleric 8, occultist 6, oracle 8, psychic 7, sorcerer 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M/DF (pinch of powdered iron or iron fillings)",
                          range: "10 ft.", area: "10-ft.-radius emanation, centered on you", targets: "",
                          duration: "10 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "You create an invisible barrier that surrounds you and moves with you, inhibiting one category of magic. When you cast this spell, choose either arcane or divine magic.",
                          desc: "You create an invisible barrier that surrounds you and moves with you, inhibiting one category of magic. When you cast this spell, choose either arcane or divine magic. This spell functions like antimagic field , but it suppresses only spells of the chosen type and supernatural and spell-like class abilities from classes that grant spellcasting of the selected type. Magic items, other spell-like abilities, and other supernatural abilities are unaffected. While this spell is in effect, you must succeed at a concentration check (DC 20 + twice the spell level) to cast any spell, whether arcane or divine. If you fail at the check, you lose the spell as if you had cast it to no effect.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Speak with Animals", school: "Divination", levels: "bard 3, druid 1, hunter 1, psychic 2, ranger 1, skald 3",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level",
                          savingThrow: "None", sr: false,
                          summary: "You can ask questions of and receive answers from animals, but the spell doesn't make them any more friendly than normal.",
                          desc: "You can ask questions of and receive answers from animals, but the spell doesn't make them any more friendly than normal. Wary and cunning animals are likely to be terse and evasive, while the more stupid ones make inane comments. If an animal is friendly toward you, it may do some favor or service for you.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Speak with Dead", school: "Necromancy", levels: "cleric 3, inquisitor 3, medium 2, oracle 3, psychic 3, shaman 3, spiritualist 3, warpriest 3, witch 3",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "10 ft.", area: "", targets: "one dead creature",
                          duration: "1 min./level",
                          savingThrow: "Will negates; see text;", sr: false,
                          summary: "You grant the semblance of life to a corpse, allowing it to answer questions. You may ask one question per two caster levels.",
                          desc: "You grant the semblance of life to a corpse, allowing it to answer questions. You may ask one question per two caster levels. The corpse's knowledge is limited to what it knew during life, including the languages it spoke. Answers are brief, cryptic, or repetitive, especially if the creature would have opposed you in life. If the dead creature's alignment was different from yours, the corpse gets a Will save to resist the spell as if it were alive. If successful, the corpse can refuse to answer your questions or attempt to deceive you, using Bluff. The soul can only speak about what it knew in life. It cannot answer any questions that pertain to events that occurred after its death. If the corpse has been subject to",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Speak with Plants", school: "Divination", levels: "bard 4, druid 3, hunter 2, ranger 2, skald 4",
                          castingTime: "1 standard action", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level",
                          savingThrow: "None", sr: false,
                          summary: "You can communicate with normal plants and plant creatures, and can ask questions of and receive answers from them.",
                          desc: "You can communicate with normal plants and plant creatures, and can ask questions of and receive answers from them. A normal plant's sense of its surroundings is limited, so it won't be able to give (or recognize) detailed descriptions of creatures or answer questions about events outside its immediate vicinity. The spell doesn't make plant creatures any more friendly or cooperative than normal. Furthermore, wary and cunning plant creatures are likely to be terse and evasive, while the more stupid ones may make inane comments. If a plant creature is friendly, it may do some favor or service for you.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Speak with Waves", school: "Divination", levels: "druid 6, hunter 6, psychic 6, shaman 7",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level",
                          savingThrow: "None", sr: false,
                          summary: "This spell functions as stone tell but allows conversations only with a body of standing or flowing fresh water at least as large as you are.",
                          desc: "This spell functions as stone tell but allows conversations only with a body of standing or flowing fresh water at least as large as you are. Flowing water can generally speak about events happening upstream but not events happening downstream.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spectral Hand", school: "Necromancy", levels: "arcanist 2, medium 2, occultist 2, psychic 2, sorcerer 2, spiritualist 2, witch 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "medium (100 ft. + 10 ft./level)", area: "one spectral hand", targets: "",
                          duration: "1 min./level",
                          savingThrow: "none;", sr: false,
                          summary: "A ghostly hand shaped from your life force materializes and moves as you desire, allowing you to deliver low-level, touch range spells at a distance.",
                          desc: "A ghostly hand shaped from your life force materializes and moves as you desire, allowing you to deliver low-level, touch range spells at a distance. On casting the spell, you lose 1d4 hit points that return when the spell ends (even if it is dispelled), but not if the hand is destroyed. (The hit points can be healed as normal.) For as long as the spell lasts, any touch range spell of 4th level or lower that you cast can be delivered by the spectral hand . The spell gives you a +2 bonus on your melee touch attack roll, and attacking with the hand counts normally as an attack. The hand always strikes from your direction. The hand cannot flank targets like a creature can. After it delivers a spell, or if it goes beyond the spell range or goes out of your sight, the hand returns to you and hovers. The hand is incorporeal and thus cannot be harmed by normal weapons. It has improved evasion (half damage on a failed Reflex save and no damage on a successful save), your save bonuses, and an AC of 22 (+8 size, +4 natural armor). Your Intelligence modifier applies to the hand's AC as if it were the hand's Dexterity modifier. The hand has 1 to 4 hit points, the same number that you lost in creating it.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spell Immunity", school: "Abjuration", levels: "alchemist 4, cleric 4, inquisitor 4, investigator 4, occultist 4, oracle 4, psychic 4, spiritualist 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The warded creature is immune to the effects of one specified spell for every four levels you have. The spells must be of 4th level or lower.",
                          desc: "The warded creature is immune to the effects of one specified spell for every four levels you have. The spells must be of 4th level or lower. The warded creature effectively has unbeatable spell resistance regarding the specified spell or spells. Naturally, that immunity doesn't protect a creature from spells for which spell resistance doesn't apply. Spell immunity protects against spells, spell-like effects of magic items, and innate spell-like abilities of creatures. It does not protect against supernatural or extraordinary abilities, such as breath weapons or gaze attacks. Only a particular spell can be protected against, not a certain domain or school of spells or a group of spells that are similar in effect. A creature can have only one",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spell Immunity, Communal", school: "Abjuration", levels: "alchemist 4, cleric 4, inquisitor 4, investigator 4, occultist 4, oracle 4, psychic 4, spiritualist 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like spell immunity , except you divide the duration in 10-minute intervals among the creatures touched. Spell Immunity, Greater",
                          desc: "This spell functions like spell immunity , except you divide the duration in 10-minute intervals among the creatures touched. Spell Immunity, Greater",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spell Immunity, Greater", school: "Abjuration", levels: "alchemist 4, cleric 4, inquisitor 4, investigator 4, occultist 4, oracle 4, psychic 4, spiritualist 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like spell immunity , except the immunity applies to spells of 8th level or lower. A creature can have only one",
                          desc: "This spell functions like spell immunity , except the immunity applies to spells of 8th level or lower. A creature can have only one",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spell Immunity, Greater Communal", school: "Abjuration", levels: "alchemist 4, cleric 4, inquisitor 4, investigator 4, occultist 4, oracle 4, psychic 4, spiritualist 4, warpriest 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like greater spell immunity , except you divide the duration among the creatures in 10-minute intervals among the creatures touched.",
                          desc: "This spell functions like greater spell immunity , except you divide the duration among the creatures in 10-minute intervals among the creatures touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spell Resistance", school: "Abjuration", levels: "alchemist 5, cleric 5, inquisitor 5, investigator 5, occultist 5, oracle 5, psychic 5, spiritualist 5, warpriest 5",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The target gains spell resistance equal to 12 + your caster level.",
                          desc: "The target gains spell resistance equal to 12 + your caster level.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spell Turning", school: "Abjuration", levels: "arcanist 7, psychic 7, sorcerer 7, summoner 5, summoner (unchained) 6, wizard 7",
                          castingTime: "1 standard action", components: "V, S, M/DF (a small silver mirror)",
                          range: "personal", area: "", targets: "you",
                          duration: "until expended or 10 min./level",
                          savingThrow: "None", sr: false,
                          summary: "Spells and spell-like effects targeted on you are turned back upon the original caster. The abjuration turns only spells that have you as a target. Effect and area spells are not affected.",
                          desc: "Spells and spell-like effects targeted on you are turned back upon the original caster. The abjuration turns only spells that have you as a target. Effect and area spells are not affected. Spell turning also fails to stop touch range spells. From seven to ten (1d4+6) spell levels are affected by the turning. The exact number is rolled secretly. When you are targeted by a spell of higher level than the amount of spell turning you have left, that spell is partially turned. Subtract the amount of spell turning left from the spell level of the incoming spell, then divide the result by the spell level of the incoming spell to see what fraction of the effect gets through. For damaging spells, you and the caster each take a fraction of the damage. For nondamaging spells, each of you has a proportional chance to be the one who is affected. If you and a spellcasting attacker are both warded by",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spellstaff", school: "Transmutation", levels: "druid 6, hunter 6",
                          castingTime: "10 minutes", components: "V, S, F (the staff that stores the spell)",
                          range: "touch", area: "", targets: "wooden quarterstaff touched",
                          duration: "permanent until discharged (D)",
                          savingThrow: "Will negates (object);", sr: true,
                          summary: "You store one spell that you can normally cast in a wooden quarterstaff. Only one such spell can be stored in a staff at a given time, and you cannot have more than one spellstaff at any given time.",
                          desc: "You store one spell that you can normally cast in a wooden quarterstaff. Only one such spell can be stored in a staff at a given time, and you cannot have more than one spellstaff at any given time. You can cast a spell stored within a staff just as though it were among those you had prepared, but it does not count against your normal allotment for a given day. You use up any applicable material components required to cast the spell when you store it in the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spider Climb", school: "Transmutation", levels: "alchemist 2, arcanist 2, bloodrager 2, druid 2, hunter 2, investigator 2, magus 2, medium 2, occultist 2, psychic 2, redmantisassassin 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a live spider)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The subject can climb and travel on vertical surfaces or even traverse ceilings as well as a spider does. The affected creature must have its hands free to climb in this manner.",
                          desc: "The subject can climb and travel on vertical surfaces or even traverse ceilings as well as a spider does. The affected creature must have its hands free to climb in this manner. The subject gains a climb speed of 20 feet and a +8 racial bonus on Climb skill checks; furthermore, it need not make Climb checks to traverse a vertical or horizontal surface (even upside down). A spider climbing creature retains its Dexterity bonus to Armor Class (if any) while climbing, and opponents get no special bonus to their attacks against it. It cannot, however, use the run action while climbing.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spider Climb, Communal", school: "Transmutation", levels: "alchemist 2, arcanist 2, bloodrager 2, druid 2, hunter 2, investigator 2, magus 2, medium 2, occultist 2, psychic 2, redmantisassassin 2, sorcerer 2, summoner 2, summoner (unchained) 2, wizard 2",
                          castingTime: "1 standard action", components: "V, S, M (a live spider)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like spider climb , except you divide the duration in 10-minute intervals among the creatures touched.",
                          desc: "This spell functions like spider climb , except you divide the duration in 10-minute intervals among the creatures touched.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spike Growth", school: "Transmutation", levels: "druid 3, hunter 2, ranger 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "one 20-ft. square/level", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "Reflex partial;", sr: true,
                          summary: "Any ground-covering vegetation in the spell's area becomes very hard and sharply pointed without changing its appearance. In areas of bare earth, roots and rootlets act in the same way.",
                          desc: "Any ground-covering vegetation in the spell's area becomes very hard and sharply pointed without changing its appearance. In areas of bare earth, roots and rootlets act in the same way. Typically, spike growth can be cast in any outdoor setting except open water, ice, heavy snow, sandy desert, or bare stone. Any creature moving on foot into or through the spell's area takes 1d4 points of piercing damage for each 5 feet of movement through the spiked area. Any creature that takes damage from this spell must also succeed on a Reflex save or suffer injuries to its feet and legs that slow its land speed by half. This speed penalty lasts for 24 hours or until the injured creature receives a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spike Stones", school: "Transmutation", levels: "druid 4, hunter 4, shaman 4",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "one 20-ft. square/level", targets: "",
                          duration: "1 hour/level (D)",
                          savingThrow: "Reflex partial;", sr: true,
                          summary: "Rocky ground, stone floors, and similar surfaces shape themselves into long, sharp points that blend into the background. Spike stones impede progress through an area and deal damage.",
                          desc: "Rocky ground, stone floors, and similar surfaces shape themselves into long, sharp points that blend into the background. Spike stones impede progress through an area and deal damage. Any creature moving on foot into or through the spell's area moves at half speed. In addition, each creature moving through the area takes 1d8 points of piercing damage for each 5 feet of movement through the spiked area. Any creature that takes damage from this spell must also succeed on a Reflex save to avoid injuries to its feet and legs. A failed save causes the creature's speed to be reduced to half normal for 24 hours or until the injured creature receives a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Spiritual Weapon", school: "Evocation", levels: "cleric 2, inquisitor 2, medium 2, oracle 2, shaman 2, spiritualist 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "medium (100 ft. + 10 ft./level)", area: "magic weapon of force", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: true,
                          summary: "A weapon made of force appears and attacks foes at a distance, as you direct it, dealing 1d8 force damage per hit, + 1 point per three caster levels (maximum +5 at 15th level).",
                          desc: "A weapon made of force appears and attacks foes at a distance, as you direct it, dealing 1d8 force damage per hit, + 1 point per three caster levels (maximum +5 at 15th level). The weapon takes the shape of a weapon favored by your deity or a weapon with some spiritual significance or symbolism to you (see below) and has the same threat range and critical multipliers as a real weapon of its form. It strikes the opponent you designate, starting with one attack in the round the spell is cast and continuing each round thereafter on your turn. It uses your base attack bonus (possibly allowing it multiple attacks per round in subsequent rounds) plus your Wisdom modifier as its attack bonus. It strikes as a spell, not as a weapon, so for example, it can damage creatures that have damage reduction. As a force effect, it can strike incorporeal creatures without the reduction in damage associated with incorporeality. The weapon always strikes from your direction. It does not get a flanking bonus or help a combatant get one. Your feats or combat actions do not affect the weapon. If the weapon goes beyond the spell range, if it goes out of your sight, or if you are not directing it, the weapon returns to you and hovers. Each round after the first, you can use a move action to redirect the weapon to a new target. If you do not, the weapon continues to attack the previous round's target. On any round that the weapon switches targets, it gets one attack. Subsequent rounds of attacking that target allow the weapon to make multiple attacks if your base attack bonus would allow it to. Even if the spiritual weapon is a ranged weapon, use the spell's range, not the weapon's normal range increment, and switching targets still is a move action.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Stabilize", school: "Conjuration (Healing)", levels: "adept 0, cleric 0, druid 0, hunter 0, inquisitor 0, medium 0, occultist 0, oracle 0, psychic 0, shaman 0, spiritualist 0, warpriest 0, witch 0",
                          castingTime: "1 standard action", components: "V, S",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "instantaneous",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "Upon casting this spell, you target a living creature that has –1 or fewer hit points. That creature is automatically stabilized and does not lose any further hit points.",
                          desc: "Upon casting this spell, you target a living creature that has –1 or fewer hit points. That creature is automatically stabilized and does not lose any further hit points. If the creature later takes damage, it continues dying normally.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Statue", school: "Transmutation", levels: "alchemist 6, arcanist 7, investigator 6, occultist 6, sorcerer 7, wizard 7",
                          castingTime: "1 round", components: "V, S, M (lime, sand, and a drop of water stirred by an iron spike)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "A statue spell turns the subject to solid stone, along with any garments and equipment worn or carried. In statue form, the subject gains hardness 8. The subject retains its own hit points.",
                          desc: "A statue spell turns the subject to solid stone, along with any garments and equipment worn or carried. In statue form, the subject gains hardness 8. The subject retains its own hit points. The subject can see, hear, and smell normally, but it does not need to eat or breathe. Feeling is limited to those sensations that can affect the granite-hard substance of the individual's body. Chipping is equal to a mere scratch, but breaking off one of the statue's arms constitutes serious damage. The subject of a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Status", school: "Divination", levels: "cleric 2, medium 2, occultist 2, oracle 2, psychic 2, spiritualist 2, warpriest 2, witch 2",
                          castingTime: "1 standard action", components: "V, S",
                          range: "touch", area: "", targets: "one living creature touched per three levels",
                          duration: "1 hour/level",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "When you need to keep track of comrades who may get separated, status allows you to mentally monitor their relative positions and general condition.",
                          desc: "When you need to keep track of comrades who may get separated, status allows you to mentally monitor their relative positions and general condition. You are aware of direction and distance to the creatures and any conditions affecting them: unharmed, wounded, disabled, staggered, unconscious, dying, nauseated, panicked, stunned, poisoned, diseased, confused, or the like. Once the spell has been cast upon the subjects, the distance between them and the caster does not affect the spell as long as they are on the same plane of existence. If a subject leaves the plane, or if it dies, the spell ceases to function for it.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Stinking Cloud", school: "Conjuration (Creation)", levels: "arcanist 3, bloodrager 3, magus 3, shaman 3, sorcerer 3, summoner (unchained) 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, S, M (a rotten egg or cabbage leaves)",
                          range: "medium (100 ft. + 10 ft./level)", area: "cloud spreads in 20-ft. radius, 20 ft. high", targets: "",
                          duration: "1 round/level",
                          savingThrow: "Fortitude negates; see text;", sr: false,
                          summary: "Stinking cloud creates a bank of fog like that created by fog cloud , except that the vapors are nauseating. Living creatures in the cloud become nauseated.",
                          desc: "Stinking cloud creates a bank of fog like that created by fog cloud , except that the vapors are nauseating. Living creatures in the cloud become nauseated. This condition lasts as long as the creature is in the cloud and for 1d4+1 rounds after it leaves. (Roll separately for each nauseated character.) Any creature that succeeds on its save but remains in the cloud must continue to save each round on your turn. This is a poison effect.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Stone Shape", school: "Transmutation", levels: "arcanist 4, cleric 3, druid 3, hunter 3, occultist 3, oracle 3, redmantisassassin 4, shaman 3, sorcerer 4, warpriest 3, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M/DF (soft clay)",
                          range: "touch", area: "", targets: "stone or stone object touched, up to 10 cu. ft. + 1 cu. ft./level",
                          duration: "instantaneous",
                          savingThrow: "none;", sr: false,
                          summary: "You can form an existing piece of stone into any shape that suits your purpose. While it's possible to make crude coffers, doors, and so forth with stone shape , fine detail isn't possible.",
                          desc: "You can form an existing piece of stone into any shape that suits your purpose. While it's possible to make crude coffers, doors, and so forth with stone shape , fine detail isn't possible. There is a 30% chance that any shape including moving parts simply doesn't work.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Stone Tell", school: "Divination", levels: "druid 6, hunter 6, psychic 6, shaman 7",
                          castingTime: "10 minutes", components: "V, S, DF",
                          range: "personal", area: "", targets: "you",
                          duration: "1 min./level",
                          savingThrow: "None", sr: false,
                          summary: "You gain the ability to speak with stones, which relate to you who or what has touched them as well as revealing what is covered or concealed behind or under them.",
                          desc: "You gain the ability to speak with stones, which relate to you who or what has touched them as well as revealing what is covered or concealed behind or under them. The stones relate complete descriptions if asked. A stone's perspective, perception, and knowledge may prevent the stone from providing the details you are looking for. You can speak with natural or worked stone. Speak with Waves",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Stone to Flesh", school: "Transmutation", levels: "arcanist 6, magus 6, shaman 6, sorcerer 6, witch 6, wizard 6",
                          castingTime: "1 standard action", components: "V, S, M (a drop of blood mixed with earth)",
                          range: "medium (100 ft. + 10 ft./level)", area: "", targets: "one petrified creature or a cylinder of stone from 1 ft. to 3 ft. in diameter and up to 10 ft. long",
                          duration: "instantaneous",
                          savingThrow: "Fortitude negates (object); see text;", sr: true,
                          summary: "This spell restores a petrified creature to its normal state, restoring life and goods. The creature must make a DC 15 Fortitude save to survive the process.",
                          desc: "This spell restores a petrified creature to its normal state, restoring life and goods. The creature must make a DC 15 Fortitude save to survive the process. Any petrified creature, regardless of size, can be restored. The spell also can convert a mass of stone into a fleshy substance. Such flesh is inert and lacking a vital life force unless a life force or magical energy is available. For example, this spell would turn an animated stone statue into an animated flesh statue, but an ordinary statue would become a mass of inert flesh in the shape of the statue. You can affect an object that fits within a cylinder from 1 foot to 3 feet in diameter and up to 10 feet long or a cylinder of up to those dimensions in a larger mass of stone.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Stoneskin", school: "Abjuration", levels: "adept 4, alchemist 4, arcanist 4, bloodrager 4, druid 5, hunter 5, inquisitor 4, investigator 4, magus 4, occultist 4, psychic 4, shaman 5, sorcerer 4, summoner 3, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (granite and diamond dust worth 250 gp)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level or until discharged",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "The warded creature gains resistance to blows, cuts, stabs, and slashes. The subject gains DR 10/adamantine.",
                          desc: "The warded creature gains resistance to blows, cuts, stabs, and slashes. The subject gains DR 10/adamantine. It ignores the first 10 points of damage each time it takes damage from a weapon, though an adamantine weapon bypasses the reduction. Once the spell has prevented a total of 10 points of damage per caster level (maximum 150 points), it is discharged.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Stoneskin, Communal", school: "Abjuration", levels: "adept 4, alchemist 4, arcanist 4, bloodrager 4, druid 5, hunter 5, inquisitor 4, investigator 4, magus 4, occultist 4, psychic 4, shaman 5, sorcerer 4, summoner 3, summoner (unchained) 4, wizard 4",
                          castingTime: "1 standard action", components: "V, S, M (granite and diamond dust worth 250 gp)",
                          range: "touch", area: "", targets: "creature touched",
                          duration: "10 min./level or until discharged",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like stoneskin , except you divide the duration in 10 minute intervals among the creatures touched.",
                          desc: "This spell functions like stoneskin , except you divide the duration in 10 minute intervals among the creatures touched. Once the spell has prevented 10 points of damage per caster level (maximum 150 points) for a subject, the spell’s effects end for that subject.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Storm of Vengeance", school: "Conjuration (Summoning)", levels: "cleric 9, druid 9, oracle 9, shaman 9, witch 9",
                          castingTime: "1 round", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "360-ft.-radius storm cloud", targets: "",
                          duration: "concentration (maximum 10 rounds) (D)",
                          savingThrow: "see text;", sr: true,
                          summary: "You create a huge black storm cloud in the air. Each creature under the cloud must succeed on a Fortitude save or be deafened for 1d4 × 10 minutes.",
                          desc: "You create a huge black storm cloud in the air. Each creature under the cloud must succeed on a Fortitude save or be deafened for 1d4 × 10 minutes. Each round you continue to concentrate, the spell generates additional effects as noted below. Each effect occurs on your turn. 2nd Round : Acid rains down in the area, dealing 1d6 points of acid damage (no save).",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Suggestion", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, medium 2, mesmerist 2, occultist 3, psychic 2, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, M (a snake's tongue and a honeycomb)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 hour/level or until completed",
                          savingThrow: "Will negates;", sr: true,
                          summary: "You influence the actions of the target creature by suggesting a course of activity (limited to a sentence or two).",
                          desc: "You influence the actions of the target creature by suggesting a course of activity (limited to a sentence or two). The suggestion must be worded in such a manner as to make the activity sound reasonable. Asking the creature to do some obviously harmful act automatically negates the effect of the spell. The suggested course of activity can continue for the entire duration. If the suggested activity can be completed in a shorter time, the spell ends when the subject finishes what it was asked to do. You can instead specify conditions that will trigger a special activity during the duration. If the condition is not met before the spell duration expires, the activity is not performed.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Suggestion, Mass", school: "Enchantment (Compulsion)", levels: "arcanist 3, bard 2, medium 2, mesmerist 2, occultist 3, psychic 2, skald 2, sorcerer 3, witch 3, wizard 3",
                          castingTime: "1 standard action", components: "V, M (a snake's tongue and a honeycomb)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one living creature",
                          duration: "1 hour/level or until completed",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like suggestion , except that it can affect more creatures. The same",
                          desc: "This spell functions like suggestion , except that it can affect more creatures. The same",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Instrument", school: "Conjuration (Summoning)", levels: "bard 0, skald 0",
                          castingTime: "1 round", components: "V, S",
                          range: "0 ft.", area: "one summoned handheld musical instrument", targets: "",
                          duration: "1 min./level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell summons one handheld musical instrument of your choice. This instrument appears in your hands or at your feet (your choice). The instrument is typical for its type.",
                          desc: "This spell summons one handheld musical instrument of your choice. This instrument appears in your hands or at your feet (your choice). The instrument is typical for its type. Only one instrument appears per casting, and it will play only for you. You can't summon an instrument too large to be held in two hands. The summoned instrument disappears at the end of this spell.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Kami", school: "Conjuration (Summoning)", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as summon nature’s ally V , except you can summon one kodama, 1d3 fukujin, or 1d4+1 shikigami.",
                          desc: "This spell functions as summon nature’s ally V , except you can summon one kodama, 1d3 fukujin, or 1d4+1 shikigami.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Monster 1", school: "Conjuration (Summoning)", levels: "antipaladin 1, arcanist 1, bard 1, cleric 1, medium 1, oracle 1, psychic 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, F/DF (a tiny bag and a small candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "Note: Antipaladins may only summon evil creatures. This spell summons an extraplanar creature (typically an outsider, elemental, or magical beast native to another plane).",
                          desc: "Note: Antipaladins may only summon evil creatures. This spell summons an extraplanar creature (typically an outsider, elemental, or magical beast native to another plane). It appears where you designate and acts immediately, on your turn. It attacks your opponents to the best of its ability. If you can communicate with the creature, you can direct it not to attack, to attack particular enemies, or to perform other actions. The spell conjures one of the creatures from the 1st Level list on Table 10–1. You choose which kind of creature to summon, and you can choose a different one each time you cast the spell. A summoned monster cannot summon or otherwise conjure another creature, nor can it use any teleportation or planar travel abilities. Creatures cannot be summoned into an environment that cannot support them. Creatures summoned using this spell cannot use spells or spell-like abilities that duplicate spells with expensive material components (such as",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Monster 2", school: "Conjuration (Summoning)", levels: "antipaladin 1, arcanist 1, bard 1, cleric 1, medium 1, oracle 1, psychic 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, F/DF (a tiny bag and a small candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster I , except that you can summon one creature from the 2nd-level list or 1d3 creatures of the same kind from the 1st-level list.",
                          desc: "This spell functions like summon monster I , except that you can summon one creature from the 2nd-level list or 1d3 creatures of the same kind from the 1st-level list.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Monster 3", school: "Conjuration (Summoning)", levels: "antipaladin 1, arcanist 1, bard 1, cleric 1, medium 1, oracle 1, psychic 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, F/DF (a tiny bag and a small candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster I , except that you can summon one creature from the 3rd-level list, 1d3 creatures of the same kind from the 2nd-level list, or 1d4+1 creatures of the same…",
                          desc: "This spell functions like summon monster I , except that you can summon one creature from the 3rd-level list, 1d3 creatures of the same kind from the 2nd-level list, or 1d4+1 creatures of the same kind from the 1st-level list.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Monster 4", school: "Conjuration (Summoning)", levels: "antipaladin 1, arcanist 1, bard 1, cleric 1, medium 1, oracle 1, psychic 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, F/DF (a tiny bag and a small candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster I , except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same…",
                          desc: "This spell functions like summon monster I , except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Monster 5", school: "Conjuration (Summoning)", levels: "antipaladin 1, arcanist 1, bard 1, cleric 1, medium 1, oracle 1, psychic 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, F/DF (a tiny bag and a small candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster I , except that you can summon one creature from the 5th-level list, 1d3 creatures of the same kind from the 4th-level list, or 1d4+1 creatures of the same…",
                          desc: "This spell functions like summon monster I , except that you can summon one creature from the 5th-level list, 1d3 creatures of the same kind from the 4th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Monster 6", school: "Conjuration (Summoning)", levels: "antipaladin 1, arcanist 1, bard 1, cleric 1, medium 1, oracle 1, psychic 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, F/DF (a tiny bag and a small candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster I , except you can summon one creature from the 6th-level list, 1d3 creatures of the same kind from the 5th-level list, or 1d4+1 creatures of the same kind…",
                          desc: "This spell functions like summon monster I , except you can summon one creature from the 6th-level list, 1d3 creatures of the same kind from the 5th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Monster 7", school: "Conjuration (Summoning)", levels: "antipaladin 1, arcanist 1, bard 1, cleric 1, medium 1, oracle 1, psychic 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, F/DF (a tiny bag and a small candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster I , except that you can summon one creature from the 7th-level list, 1d3 creatures of the same kind from the 6th-level list, or 1d4+1 creatures of the same…",
                          desc: "This spell functions like summon monster I , except that you can summon one creature from the 7th-level list, 1d3 creatures of the same kind from the 6th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Monster 8", school: "Conjuration (Summoning)", levels: "antipaladin 1, arcanist 1, bard 1, cleric 1, medium 1, oracle 1, psychic 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, F/DF (a tiny bag and a small candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster I , except that you can summon one creature from the 8th-level list, 1d3 creatures of the same kind from the 7th-level list, or 1d4+1 creatures of the same…",
                          desc: "This spell functions like summon monster I , except that you can summon one creature from the 8th-level list, 1d3 creatures of the same kind from the 7th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Monster 9", school: "Conjuration (Summoning)", levels: "antipaladin 1, arcanist 1, bard 1, cleric 1, medium 1, oracle 1, psychic 1, skald 1, sorcerer 1, spiritualist 1, summoner 1, summoner (unchained) 1, warpriest 1, witch 1, wizard 1",
                          castingTime: "1 round", components: "V, S, F/DF (a tiny bag and a small candle)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon monster I , except that you can summon one creature from the 9th-level list, 1d3 creatures of the same kind from the 8th-level list, or 1d4+1 creatures of the same…",
                          desc: "This spell functions like summon monster I , except that you can summon one creature from the 9th-level list, 1d3 creatures of the same kind from the 8th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Nature's Ally 1", school: "Conjuration (Summoning)", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell summons to your side a natural creature (typically an animal, fey, magical beast, outsider with the elemental subtype, or a giant).",
                          desc: "This spell summons to your side a natural creature (typically an animal, fey, magical beast, outsider with the elemental subtype, or a giant). The summoned ally appears where you designate and acts immediately, on your turn. It attacks your opponents to the best of its ability. If you can communicate with the creature, you can direct it not to attack, to attack particular enemies, or to perform other actions as you command. A summoned monster cannot summon or otherwise conjure another creature, nor can it use any teleportation or planar travel abilities. Creatures cannot be summoned into an environment that cannot support them. Creatures summoned using this spell cannot use spells or spell-like abilities that duplicate spells that have expensive material components (such as wish ). The spell conjures one of the creatures from the 1st Level list on Table 10–2. You choose which kind of creature to summon, and you can change that choice each time you cast the spell. All the creatures on the table are neutral unless otherwise noted. When you use a summoning spell to summon a creature with an alignment or elemental subtype, it is a spell of that type. All creatures summoned with this spell without alignment subtypes have an alignment that matches yours, regardless of their usual alignment. Summoning these creatures makes the summoning spell's type match your alignment.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Nature's Ally 2", school: "Conjuration (Summoning)", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions as summon nature's ally I , except that you summon one 2nd-level creature or 1d3 1st-level creatures of the same kind.",
                          desc: "This spell functions as summon nature's ally I , except that you summon one 2nd-level creature or 1d3 1st-level creatures of the same kind.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Nature's Ally 3", school: "Conjuration (Summoning)", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon nature's ally I , except that you can summon one 3rd-level creature, 1d3 2nd-level creatures of the same kind, or 1d4+1 1st-level creatures of the same kind.",
                          desc: "This spell functions like summon nature's ally I , except that you can summon one 3rd-level creature, 1d3 2nd-level creatures of the same kind, or 1d4+1 1st-level creatures of the same kind.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Nature's Ally 4", school: "Conjuration (Summoning)", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon nature's ally I , except that you can summon one 4th-level creature, 1d3 3rd-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
                          desc: "This spell functions like summon nature's ally I , except that you can summon one 4th-level creature, 1d3 3rd-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Nature's Ally 5", school: "Conjuration (Summoning)", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon nature's ally I , except that you can summon one 5th-level creature, 1d3 4th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
                          desc: "This spell functions like summon nature's ally I , except that you can summon one 5th-level creature, 1d3 4th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Nature's Ally 6", school: "Conjuration (Summoning)", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon nature's ally I , except that you can summon one 6th-level creature, 1d3 5th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
                          desc: "This spell functions like summon nature's ally I , except that you can summon one 6th-level creature, 1d3 5th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Nature's Ally 7", school: "Conjuration (Summoning)", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon nature's ally I , except that you can summon one 7th-level creature, 1d3 6th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
                          desc: "This spell functions like summon nature's ally I , except that you can summon one 7th-level creature, 1d3 6th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Nature's Ally 8", school: "Conjuration (Summoning)", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon nature's ally I , except that you can summon one 8th-level creature, 1d3 7th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
                          desc: "This spell functions like summon nature's ally I , except that you can summon one 8th-level creature, 1d3 7th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Nature's Ally 9", school: "Conjuration (Summoning)", levels: "druid 1, hunter 1, ranger 1, shaman 1",
                          castingTime: "1 round", components: "V, S, DF",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one summoned creature", targets: "",
                          duration: "1 round/level (D)",
                          savingThrow: "none;", sr: false,
                          summary: "This spell functions like summon nature's ally I , except that you can summon one 9th-level creature, 1d3 8th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
                          desc: "This spell functions like summon nature's ally I , except that you can summon one 9th-level creature, 1d3 8th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Summon Swarm", school: "Conjuration (Summoning)", levels: "arcanist 2, bard 2, druid 2, hunter 2, shaman 2, skald 2, sorcerer 2, summoner 2, summoner (unchained) 2, witch 2, wizard 2",
                          castingTime: "1 round", components: "V, S, M/DF (a square of red cloth)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "one swarm of bats, rats, or spiders", targets: "",
                          duration: "concentration + 2 rounds",
                          savingThrow: "none;", sr: false,
                          summary: "You summon a swarm of bats, rats, or spiders (your choice), which attacks all other creatures within its area.",
                          desc: "You summon a swarm of bats, rats, or spiders (your choice), which attacks all other creatures within its area. (You may summon the swarm so that it shares the area of other creatures.) If no living creatures are within its area, the swarm attacks or pursues the nearest creature as best it can. The caster has no control over its target or direction of travel.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sunbeam", school: "Evocation", levels: "druid 7, shaman 7",
                          castingTime: "1 standard action", components: "V, S, DF",
                          range: "60 ft.", area: "line from your hand", targets: "",
                          duration: "1 round/level or until all beams are exhausted",
                          savingThrow: "Reflex negates and Reflex half; see text;", sr: true,
                          summary: "For the duration of this spell, you can use a standard action to evoke a dazzling beam of intense light each round.",
                          desc: "For the duration of this spell, you can use a standard action to evoke a dazzling beam of intense light each round. You can call forth one beam per three caster levels (maximum six beams at 18th level). The spell ends when its duration runs out or your allotment of beams is exhausted. Each creature in the beam is blinded and takes 4d6 points of damage. Any creatures to which sunlight is harmful or unnatural take double damage. A successful Reflex save negates the blindness and reduces the damage by half. An undead creature caught within the beam takes 1d6 points of damage per caster level (maximum 20d6), or half damage if a Reflex save is successful. In addition, the beam results in the destruction of any undead creature specifically harmed by bright light if it fails its save. The ultraviolet light generated by the spell deals damage to fungi, mold, oozes, and slimes just as if they were undead creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sunburst", school: "Evocation", levels: "arcanist 8, druid 8, shaman 8, sorcerer 8, wizard 8",
                          castingTime: "1 standard action", components: "V, S, M/DF (sunstone and fire source)",
                          range: "long (400 ft. + 40 ft./level)", area: "80-ft.-radius burst", targets: "",
                          duration: "instantaneous",
                          savingThrow: "Reflex partial; see text;", sr: true,
                          summary: "Sunburst causes a globe of searing radiance to explode silently from a point you select. All creatures in the globe are blinded and take 6d6 points of damage.",
                          desc: "Sunburst causes a globe of searing radiance to explode silently from a point you select. All creatures in the globe are blinded and take 6d6 points of damage. A creature to which sunlight is harmful or unnatural takes double damage. A successful Reflex save negates the blindness and reduces the damage by half. An undead creature caught within the globe takes 1d6 points of damage per caster level (maximum 25d6), or half damage if a Reflex save is successful. In addition, the burst results in the destruction of any undead creature specifically harmed by bright light if it fails its save. The ultraviolet light generated by the spell deals damage to fungi, mold, oozes, and slimes just as if they were undead creatures.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Symbol of Death", school: "Necromancy", levels: "arcanist 8, cleric 8, occultist 6, oracle 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorus, plus powdered diamond and opal worth 5,000 gp each)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell allows you to scribe a potent rune of power upon a surface.",
                          desc: "This spell allows you to scribe a potent rune of power upon a surface. When triggered, a symbol of death kills one or more creatures within 60 feet of the symbol (treat as a burst) whose combined total current hit points do not exceed 150. The",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Symbol of Fear", school: "Necromancy", levels: "arcanist 6, cleric 6, occultist 4, oracle 6, sorcerer 6, warpriest 6, witch 6, wizard 6",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorus, plus powdered diamond and opal worth a total of 1,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like symbol of death , except that all creatures within 60 feet of the",
                          desc: "This spell functions like symbol of death , except that all creatures within 60 feet of the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Symbol of Insanity", school: "Enchantment (Compulsion)", levels: "arcanist 8, cleric 8, occultist 6, oracle 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorus, plus powdered diamond and opal worth a total of 5,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like symbol of death , except that all creatures within the radius of the",
                          desc: "This spell functions like symbol of death , except that all creatures within the radius of the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Symbol of Pain", school: "Necromancy", levels: "arcanist 5, cleric 5, mesmerist 5, occultist 4, oracle 5, sorcerer 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorus, plus powdered diamond and opal worth a total of 1,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions like symbol of death , except that each creature within the radius of a",
                          desc: "This spell functions like symbol of death , except that each creature within the radius of a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Symbol of Persuasion", school: "Enchantment (Charm)", levels: "arcanist 6, cleric 6, mesmerist 6, occultist 4, oracle 6, sorcerer 6, warpriest 6, witch 6, wizard 6",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorus, plus powdered diamond and opal worth a total of 5,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like symbol of death , except that all creatures within the radius of a",
                          desc: "This spell functions like symbol of death , except that all creatures within the radius of a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Symbol of Sleep", school: "Enchantment (Compulsion)", levels: "arcanist 5, cleric 5, mesmerist 5, occultist 4, oracle 5, sahirafiyun 5, sorcerer 5, warpriest 5, witch 5, wizard 5",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorus, plus powdered diamond and opal worth a total of 1,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like symbol of death , except that all creatures of 10 HD or less within 60 feet of the",
                          desc: "This spell functions like symbol of death , except that all creatures of 10 HD or less within 60 feet of the",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Symbol of Storms", school: "Necromancy", levels: "arcanist 8, cleric 8, occultist 6, oracle 8, sorcerer 8, witch 8, wizard 8",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorus, plus powdered diamond and opal worth 5,000 gp each)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions as symbol of death , except that when triggered, a 30-foot-radius centered on the symbol fills with hurricane-force winds (75 mph).",
                          desc: "This spell functions as symbol of death , except that when triggered, a 30-foot-radius centered on the symbol fills with hurricane-force winds (75 mph). Each round, a bolt of lightning that deals 10d6 points of electricity damage strikes a random creature within the area. A successful Reflex save halves this damage. Unlike",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Symbol of Stunning", school: "Enchantment (Compulsion)", levels: "arcanist 7, cleric 7, occultist 5, oracle 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorus, plus powdered diamond and opal worth a total of 5,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Will negates;", sr: true,
                          summary: "This spell functions like symbol of death , except that all creatures within 60 feet of a",
                          desc: "This spell functions like symbol of death , except that all creatures within 60 feet of a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Symbol of Weakness", school: "Necromancy", levels: "arcanist 7, cleric 7, occultist 5, oracle 7, sorcerer 7, witch 7, wizard 7",
                          castingTime: "10 minutes", components: "V, S, M (mercury and phosphorus, plus powdered diamond and opal worth a total of 5,000 gp)",
                          range: "0 ft.; see text", area: "one symbol", targets: "",
                          duration: "see text",
                          savingThrow: "Fortitude negates;", sr: true,
                          summary: "This spell functions like symbol of death , except that every creature within 60 feet of a",
                          desc: "This spell functions like symbol of death , except that every creature within 60 feet of a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sympathetic Aura", school: "Illusion (Glamer)", levels: "arcanist 1, bard 1, mesmerist 1, occultist 1, psychic 1, redmantisassassin 1, skald 1, sorcerer 1, wizard 1",
                          castingTime: "1 standard action", components: "V, S, F (a small square of silk that must be passed over the object that receives the aura)",
                          range: "touch", area: "", targets: "one touched object weighing up to 5 lbs./level",
                          duration: "1 day/level (D)",
                          savingThrow: "none; see text;", sr: false,
                          summary: "This spell functions like magic aura , except it extends its altered aura to similar items in a 5-foot radius.",
                          desc: "This spell functions like magic aura , except it extends its altered aura to similar items in a 5-foot radius. For this purpose, similar items must be alike in approximate shape, composition, and function, so a",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sympathetic Vibration", school: "Evocation", levels: "bard 6, skald 6",
                          castingTime: "10 minutes", components: "V, S, F (a tuning fork)",
                          range: "touch", area: "", targets: "one freestanding structure",
                          duration: "up to 1 round/level",
                          savingThrow: "none; see text;", sr: true,
                          summary: "By attuning yourself to a freestanding structure, you can create a damaging vibration within it.",
                          desc: "By attuning yourself to a freestanding structure, you can create a damaging vibration within it. Once it begins, the vibration deals 2d10 points of damage per round to the target structure, bypassing hardness. You can choose at the time of casting to limit the duration of the spell; otherwise it lasts for 1 round per level. If the spell is cast upon a target that is not freestanding, the surrounding stone dissipates the effect and no damage occurs. Sympathetic vibration cannot affect creatures (including constructs). Since a structure is an unattended object, it gets no saving throw to resist the effect.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sympathetic Wounds", school: "Abjuration", levels: "cleric 2, inquisitor 2, oracle 2, paladin 2, psychic 2, warpriest 2",
                          castingTime: "1 standard action", components: "V, S, F (a pair of platinum rings worth 50 gp worn by both you and the target)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one creature",
                          duration: "1 hour/level (D)",
                          savingThrow: "Will negates (harmless);", sr: true,
                          summary: "This spell functions like shield other , except some of your wounds transfer to the targeted creature rather than some of their wounds transferring to you.",
                          desc: "This spell functions like shield other , except some of your wounds transfer to the targeted creature rather than some of their wounds transferring to you. For example, you could link yourself to a nearby chained slave so that when you are wounded, some of the damage is transferred to the slave. You must have at least as many hit dice as the target, otherwise the spell fails. A creature can only be under the effects of one instance of this spell at a time.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Sympathy", school: "Enchantment (Compulsion)", levels: "arcanist 8, druid 9, occultist 6, psychic 8, sorcerer 8, summoner 6, witch 8, wizard 8",
                          castingTime: "1 hour", components: "V, S, M (a drop of honey and crushed pearls worth 1,500 gp)",
                          range: "close (25 ft. + 5 ft./2 levels)", area: "", targets: "one location (up to a 10-ft. cube/level) or one object",
                          duration: "2 hours/level (D)",
                          savingThrow: "Will negates; see text;", sr: true,
                          summary: "You cause an object or location to emanate magical vibrations that attract either a specific kind of intelligent creature or creatures of a particular alignment, as defined by you.",
                          desc: "You cause an object or location to emanate magical vibrations that attract either a specific kind of intelligent creature or creatures of a particular alignment, as defined by you. The particular kind of creature to be affected must be named specifically. A creature subtype is not specific enough. Likewise, the specific alignment must be named. Creatures of the specified kind or alignment feel elated and pleased to be in the area or desire to touch or possess the object. The compulsion to stay in the area or touch the object is overpowering. If the save is successful, the creature is released from the enchantment, but a subsequent save must be made 1d6 × 10 minutes later. If this save fails, the affected creature attempts to return to the area or object. Sympathy",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Tectonic Communion", school: "Divination", levels: "druid 5, hunter 4, psychic 5, ranger 4, shaman 5",
                          castingTime: "10 minutes", components: "V, S",
                          range: "personal", area: "", targets: "you",
                          duration: "instantaneous",
                          savingThrow: "None", sr: false,
                          summary: "Tectonic communion functions as commune with nature with an even greater range.",
                          desc: "Tectonic communion functions as commune with nature with an even greater range. In outdoor or natural underground settings, the spell operates on a radius of 100 miles per caster level, extending even underground without penalty. For every 2 caster levels above 13th, you may glean an additional fact from the list presented in",
                          source: "Core Rulebook", isPremium: false)
        )
        try await db.insertSpell(
        .make("Telekinesis", school: "Transmutation", levels: "arcanist 5, magus 5, occultist 5, psychic 4, sorcerer 5, spiritualist 5, wizard 5",
                          castingTime: "1 standard action", components: "V, S",
                          range: "long (400 ft. + 40 ft./level)", area: "", targets: "",
                          duration: "concentration (up to 1 round/level) or instantaneous; see text",
                          savingThrow: "Will negates (object) or none; see text;", sr: true,
                          summary: "You move objects or creatures by concentrating on them. Depending on the version selected, the spell can provide a gentle, sustained force, perform a variety of combat maneuvers, or exert a single…",
                          desc: "You move objects or creatures by concentrating on them. Depending on the version selected, the spell can provide a gentle, sustained force, perform a variety of combat maneuvers, or exert a single short, violent thrust. Sustained Force : A sustained force moves an object weighing no more than 25 pounds per caster level (maximum 375 pounds at 15th level) up to 20 feet per round. A creature can negate the effect on an object it possesses with a successful Will save or with spell resistance. This version of the spell can last 1 round per caster level, but it ends if you cease concentration. The weight can be moved vertically, horizontally, or in both directions. An object cannot be moved beyond your range. The spell ends if the object is forced beyond the range. If you cease concentration for any reason, the object falls or stops. An object can be telekinetically manipulated as if with one hand. For example, a lever or rope can be pulled, a key can be turned, an object rotated, and so on, if the force required is within the weight limitation. You might even be able to untie simple knots, though delicate activities such as these require DC 15 Intelligence checks.",
                          source: "Core Rulebook", isPremium: false)
        )
        try await seedSpellsD()
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