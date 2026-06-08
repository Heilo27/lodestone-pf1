import Foundation

struct CrossReferenceBuilder {
    private let db: DatabaseService

    init(db: DatabaseService) {
        self.db = db
    }

    func buildAll() async throws {
        try await buildSpellToClass()
        try await buildFeatToPrereqs()
        try await buildClassToSkills()
        try await buildMonsterToSpells()
        try await buildRaceToTraits()
        try await buildTraitToPrereqs()
        try await buildItemToSpells()
        try await buildItemToCreatures()
    }

    // MARK: - Spell ↔ Class

    private func buildSpellToClass() async throws {
        let spells = try await db.browse(type: .spell)
        let classes = try await db.browse(type: .class_)

        var classMap: [String: UUID] = [:]
        for case let cls as ClassEntry in classes {
            classMap[cls.title.lowercased()] = cls.id
        }

        for case let spell as SpellEntry in spells {
            for (className, _) in parseClassLevels(spell.levels) {
                guard let classId = classMap[className.lowercased()] else { continue }
                try await db.insertCrossReference(sourceId: spell.id, targetId: classId, targetType: .class_, linkText: className)
                try await db.insertCrossReference(sourceId: classId, targetId: spell.id, targetType: .spell, linkText: spell.title)
            }
        }
    }

    // MARK: - Feat → Prerequisites (feats + classes)

