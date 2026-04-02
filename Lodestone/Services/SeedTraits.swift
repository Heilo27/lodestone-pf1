import Foundation

extension SeedDataBuilder {
    func seedTraits() async throws {
        let traits: [TraitEntry] = [

            // MARK: - Combat Traits

            .make("Anatomist",
                  traitType: "Combat",
                  benefit: "You gain a +1 trait bonus on all rolls made to confirm critical hits.",
                  summary: "You gain a +1 trait bonus to confirm critical hits.",
                  desc: "You have studied the workings of anatomy, either as a student of the healing arts or as a naturalist, and know where to strike to cause the most pain and damage."),

            .make("Armor Expert",
                  traitType: "Combat",
                  benefit: "When you wear armor of any sort, reduce that suit's armor check penalty by 1, to a minimum check penalty of 0.",
                  summary: "Reduce armor check penalty by 1.",
                  desc: "You have worn armor as long as you can remember, either as a soldier, a member of the town guard, or simply a young adventurer, and have grown used to moving in it."),

            .make("Axe to Grind",
                  traitType: "Combat",
                  benefit: "You gain a +1 trait bonus on damage against foes who are threatened by only you.",
                  summary: "+1 damage vs. foes threatened only by you.",
                  desc: "There is a fire in your heart that can't be quenched. You feel the burn of rivalry whenever you face a foe alone."),

            .make("Bloodthirsty",
                  traitType: "Combat",
                  benefit: "Whenever you confirm a critical hit, you gain a +2 trait bonus on damage rolls until the end of your next turn.",
                  summary: "+2 damage bonus after confirming a critical hit.",
                  desc: "You have a lust for combat that can be difficult to control at times. Whenever you draw first blood, an almost uncontrollable rush comes over you."),

            .make("Bred for War",
                  traitType: "Combat",
                  prerequisites: "Half-orc",
                  benefit: "You gain a +1 trait bonus on Intimidate checks and a +1 trait bonus on attack rolls when you use the aid another action to assist an ally's attack.",
                  summary: "+1 Intimidate; +1 attack when using aid another.",
                  desc: "You were born and raised on the battlefield, and fighting comes as naturally to you as breathing. You have always been big for your race, and you learned long ago to use your size to your advantage."),

            .make("Bullied",
                  traitType: "Combat",
                  benefit: "You gain a +1 trait bonus on attack of opportunity attack rolls made with unarmed strikes.",
                  summary: "+1 on attack of opportunity rolls with unarmed strikes.",
                  desc: "You were bullied and harassed by others as a child, but you learned to stand up for yourself. You've developed a quick eye and the ability to snap back a fast punch."),

            .make("Bully",
                  traitType: "Combat",
                  benefit: "You gain a +1 trait bonus on Intimidate checks, and Intimidate is always a class skill for you.",
                  summary: "+1 Intimidate; Intimidate always a class skill.",
                  desc: "You grew up in a rough neighborhood or had a difficult childhood that taught you to fight for what you needed. You learned early that if you didn't take what you needed, you would go without."),

            .make("Courageous",
                  traitType: "Combat",
                  benefit: "Your base attack bonus is +1 higher for the purposes of determining when you gain Bonus Combat Feats, and you gain a +2 trait bonus on saving throws against fear.",
                  summary: "+2 on saves vs. fear.",
                  desc: "Your childhood was brutal, but you persevered primarily through courage and a never-say-die attitude. You never stopped fighting when the other children gave up, and you never let the fear of failure keep you from trying."),

            .make("Deft Dodger",
                  traitType: "Combat",
                  benefit: "You gain a +1 trait bonus on Reflex saves.",
                  summary: "+1 trait bonus on Reflex saves.",
                  desc: "Growing up in a rough neighborhood or in the wild, you have learned to react quickly to avoid danger."),

            .make("Dirty Fighter",
                  traitType: "Combat",
                  benefit: "When you hit a foe you are flanking, you deal 1 additional point of damage (this damage is added to your base damage, and is multiplied on a critical hit). This additional damage is a trait bonus.",
                  summary: "+1 damage when flanking.",
                  desc: "You wouldn't have lived to make it out of childhood without learning a few tricks. You've learned to fight dirty, knowing that any time you have a friend nearby to distract a foe, you can often make a few more strikes before your enemy notices."),

            .make("Duelist",
                  traitType: "Combat",
                  benefit: "You gain a +1 trait bonus on Acrobatics checks while moving through a threatened area and on checks to avoid attacks of opportunity from movement.",
                  summary: "+1 Acrobatics when avoiding attacks of opportunity.",
                  desc: "You trained in the art of the duel. You focus intently on an opponent's movements and are able to avoid or parry their attacks more gracefully."),

            .make("Fencer",
                  traitType: "Combat",
                  benefit: "You gain a +1 trait bonus on attack of opportunity attack rolls made with daggers, swords, and similar light or one-handed piercing weapons.",
                  summary: "+1 on attacks of opportunity with light or one-handed piercing weapons.",
                  desc: "You trained with blades as a youth, either taking lessons in the genteel art of fencing from a master or learning the hard way by receiving cuts and stabs. You've mastered the art of using a blade's point to target exposed flesh while in close quarters."),

            .make("Finish the Fight",
                  traitType: "Combat",
                  benefit: "You gain a +1 trait bonus on attack rolls against any opponent who attacked you in the previous round.",
                  summary: "+1 attack against foes who attacked you last round.",
                  desc: "Your strength of purpose is legendary, and when someone comes at you, you come right back at them—only harder. The harder you are hit, the harder you fight in return."),

            .make("Hard to Kill",
                  traitType: "Combat",
                  benefit: "Whenever you're below 0 hit points, you automatically stabilize without needing to attempt a Constitution check. If you have an ability that allows you to act while below 0 hit points, you gain a +1 trait bonus on Constitution checks made to stabilize.",
                  summary: "You automatically stabilize when below 0 hp.",
                  desc: "Whenever you're below 0 hit points, you automatically stabilize without needing to attempt a Fortitude check. You have the will to cling to life through sheer determination."),

            .make("Killer",
                  traitType: "Combat",
                  benefit: "You add your weapon's critical hit modifier to damage when you confirm a critical hit, in addition to the normal damage modifier.",
                  summary: "Add critical hit modifier to damage on confirmed crits.",
                  desc: "You made your first kill at a very young age and found the task of war or murder to your liking. You either take a grim pride in your skill or treat killing as an unpleasant but necessary part of your job."),

            .make("Reactionary",
                  traitType: "Combat",
                  benefit: "You gain a +2 trait bonus on initiative checks.",
                  summary: "+2 trait bonus on initiative checks.",
                  desc: "You were bullied often as a child, but never quite developed an offensive response. Instead, you became adept at anticipating sudden attacks and reacting to danger quickly."),

            .make("Reckless",
                  traitType: "Combat",
                  benefit: "You gain a +1 trait bonus on Acrobatics checks, and Acrobatics is always a class skill for you.",
                  summary: "+1 Acrobatics; always a class skill.",
                  desc: "You have a tendency to leap before you look. You jump into situations without calculating the risks, and as a result have developed a knack for getting yourself out of the messes you get yourself into."),

            .make("Savage",
                  traitType: "Combat",
                  benefit: "When you deal damage with a light weapon, you may reroll 1 or 2 on damage dice once; you must keep the result of the second roll.",
                  summary: "Reroll 1s and 2s on damage dice with light weapons.",
                  desc: "You were born into a clan that held strength above all else, and those who were mighty feasted first and best. As you grew, you learned to claw and bite and fight with the frenzy of a cornered animal."),

            .make("Surprise Weapon",
                  traitType: "Combat",
                  benefit: "You gain a +2 trait bonus on attack rolls with improvised weapons.",
                  summary: "+2 attack rolls with improvised weapons.",
                  desc: "You are skilled at fighting with objects not designed to be weapons. You once used a chair leg to fight off two brigands, a rolling pin to defeat a pickpocket, and a handful of pocket change to temporarily blind a ruffian."),

            .make("Threatening Defender",
                  traitType: "Combat",
                  benefit: "When fighting defensively or using the total defense action, reduce the penalty to attack rolls by 1.",
                  summary: "Reduce the attack penalty when fighting defensively by 1.",
                  desc: "You know how to make use of your defensive position to keep foes at bay. Your stance makes it clear that attacking you is a dangerous proposition."),

            .make("Unbreakable Hate",
                  traitType: "Combat",
                  benefit: "You gain a +2 trait bonus on Will saves against enchantment spells and effects that would cause you to harm your allies.",
                  summary: "+2 Will saves vs. enchantments that cause you to harm allies.",
                  desc: "Your hatred of your enemies is so great that it has broken the hold that magic has on your mind. Your enemies can see the ferocity in your eyes, and they know that you are harder to control than most."),

            .make("Veteran of Battle",
                  traitType: "Combat",
                  prerequisites: "Must worship a god of battle or a deity of battle",
                  benefit: "You gain a +1 trait bonus on initiative checks, and if you are able to act during a surprise round, you may draw a weapon (but not a potion or magic item) as a free action during that round.",
                  summary: "+1 initiative; draw weapon free in surprise rounds.",
                  desc: "You have fought in several battles, and each time you learn a little bit more about how to survive. You know how to react quickly and how to keep a weapon close at hand when a fight breaks out."),

            // MARK: - Magic Traits

            .make("Classically Schooled",
                  traitType: "Magic",
                  benefit: "You gain a +1 trait bonus on Spellcraft checks, and Spellcraft is always a class skill for you.",
                  summary: "+1 Spellcraft; always a class skill.",
                  desc: "Your magical education was a formal and rigorous affair. You spent years memorizing the patterns, structures, and functions of spells in an academically rigorous environment."),

            .make("Dangerously Curious",
                  traitType: "Magic",
                  benefit: "You gain a +1 trait bonus on Use Magic Device checks, and Use Magic Device is always a class skill for you.",
                  summary: "+1 Use Magic Device; always a class skill.",
                  desc: "You have always been intrigued by magic, especially the way that even the simplest items can store mystical energies. You have been caught on multiple occasions fiddling with the wands and staves of your elders, and have more than once activated a magic item you shouldn't have been able to use."),

            .make("Destructive Blows",
                  traitType: "Magic",
                  benefit: "When you cast a spell, if you also strike an opponent during the same action (such as with a touch spell), you gain a +2 trait bonus on damage rolls for that spell.",
                  summary: "+2 damage on touch spells that also require a strike.",
                  desc: "Your touch can channel great magical destructive power. You've always enjoyed working with spells that strike physically as well as magically."),

            .make("Focused Mind",
                  traitType: "Magic",
                  benefit: "You gain a +2 trait bonus on concentration checks.",
                  summary: "+2 trait bonus on concentration checks.",
                  desc: "Your childhood was either dominated by lessons of all sorts (whether musical, academic, or other) or by a prolonged exposure to a strong, steady stream of magic. In either case, you've developed an amazing ability to block out distractions and focus on the immediate task at hand."),

            .make("Gifted Adept",
                  traitType: "Magic",
                  benefit: "Pick one spell when you choose this trait. Whenever you cast that spell, its effects manifest at +1 caster level.",
                  summary: "One chosen spell is cast at +1 caster level.",
                  desc: "Your interest in magic was piqued by a particularly dramatic use of magic, perhaps even one that affected you closely. That singular moment, you've found, has helped inspire your magical studies."),

            .make("Hedge Magician",
                  traitType: "Magic",
                  benefit: "Whenever you craft a magic item, you reduce the required gp cost to make the item by 5%.",
                  summary: "Reduce magic item crafting cost by 5%.",
                  desc: "You apprenticed for a time with a local wise woman or hedge wizard. You have an innate knack for crafting magic items and reducing the waste that normally occurs in the creation process."),

            .make("Magical Knack",
                  traitType: "Magic",
                  benefit: "Pick a class when you gain this trait—your caster level in that class gains a +2 trait bonus as long as this bonus doesn't raise your caster level above your current Hit Dice.",
                  summary: "+2 caster level in one chosen class (max = Hit Dice).",
                  desc: "You were raised, either wholly or in part, by a magical creature, either after escaping such a creature or becoming friends with it. This constant exposure to magic has made your own magical power more potent but sometimes not responsive."),

            .make("Magical Lineage",
                  traitType: "Magic",
                  benefit: "Pick one spell when you choose this trait. When you apply metamagic feats to this spell that add at least 1 level, treat its actual level as 1 lower for determining the spell's final adjusted level.",
                  summary: "One chosen spell costs 1 less spell slot when enhanced with metamagic.",
                  desc: "One of your parents was a gifted spellcaster who not only used magic frequently but also developed it in new ways. You have a minor form of this same talent."),

            .make("Magical Talent",
                  traitType: "Magic",
                  benefit: "Choose a 0-level spell. You may cast that spell once per day as a spell-like ability. This spell-like ability is cast at your highest caster level gained; if you have no caster level, it functions at CL 1st.",
                  summary: "Cast one chosen cantrip once per day as a spell-like ability.",
                  desc: "Either from inborn talent, the whimsy of the gods, or obsessive practice, you have mastered the use of a cantrip. Pick one 0-level spell when you gain this trait."),

            .make("Metamagic Master",
                  traitType: "Magic",
                  benefit: "When you use the chosen metamagic feat, the total spell level increase is reduced by 1 (to a minimum of +1).",
                  summary: "One chosen metamagic feat costs 1 fewer spell level.",
                  desc: "Your ability to alter your spells with metamagic is particularly masterful. Pick one metamagic feat. When you apply that metamagic feat to a spell, the metamagic feat increases the spell's level one less than normal."),

            .make("Pragmatic Activator",
                  traitType: "Magic",
                  benefit: "While some figure out how to use magical devices with stubborn resolve, you've always had a knack for it. You may use your Intelligence modifier when making Use Magic Device checks instead of your Charisma modifier.",
                  summary: "Use Intelligence instead of Charisma for Use Magic Device.",
                  desc: "You have an exceptional ability to logically understand the nature of magical items and intuit how they are best activated."),

            .make("Spark of Creation",
                  traitType: "Magic",
                  benefit: "You gain a +1 trait bonus on Craft checks, and the cost of creating magic items is reduced by 5%.",
                  summary: "+1 Craft checks; 5% off magic item creation costs.",
                  desc: "There is a spark of divine inspiration in your work. Perhaps the gods take a special interest in your creations, or perhaps you simply have a natural talent for it."),

            .make("Tenacious Shifting",
                  traitType: "Magic",
                  benefit: "Whenever a transmutation spell you cast is being dispelled, your caster level is treated as 2 higher than your actual caster level for the purpose of determining whether the dispel attempt succeeds.",
                  summary: "Your transmutation spells are harder to dispel (+2 CL vs. dispel).",
                  desc: "Your shapeshifting magic is deeply rooted and difficult to counter. Your forms are held with a persistence born of intense practice."),

            .make("Transmuter of Inner Peace",
                  traitType: "Magic",
                  benefit: "You gain a +1 trait bonus on caster level checks made to overcome a target's spell resistance when casting transmutation spells.",
                  summary: "+1 caster level checks to overcome spell resistance with transmutation.",
                  desc: "You have devoted yourself to the study of transmutation magic, spending long hours studying the works of a deity of inner peace."),

            .make("Unintentional Linguist",
                  traitType: "Magic",
                  benefit: "You gain a +1 trait bonus on Linguistics checks, and you can speak one additional language. You may use Linguistics to learn new languages in half the normal time.",
                  summary: "+1 Linguistics; learn one extra language.",
                  desc: "You can speak with outsiders. At some point in your past, your mind was linked with an outsider's, and in that brief time you absorbed linguistic knowledge that has served you ever since."),

            .make("Volatile Conduit",
                  traitType: "Magic",
                  benefit: "Once per day as a free action, when you cast a spell with the electricity or fire descriptor, you can increase the spell's damage by rolling 1d4 and adding it to the damage total.",
                  summary: "Once/day, add 1d4 damage to a fire or electricity spell.",
                  desc: "Your strong emotional state gives you an ability to channel volatile magical energies more powerfully than most."),

            // MARK: - Social Traits

            .make("A Sure Thing",
                  traitType: "Social",
                  benefit: "You gain a +2 trait bonus on Bluff checks made to lie or deceive a target when you know something specific about the target that they don't know you know.",
                  summary: "+2 Bluff when you have specific knowledge about the target.",
                  desc: "You know how to read people and figure out what they're keeping secret. With that knowledge in hand, you know exactly how to approach them."),

            .make("Adoption",
                  traitType: "Social",
                  benefit: "You may select a race trait from your adoptive parents' race in addition to one of the standard social traits.",
                  summary: "Select one racial trait from your adoptive parent's race.",
                  desc: "You were adopted and raised by someone of a different race than your own. As a result of your upbringing, you have picked up a bit of the culture and traits of the people who raised you."),

            .make("Ambitious",
                  traitType: "Social",
                  benefit: "Whenever you successfully use Diplomacy to improve a creature's attitude toward you, that creature's attitude improves by one additional step.",
                  summary: "Improve attitude by one additional step with Diplomacy.",
                  desc: "You have a clear plan to rise through the social ranks. Whether through noble birth, military rank, or years of gathering favor, you know exactly where you want to go."),

            .make("Charming",
                  traitType: "Social",
                  benefit: "Whenever you use Diplomacy or Bluff in social interactions, and you fail the check by 5 or more, you may reroll the check. You must take the second result, even if it is worse.",
                  summary: "Reroll Diplomacy/Bluff when you fail by 5 or more.",
                  desc: "Blessed with good looks, you've come to depend on the fact that others find you attractive. You've honed your ability to leverage that attraction to your advantage."),

            .make("Child of the Streets",
                  traitType: "Social",
                  benefit: "You gain a +1 trait bonus on Sleight of Hand checks, and Sleight of Hand is always a class skill for you.",
                  summary: "+1 Sleight of Hand; always a class skill.",
                  desc: "You grew up on the streets of a large city, and as a result you have learned to use your hands nimbly and pick pockets when no one is looking."),

            .make("Child of Two Worlds",
                  traitType: "Social",
                  prerequisites: "Half-elf",
                  benefit: "You gain a +1 trait bonus on Diplomacy checks when dealing with humans or elves, and you can make Diplomacy checks to change attitude or gather information once per day as a free action.",
                  summary: "+1 Diplomacy with humans and elves; Diplomacy once/day as free action.",
                  desc: "Having two cultures to draw upon has given you a unique perspective and set of social skills."),

            .make("Classically Educated",
                  traitType: "Social",
                  benefit: "You gain a +1 trait bonus on Knowledge (history) and Knowledge (local) checks, and one of these is always a class skill for you.",
                  summary: "+1 Knowledge (history) and Knowledge (local); one always a class skill.",
                  desc: "Your formal education exposed you to the grand traditions of civilized society, including detailed histories and accounts of local regions."),

            .make("Convincing Liar",
                  traitType: "Social",
                  benefit: "You gain a +1 trait bonus on Bluff checks, and Bluff is always a class skill for you.",
                  summary: "+1 Bluff; always a class skill.",
                  desc: "You have been lying your way out of trouble since you were a child. Whether it was keeping secrets from parents or fooling the local watch, you've honed your skill until deception comes naturally."),

            .make("Fast Talker",
                  traitType: "Social",
                  benefit: "You gain a +1 trait bonus on Bluff checks, and Bluff is always a class skill for you.",
                  summary: "+1 Bluff; always a class skill.",
                  desc: "You had a knack for getting yourself into trouble as a child, and as a result developed a silver tongue to get yourself back out. Your ability to talk your way out of situations has saved your skin more than once."),

            .make("Fashionable",
                  traitType: "Social",
                  benefit: "Whenever you wear clothing and jewelry worth at least 150 gp, you gain a +1 trait bonus on Bluff, Diplomacy, and Sense Motive checks. In addition, Diplomacy is always a class skill for you.",
                  summary: "+1 Bluff/Diplomacy/Sense Motive when wearing 150+ gp clothes.",
                  desc: "You are keenly aware that how you look and how others perceive you can make all the difference in society. You dress to impress."),

            .make("Friendly",
                  traitType: "Social",
                  benefit: "You gain a +1 trait bonus on Diplomacy checks to gather information, and Diplomacy is always a class skill for you.",
                  summary: "+1 Diplomacy to gather information; always a class skill.",
                  desc: "You are a naturally gregarious person. People find themselves comfortable around you very quickly, and you find it easy to make acquaintances wherever you go."),

            .make("Influence",
                  traitType: "Social",
                  benefit: "You gain a +1 trait bonus on Diplomacy checks and Sense Motive checks.",
                  summary: "+1 Diplomacy and Sense Motive checks.",
                  desc: "You have a commanding presence that makes others take notice of you. Your personality naturally draws the eye and ear of those around you."),

            .make("Merchant",
                  traitType: "Social",
                  benefit: "You gain a +1 trait bonus on Appraise checks and a +1 trait bonus on Sense Motive checks to detect deception.",
                  summary: "+1 Appraise and Sense Motive (detect deception).",
                  desc: "You spent years working in a shop, trading post, or other commercial venture. Your eye for value and your sense of when someone is trying to deceive you are both well developed."),

            .make("Natural Born Leader",
                  traitType: "Social",
                  benefit: "All cohorts, followers, and summoned creatures under your leadership gain a +1 morale bonus on Will saves to avoid mind-affecting effects. If you ever take the Leadership feat, you gain a +1 trait bonus to your Leadership score.",
                  summary: "Followers gain +1 on Will saves vs. mind effects; +1 Leadership score.",
                  desc: "Others have always looked to you to take charge, and you've never let them down. You have a knack for inspiring loyalty and leading others through difficult situations."),

            .make("Noble Born",
                  traitType: "Social",
                  benefit: "You gain a +1 trait bonus on Knowledge (nobility) checks, and Knowledge (nobility) is always a class skill for you. In addition, your family's connections grant you access to a noble's outfit and jewelry once per adventure at no cost.",
                  summary: "+1 Knowledge (nobility); access to noble outfit once/adventure.",
                  desc: "You are a member of a noble family, either as a scion by blood or a ward taken in by a noble family. You were raised in finery and educated in the ways of the court."),

            .make("Poverty-Stricken",
                  traitType: "Social",
                  benefit: "You gain a +1 trait bonus on Survival checks, and Survival is always a class skill for you.",
                  summary: "+1 Survival; always a class skill.",
                  desc: "Your childhood was one of sorrow and struggle—you were never sure if you would have enough to eat. As a result, you've developed an almost preternatural ability to stretch resources and keep yourself alive."),

            .make("Power of Suggestion",
                  traitType: "Social",
                  benefit: "You gain a +1 trait bonus on all Intimidate checks, and when you demoralize a foe with Intimidate, the effect lasts 1 additional round.",
                  summary: "+1 Intimidate; demoralize lasts 1 extra round.",
                  desc: "Your presence is difficult to ignore. You have found a way to combine your physical presence with your words to leave an impression that is hard to shake."),

            .make("Savant",
                  traitType: "Social",
                  benefit: "Pick one Perform skill. You gain a +2 trait bonus on checks with that skill, and it is always a class skill for you.",
                  summary: "+2 on one chosen Perform skill; always a class skill.",
                  desc: "You have spent so much time practicing your art that you have become exceptional at it. You are widely regarded as a talented performer in your chosen field."),

            .make("Scholar of Ruins",
                  traitType: "Social",
                  benefit: "From years of experience in studying lost cultures and architectural dangers, you gain a +1 trait bonus on Knowledge (dungeoneering) and Knowledge (history) checks. One of these skills (your choice) is always a class skill for you.",
                  summary: "+1 Knowledge (dungeoneering) and Knowledge (history).",
                  desc: "You developed a fascination with dilapidated buildings, ruins, and the dangers of underground areas long before you became an adventurer."),

            .make("Skilled Liar",
                  traitType: "Social",
                  benefit: "Whenever you use Bluff to attempt to deceive someone, you gain a +2 trait bonus on the Bluff check.",
                  summary: "+2 Bluff to deceive.",
                  desc: "You have a gift for crafting believable lies. When you commit to a falsehood, you believe it yourself—at least in the moment."),

            .make("Trustworthy",
                  traitType: "Social",
                  benefit: "You gain a +1 trait bonus on Bluff checks made to fool others, and a +1 trait bonus on Diplomacy checks made to gather information.",
                  summary: "+1 Bluff to fool others; +1 Diplomacy to gather information.",
                  desc: "People find it easy to trust you. Whether because of your open face, your kind demeanor, or your reputation for honest dealing, people lower their guard around you."),

            .make("Well-Informed",
                  traitType: "Social",
                  benefit: "You gain a +1 trait bonus on Diplomacy checks to gather information and Knowledge (local) checks. One of these skills (your choice) is always a class skill for you.",
                  summary: "+1 Diplomacy (gather info) and Knowledge (local).",
                  desc: "You make it a point to know everyone and to be connected to everything around you. You frequent the best taverns, attend events in the finest houses, and maintain contacts wherever you can."),

            // MARK: - Faith Traits

            .make("Birthmark",
                  traitType: "Faith",
                  benefit: "You can use your birthmark as a holy symbol, and you gain a +2 trait bonus on saving throws against charm and compulsion effects.",
                  summary: "Birthmark serves as holy symbol; +2 saves vs. charm/compulsion.",
                  desc: "You were born with a strange birthmark that looks very similar to the holy symbol of the god you chose to worship later in life. Some priests consider this a sign of divine favor."),

            .make("Caretaker",
                  traitType: "Faith",
                  benefit: "You gain a +1 trait bonus on Heal checks, and Heal is always a class skill for you.",
                  summary: "+1 Heal; always a class skill.",
                  desc: "As the child of an herbalist or an assistant in a temple infirmary, you were often asked to help tend to the sick and wounded. You've learned to respond with calm and reassurance to those who suffer."),

            .make("Child of the Temple",
                  traitType: "Faith",
                  benefit: "You gain a +1 trait bonus on Knowledge (nobility) and Knowledge (religion) checks, and one of these (your choice) is always a class skill for you.",
                  summary: "+1 Knowledge (nobility) and Knowledge (religion).",
                  desc: "You have long served at a temple in a city, where you picked up on social graces and a smattering of religious lore."),

            .make("Devotee of the Green",
                  traitType: "Faith",
                  benefit: "Your faith in the natural world or in a nature deity has granted you a greater understanding of nature. You gain a +1 trait bonus on Knowledge (geography) and Knowledge (nature) checks, and one of these (your choice) is always a class skill for you.",
                  summary: "+1 Knowledge (geography) and Knowledge (nature).",
                  desc: "Your faith in nature is deep and abiding. You have spent time in the wilderness tending to natural sites sacred to your deity."),

            .make("Divine Courtesan",
                  traitType: "Faith",
                  benefit: "You gain a +1 trait bonus on Sense Motive checks and a +1 trait bonus on Diplomacy checks to gather information.",
                  summary: "+1 Sense Motive; +1 Diplomacy (gather info).",
                  desc: "You worked in a temple where you served a god of love or lust, or in an establishment affiliated with such a church. You have learned to read people and divine their desires."),

            .make("Divine Fighter",
                  traitType: "Faith",
                  benefit: "Your deity's favored weapon is treated as having the divine property when you wield it. You gain a +1 weapon training bonus when using your deity's favored weapon.",
                  summary: "Treat deity's favored weapon as divine; +1 weapon training.",
                  desc: "Your faith makes you a better warrior in service to your deity. You have trained extensively with your deity's favored weapon and have been blessed."),

            .make("Ease of Faith",
                  traitType: "Faith",
                  benefit: "Your mentor, the person who encouraged and helped you to mature in your faith, spent time teaching you the basics of persuasion. You gain a +1 trait bonus on Diplomacy checks, and Diplomacy is always a class skill for you.",
                  summary: "+1 Diplomacy; always a class skill.",
                  desc: "You've always had an ease of communication that lets you share your faith with others effectively. Your mentor helped you learn that convincing others of the rightness of your faith is as much about listening as it is about speaking."),

            .make("Fate's Favored",
                  traitType: "Faith",
                  benefit: "Whenever you are under the effect of a luck bonus of any kind, that bonus increases by 1.",
                  summary: "All luck bonuses you have increase by 1.",
                  desc: "The fates have always smiled on you. You've always had a particularly lucky streak, and it seems the gods have marked you as one of their own."),

            .make("Fervent Healer",
                  traitType: "Faith",
                  benefit: "You gain a +2 trait bonus on caster level checks made to overcome spell resistance when casting healing spells.",
                  summary: "+2 caster level checks to overcome SR with healing spells.",
                  desc: "Your connection to positive energy is particularly strong. When you focus your healing energies, they burn through magical resistance more readily."),

            .make("Fortunate",
                  traitType: "Faith",
                  benefit: "You gain a +1 luck bonus on one type of saving throw (your choice). This choice cannot be changed.",
                  summary: "+1 luck bonus on one type of saving throw.",
                  desc: "You were born under a lucky star, and fortune has smiled on you in ways large and small throughout your life."),

            .make("Gift of Tongues",
                  traitType: "Faith",
                  benefit: "You gain a +1 bonus on Bluff and Diplomacy checks and may learn an additional language every time you put a rank into Linguistics.",
                  summary: "+1 Bluff/Diplomacy; learn extra language per Linguistics rank.",
                  desc: "You have always had a knack for language. The gods of communication and trade watch over you, granting you a facility with the spoken and written word."),

            .make("Indomitable Faith",
                  traitType: "Faith",
                  benefit: "You gain a +1 trait bonus on Will saves.",
                  summary: "+1 trait bonus on Will saves.",
                  desc: "You were born in a region where your faith was not popular, but you never abandoned it. The strength and certainty of your beliefs have hardened your will against attempts to subvert it."),

            .make("Merciful",
                  traitType: "Faith",
                  benefit: "When you cast a spell, you may choose to modify it so that it heals rather than harms. If you do so, it deals no damage and instead restores 1 hit point per die that would have been rolled.",
                  summary: "Convert spell damage to healing at 1 hp per die.",
                  desc: "Your deity has ingrained in you a respect for life, and so you've learned how to pull your punches and transform deadly energies into healing ones."),

            .make("Prophet",
                  traitType: "Faith",
                  benefit: "You gain a +2 trait bonus on saving throws against curse and hex effects.",
                  summary: "+2 saves vs. curse and hex effects.",
                  desc: "You have always felt yourself to be a conduit for higher powers. Your faith gives you a degree of protection against the darker workings of fate."),

            .make("Sacred Conduit",
                  traitType: "Faith",
                  benefit: "Whenever you channel energy, you can choose to increase the DC of your channel energy ability by 1. If you do, the number of dice rolled for the effect is reduced by 1 (minimum 1 die).",
                  summary: "Trade one die of channel energy for +1 DC.",
                  desc: "Your birth was particularly auspicious, and as a result, your body is a perfect vessel for the divine energies that flow through you."),

            .make("Sacred Touch",
                  traitType: "Faith",
                  benefit: "As a standard action, you may automatically stabilize a dying creature merely by touching it.",
                  summary: "Stabilize a dying creature with a touch as a standard action.",
                  desc: "You were raised in a faith that emphasized the importance of life and the gift of healing. Your hands have a gentle restorative quality that soothes the pain of the wounded."),

            .make("Scholar of the Great Beyond",
                  traitType: "Faith",
                  benefit: "You gain a +1 trait bonus on Knowledge (history) and Knowledge (planes) checks, and one of these (your choice) is always a class skill for you.",
                  summary: "+1 Knowledge (history) and Knowledge (planes).",
                  desc: "Your greatest interests as a child did not lie with the mundane world, but with the fiery heights of the Outer Planes and the dark corners of the universe."),

            .make("Unburdened",
                  traitType: "Faith",
                  benefit: "Pick a type of armor. Reduce the armor check penalty for that type of armor by 1 (to a minimum of 0).",
                  summary: "Reduce armor check penalty for one armor type by 1.",
                  desc: "Your faith teaches that the body is merely a vessel and that true warriors are never burdened by their equipment. Through long practice, you've learned to move in armor as if it were a second skin."),

            .make("Unwavering Resolve",
                  traitType: "Faith",
                  benefit: "You gain a +2 trait bonus on saving throws to avoid becoming shaken or frightened.",
                  summary: "+2 saves vs. shaken and frightened effects.",
                  desc: "Your faith in your deity is absolute. You have been tested by hardship, disaster, and enemies of your faith, and your resolve has never wavered. Nothing your enemies can throw at you will break your devotion."),

            .make("Wisdom in the Flesh",
                  traitType: "Faith",
                  benefit: "Your training and faith have given you a deep understanding of your body's physical and metaphysical workings. Select any Strength, Dexterity, or Constitution-based skill. You may make checks with that skill using your Wisdom modifier instead of the appropriate ability score.",
                  summary: "Use Wisdom instead of Str/Dex/Con for one chosen physical skill.",
                  desc: "Your meditation on the nature of strength has taught you to use your mind to augment the power of your body."),

            // MARK: - Regional Traits

            .make("Forlorn",
                  traitType: "Regional",
                  prerequisites: "Elf",
                  benefit: "Having lived outside of normal elven society for so long, you have developed a resiliency rarely seen in elves. You gain a +1 trait bonus on Fortitude saving throws.",
                  summary: "+1 Fortitude saves (elves living among shorter-lived races).",
                  desc: "Having lived outside of normal elven society for so long, you have developed a resilience rarely seen in elves. You have adjusted to the shorter-lived ways of other races and learned to endure loss more quickly."),

            .make("Highlander",
                  traitType: "Regional",
                  benefit: "You gain a +1 trait bonus on Stealth checks, and Stealth is always a class skill for you. This bonus increases to +2 in hilly or rocky areas.",
                  summary: "+1 Stealth (always a class skill); +2 in hills/rocky terrain.",
                  desc: "You were raised in the highlands or in mountainous terrain, and have a talent for moving quietly through rocky environments."),

            .make("Outlander (Lore Seeker)",
                  traitType: "Regional",
                  benefit: "You gain a +1 trait bonus on Knowledge (arcana) checks, and Knowledge (arcana) is always a class skill for you. Additionally, pick three spells; you cast these spells at +1 caster level.",
                  summary: "+1 Knowledge (arcana); three chosen spells at +1 caster level.",
                  desc: "You have come from afar to this land to learn its magical secrets. You are passionate about the arcane and driven to uncover the mysteries here."),

            .make("River Rat",
                  traitType: "Regional",
                  benefit: "You gain a +1 trait bonus on damage rolls with daggers and a +1 trait bonus on Swim checks. Swim is always a class skill for you.",
                  summary: "+1 damage with daggers; +1 Swim (always a class skill).",
                  desc: "You grew up on the banks of a major river or other significant body of water. You likely learned to swim before you could walk properly, and you've spent a great deal of time on or in the water."),

            .make("Tusked",
                  traitType: "Regional",
                  prerequisites: "Half-orc",
                  benefit: "You have particularly large tusks. You gain a bite attack. This is a primary natural attack that deals 1d4 points of piercing damage.",
                  summary: "Gain a bite attack (1d4 piercing, primary natural attack).",
                  desc: "Your half-orc heritage is particularly prominent in your enormous tusks. You have learned to use these as weapons in a pinch."),

            .make("Wilderness Survivalist",
                  traitType: "Regional",
                  benefit: "You gain a +1 trait bonus on Heal and Survival checks, and one of these (your choice) is always a class skill for you.",
                  summary: "+1 Heal and Survival; one always a class skill.",
                  desc: "You grew up in a wild frontier where the nearest village was days away. You were forced to rely on yourself and whatever resources the wild provided, building up your skills to a high level.")
        ]

        for trait in traits {
            try await db.insertTrait(trait)
        }
    }
}

// MARK: - TraitEntry factory
private extension TraitEntry {
    static func make(
        _ title: String,
        traitType: String,
        prerequisites: String = "",
        benefit: String,
        summary: String,
        desc: String = "",
        source: String = "Advanced Player's Guide",
        isPremium: Bool = false
    ) -> TraitEntry {
        TraitEntry(
            id: UUID(),
            title: title,
            summary: summary,
            isPremium: isPremium,
            traitType: traitType,
            prerequisites: prerequisites,
            benefit: benefit,
            description: desc.isEmpty ? benefit : desc,
            source: source
        )
    }
}
