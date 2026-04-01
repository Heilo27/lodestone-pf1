import Foundation

enum ContentType: String, Codable, CaseIterable, Identifiable, Hashable {
    case spell
    case class_ = "class"
    case monster
    case feat
    case item
    case race
    case trait
    case rule

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .spell: "Spells"
        case .class_: "Classes"
        case .monster: "Monsters"
        case .feat: "Feats"
        case .item: "Items"
        case .race: "Races"
        case .trait: "Traits"
        case .rule: "Rules"
        }
    }

    var singularName: String {
        switch self {
        case .spell: "Spell"
        case .class_: "Class"
        case .monster: "Monster"
        case .feat: "Feat"
        case .item: "Item"
        case .race: "Race"
        case .trait: "Trait"
        case .rule: "Rule"
        }
    }

    var iconName: String {
        switch self {
        case .spell: "wand.and.stars"
        case .class_: "person.fill"
        case .monster: "pawprint.fill"
        case .feat: "star.fill"
        case .item: "bag.fill"
        case .race: "figure.stand"
        case .trait: "sparkles"
        case .rule: "book.closed.fill"
        }
    }
}