    private func buildFeatToPrereqs() async throws {
        let feats = try await db.browse(type: .feat)
        let classes = try await db.browse(type: .class_)

        var featMap: [String: UUID] = [:]
        for case let feat as FeatEntry in feats {
            let normalizedTitle = feat.title
                .replacingOccurrences(of: #"\s*\([^)]+\)$"#, with: "", options: .regularExpression)
                .lowercased()
            featMap[normalizedTitle] = feat.id
        }
        var classMap: [String: UUID] = [:]
        for case let cls as ClassEntry in classes {
            classMap[cls.title.lowercased()] = cls.id
        }

        for case let feat as FeatEntry in feats {
            guard !feat.prerequisites.isEmpty else { continue }
            for name in parsePrereqNames(feat.prerequisites) {
                let key = name.lowercased()
                if let id = featMap[key] {
                    try await db.insertCrossReference(sourceId: feat.id, targetId: id, targetType: .feat, linkText: name)
                    try await db.insertCrossReference(sourceId: id, targetId: feat.id, targetType: .feat, linkText: "Required by \(feat.title)")
                } else if let id = classMap[key] {
                    try await db.insertCrossReference(sourceId: feat.id, targetId: id, targetType: .class_, linkText: name)
                }
            }
        }
    }

    // MARK: - Class → Skills (bidirectional)

    private func buildClassToSkills() async throws {
        let classes = try await db.browse(type: .class_)
        let skills = try await db.browseSkills()

        var skillMap: [String: UUID] = [:]
        for skill in skills {
            skillMap[skill.title.lowercased()] = skill.id
        }

        for case let cls as ClassEntry in classes {
            for skillName in cls.classSkills {
                let key = skillName.lowercased()
                let skillId: UUID?
                if let id = skillMap[key] {
                    skillId = id
                } else {
                    let base = skillName.components(separatedBy: " (").first ?? skillName
                    skillId = skillMap[base.lowercased()]
                }
                if let id = skillId {
                    try await db.insertCrossReference(sourceId: cls.id, targetId: id, targetType: .rule, linkText: skillName)
                    try await db.insertCrossReference(sourceId: id, targetId: cls.id, targetType: .class_, linkText: cls.title)
                }
            }
        }
    }

    // MARK: - Monster → Spells (spell-like abilities)

    private func buildMonsterToSpells() async throws {
        let monsters = try await db.browse(type: .monster)
        let spells = try await db.browse(type: .spell)

        var spellMap: [String: UUID] = [:]
        for case let spell as SpellEntry in spells {
            spellMap[spell.title.lowercased()] = spell.id
        }

        for case let monster as MonsterEntry in monsters {
            guard !monster.specialAbilities.isEmpty else { continue }
            for name in extractSpellNamesFromAbilities(monster.specialAbilities) {
                if let id = spellMap[name.lowercased()] {
                    try await db.insertCrossReference(sourceId: monster.id, targetId: id, targetType: .spell, linkText: name)
                }
            }
        }
    }

    // MARK: - Race → Traits

    private func buildRaceToTraits() async throws {
        let races = try await db.browse(type: .race)
        let traits = try await db.browse(type: .trait)

        var traitMap: [String: UUID] = [:]
        for case let trait as TraitEntry in traits {
            traitMap[trait.title.lowercased()] = trait.id
        }

        for case let race as RaceEntry in races {
            for traitName in race.racialTraits {
                let key = traitName.lowercased()
                if let id = traitMap[key] {
                    try await db.insertCrossReference(sourceId: race.id, targetId: id, targetType: .trait, linkText: traitName)
                }
            }
        }
    }

    // MARK: - Trait → Prerequisites (feats + traits)

    private func buildTraitToPrereqs() async throws {
        let traits = try await db.browse(type: .trait)
        let feats = try await db.browse(type: .feat)

        var traitMap: [String: UUID] = [:]
        for case let trait as TraitEntry in traits {
            traitMap[trait.title.lowercased()] = trait.id
        }
        var featMap: [String: UUID] = [:]
        for case let feat as FeatEntry in feats {
            let normalizedTitle = feat.title
                .replacingOccurrences(of: #"\s*\([^)]+\)$"#, with: "", options: .regularExpression)
                .lowercased()
            featMap[normalizedTitle] = feat.id
        }

        for case let trait as TraitEntry in traits {
            guard !trait.prerequisites.isEmpty else { continue }
            for name in parsePrereqNames(trait.prerequisites) {
                let key = name.lowercased()
                if let id = featMap[key] {
                    try await db.insertCrossReference(sourceId: trait.id, targetId: id, targetType: .feat, linkText: name)
                } else if let id = traitMap[key] {
                    try await db.insertCrossReference(sourceId: trait.id, targetId: id, targetType: .trait, linkText: name)
                }
            }
        }
    }

    // MARK: - Item → Spells (word-boundary match in description)

    private func buildItemToSpells() async throws {
        let items = try await db.browse(type: .item)
        let spells = try await db.browse(type: .spell)

        var spellMap: [String: UUID] = [:]
        for case let spell as SpellEntry in spells {
            spellMap[spell.title.lowercased()] = spell.id
        }
        let sortedSpellTitles = spellMap.keys.sorted { $0.count > $1.count }

        for case let item as ItemEntry in items {
            guard !item.description.isEmpty else { continue }
            let descLower = item.description.lowercased()
            var matched = Set<String>()
            for spellTitle in sortedSpellTitles {
                guard !matched.contains(spellTitle),
                      let id = spellMap[spellTitle] else { continue }
                let pattern = #"\b"# + NSRegularExpression.escapedPattern(for: spellTitle) + #"\b"#
                guard (try? NSRegularExpression(pattern: pattern, options: .caseInsensitive)
                    .firstMatch(in: descLower, range: NSRange(descLower.startIndex..., in: descLower))) != nil
                else { continue }
                try await db.insertCrossReference(sourceId: item.id, targetId: id, targetType: .spell, linkText: spellTitle.capitalized)
                matched.insert(spellTitle)
            }
        }
    }

    // MARK: - Item ↔ Creatures (item mentions in monster stat blocks)

    private func buildItemToCreatures() async throws {
        let items = try await db.browse(type: .item)
        let monsters = try await db.browse(type: .monster)

        var itemMap: [String: (id: UUID, title: String)] = [:]
        for case let item as ItemEntry in items {
            itemMap[item.title.lowercased()] = (item.id, item.title)
        }
        let sortedTitles = itemMap.keys.sorted { $0.count > $1.count }

        for case let monster as MonsterEntry in monsters {
            let combined = [monster.specialAbilities, monster.description, monster.attacks]
                .filter { !$0.isEmpty }
                .joined(separator: " ")
                .lowercased()
            guard !combined.isEmpty else { continue }
            for title in sortedTitles {
                guard let entry = itemMap[title] else { continue }
                let pattern = #"\b"# + NSRegularExpression.escapedPattern(for: title) + #"\b"#
                guard (try? NSRegularExpression(pattern: pattern, options: .caseInsensitive)
                    .firstMatch(in: combined, range: NSRange(combined.startIndex..., in: combined))) != nil
                else { continue }
                try await db.insertCrossReference(sourceId: monster.id, targetId: entry.id, targetType: .item, linkText: entry.title)
                try await db.insertCrossReference(sourceId: entry.id, targetId: monster.id, targetType: .monster, linkText: monster.title)
            }
        }
    }

    // MARK: - Parsers

    private func parseClassLevels(_ levels: String) -> [(name: String, level: String)] {
        levels.split(separator: ",").compactMap { seg -> (String, String)? in
            let t = seg.trimmingCharacters(in: .whitespaces)
            guard let lastSpace = t.lastIndex(of: " ") else { return nil }
            let name = String(t[..<lastSpace])
            let rawLevel = String(t[t.index(after: lastSpace)...])
            let levelClean = rawLevel
                .replacingOccurrences(of: #"\s*\([^)]+\)$"#, with: "", options: .regularExpression)
                .trimmingCharacters(in: .whitespaces)
            guard !name.isEmpty, Int(levelClean) != nil else { return nil }
            return (name, levelClean)
        }
    }

    private func parsePrereqNames(_ prereqs: String) -> [String] {
        let skipPrefixes = ["str", "dex", "con", "int", "wis", "cha", "base attack",
                            "caster level", "spellcaster", "ability to", "access to",
                            "at least", "must be", "must have", "cannot be"]
        let skipContains = [" rank", "proficien", "spell slot", "level ", "+", "any "]

        return prereqs
            .components(separatedBy: CharacterSet(charactersIn: ",;"))
            .map { $0.trimmingCharacters(in: .whitespaces) }
            .map { $0.trimmingCharacters(in: .whitespaces.union(.punctuationCharacters)) }
            .filter { part in
                guard part.count >= 3 else { return false }
                let low = part.lowercased()
                if skipPrefixes.contains(where: { low.hasPrefix($0) }) { return false }
                if skipContains.contains(where: { low.contains($0) }) { return false }
                if part.first?.isNumber == true { return false }
                return true
            }
    }

    private func extractSpellNamesFromAbilities(_ text: String) -> [String] {
        var results: [String] = []
        let pattern = /\(([^)]{3,})\)/
        for match in text.matches(of: pattern) {
            let content = String(match.output.1)
            for item in content.components(separatedBy: CharacterSet(charactersIn: ",;")) {
                var cleaned = item.trimmingCharacters(in: .whitespaces)
                cleaned = cleaned.replacingOccurrences(of: #"\s*\d+/\w+"#, with: "", options: .regularExpression)
                cleaned = cleaned.replacingOccurrences(of: #"\s+at will"#, with: "", options: [.regularExpression, .caseInsensitive])
                cleaned = cleaned.trimmingCharacters(in: .whitespaces.union(.punctuationCharacters))
                cleaned = cleaned.replacingOccurrences(of: #"^the\s+"#, with: "", options: [.regularExpression, .caseInsensitive])
                if cleaned.count >= 2 && cleaned.count <= 50 && cleaned.first?.isNumber == false {
                    results.append(cleaned)
                }
            }
        }
        return results
    }
}
