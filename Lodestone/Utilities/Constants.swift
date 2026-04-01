import SwiftUI

enum AppConstants {
    static let appName = "Lodestone"
    static let bundleID = "com.heiloprojects.lodestone-pf1"
    static let maxRecentSearches = 10
    static let searchDebounceSeconds: Double = 0.3
}

enum AppColors {
    static let primary = Color.blue
    static let accent = Color.orange
    static let premiumGold = Color.yellow
    static let background = Color(.systemBackground)
    static let secondaryBackground = Color(.secondarySystemBackground)
    static let groupedBackground = Color(.systemGroupedBackground)

    static func contentTypeColor(_ type: ContentType) -> Color {
        switch type {
        case .spell: .purple
        case .class_: .blue
        case .monster: .red
        case .feat: .orange
        case .item: .green
        case .race: .teal
        case .trait: .indigo
        case .rule: .gray
        }
    }
}
