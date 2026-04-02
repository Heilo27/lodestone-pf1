import Foundation

enum ContentType: String, Codable, CaseIterable, Identifiable, Hashable {
    case spell
    case class_ = "class"
    case monster
    case feat
    case item
    case ancestry
    case trait
    case rule
    case background
    case condition

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .spell:      "Spells"
        case .class_:     "Classes"
        case .monster:    "Monsters"
        case .feat:       "Feats"
        case .item:       "Items"
        case .ancestry:   "Ancestries"
        case .trait:      "Traits"
        case .rule:       "Rules"
        case .background: "Backgrounds"
        case .condition:  "Conditions"
        }
    }

    var singularName: String {
        switch self {
        case .spell:      "Spell"
        case .class_:     "Class"
        case .monster:    "Monster"
        case .feat:       "Feat"
        case .item:       "Item"
        case .ancestry:   "Ancestry"
        case .trait:      "Trait"
        case .rule:       "Rule"
        case .background: "Background"
        case .condition:  "Condition"
        }
    }

    var iconName: String {
        switch self {
        case .spell:      "wand.and.stars"
        case .class_:     "person.fill"
        case .monster:    "pawprint.fill"
        case .feat:       "star.fill"
        case .item:       "bag.fill"
        case .ancestry:   "figure.stand"
        case .trait:      "sparkles"
        case .rule:       "book.closed.fill"
        case .background: "scroll.fill"
        case .condition:  "exclamationmark.triangle.fill"
        }
    }
}
