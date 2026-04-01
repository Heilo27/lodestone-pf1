import Foundation
import SwiftUI

@Observable
final class GMScreenViewModel {
    struct QuickReference: Identifiable {
        let id = UUID()
        let title: String
        let content: String
        let category: String
    }

    var references: [QuickReference] = [
        QuickReference(
            title: "Combat Actions",
            content: "Standard: Attack, Cast spell, Total defense\nMove: Move up to speed, Draw weapon, Open door\nFull-Round: Full attack, Charge, Withdraw\nSwift: Cast swift spell, Use ability\nImmediate: Cast immediate spell\nFree: Drop item, Speak",
            category: "Combat"
        ),
        QuickReference(
            title: "Conditions",
            content: "Blinded: -2 AC, loses Dex to AC, -4 Str/Dex checks, opposed Perception at -4\nConfused: Roll d% each round for behavior\nDazed: Can take no actions\nEntangled: -2 attack, -4 Dex, concentration DC 15+spell level\nFatigued: -2 Str/Dex, cannot run or charge\nFrightened: -2 attacks/saves/skills/abilities, flees\nNauseated: Cannot attack/cast/concentrate, move only\nStaggered: Single move or standard action only",
            category: "Conditions"
        ),
        QuickReference(
            title: "Difficulty Classes",
            content: "Very Easy: DC 5\nEasy: DC 10\nAverage: DC 15\nTough: DC 20\nChallenging: DC 25\nFormidable: DC 30\nHeroic: DC 35\nNearly Impossible: DC 40",
            category: "Skills"
        ),
        QuickReference(
            title: "Cover & Concealment",
            content: "Soft Cover: +4 AC (creatures in way)\nPartial Cover: +2 AC\nCover: +4 AC, +2 Reflex\nImproved Cover: +8 AC, +4 Reflex, improved evasion\nTotal Cover: Cannot be targeted\nConcealment: 20% miss chance\nTotal Concealment: 50% miss chance",
            category: "Combat"
        ),
    ]

    var selectedCategory: String? = nil

    var filteredReferences: [QuickReference] {
        guard let category = selectedCategory else { return references }
        return references.filter { $0.category == category }
    }

    var categories: [String] {
        Array(Set(references.map(\.category))).sorted()
    }
}
