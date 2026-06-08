import Foundation

// MARK: - Cross-Reference Builder
// Runs after all seed entries are inserted. Populates the cross_references table.
// Uses browse() lookups to build maps — no seededUUID guessing needed.

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
                try await db.insertCrossReference(sourceId: spell.id, targetId: classId, linkText: className)
                try await db.insertCrossReference(sourceId: classId, targetId: spell.id, linkText: spell.title)
            }
        }
    }

    // MARK: - Feat → Prerequisites (feats + classes)
    private func buildFeatToPrereqs() async throws {
        let feats = try await db.browse(type: .feat)
        let classes = try await db.browse(type: .class_)

        var featMap: [String: UUID] = [:]
        for case let feat as FeatEntry in feats {
            featMap[feat.title.lowercased()] = feat.id
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
                    try await db.insertCrossReference(sourceId: feat.id, targetId: id, linkText: name)
                } else if let id = classMap[key] {
                    try await db.insertCrossReference(sourceId: feat.id, targetId: id, linkText: name)
                }
            }
        }
    }

    // MARK: - Class → Skills
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
                if let id = skillMap[key] {
                    try await db.insertCrossReference(sourceId: cls.id, targetId: id, linkText: skillName)
                } else {
                    let base = skillName.components(separatedBy: " (").first ?? skillName
                    if let id = skillMap[base.lowercased()] {
                        try await db.insertCrossReference(sourceId: cls.id, targetId: id, linkText: skillName)
                    }
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
                    try await db.insertCrossReference(sourceId: monster.id, targetId: id, linkText: name)
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
                    try await db.insertCrossReference(sourceId: race.id, targetId: id, linkText: traitName)
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
            featMap[feat.title.lowercased()] = feat.id
        }

        for case let trait as TraitEntry in traits {
            guard !trait.prerequisites.isEmpty else { continue }
            for name in parsePrereqNames(trait.prerequisites) {
                let key = name.lowercased()
                if let id = featMap[key] {
                    try await db.insertCrossReference(sourceId: trait.id, targetId: id, linkText: name)
                } else if let id = traitMap[key] {
                    try await db.insertCrossReference(sourceId: trait.id, targetId: id, linkText: name)
                }
            }
        }
    }

    // MARK: - Item → Spells (via description mention)
    private func buildItemToSpells() async throws {
        let items = try await db.browse(type: .item)
        let spells = try await db.browse(type: .spell)

        var spellMap: [String: UUID] = [:]
        for case let spell as SpellEntry in spells {
            spellMap[spell.title.lowercased()] = spell.id
        }

        // Sort by title length descending for greedy matching
        let sortedSpellTitles = spellMap.keys.sorted { $0.count > $1.count }

        for case let item as ItemEntry in items {
            guard !item.description.isEmpty else { continue }
            let descLower = item.description.lowercased()
            var matched = Set<String>()
            for spellTitle in sortedSpellTitles {
                guard !matched.contains(spellTitle) else { continue }
                if descLower.contains(spellTitle) {
                    if let id = spellMap[spellTitle] {
                        try await db.insertCrossReference(sourceId: item.id, targetId: id, linkText: spellTitle.capitalized)
                        matched.insert(spellTitle)
                    }
                }
            }
        }
    }

    // MARK: - Parsers

    private func parseClassLevels(_ levels: String) -> [(name: String, level: String)] {
        levels.split(separator: ",").compactMap { seg -> (String, String)? in
            let t = seg.trimmingCharacters(in: .whitespaces)
            guard let lastSpace = t.lastIndex(of: " ") else { return nil }
            let name = String(t[..<lastSpace])
            let level = String(t[t.index(after: lastSpace)...])
            guard !name.isEmpty, Int(level) != nil else { return nil }
            return (name, level)
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
            let isSpellList = content.lowercased().contains("/day") ||
                              content.lowercased().contains("at will") ||
                              content.lowercased().contains("/week") ||
                              content.contains(",")
            guard isSpellList else { continue }

            let items = content.components(separatedBy: CharacterSet(charactersIn: ",;"))
            for item in items {
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
