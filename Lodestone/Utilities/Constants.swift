import SwiftUI

enum AppConstants {
    static let appName = "Lodestone PF1"
    static let bundleID = "com.heiloproject.lodestone.pf1"
    static let maxRecentSearches = 10
    static let searchDebounceSeconds: Double = 0.3
}

// MARK: - Color Token Extension

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b, a: UInt64
        switch hex.count {
        case 6:
            (r, g, b, a) = ((int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF, 255)
        case 8:
            (r, g, b, a) = ((int >> 24) & 0xFF, (int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF)
        default:
            (r, g, b, a) = (0, 0, 0, 255)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

// MARK: - App Colors

enum AppColors {
    // Brand
    static let primary = Color(hex: "7A5C00")           // dark gold (light mode) — WCAG AA on #FAF7F0 (~5.2:1)
    static let primaryDark = Color(hex: "D4AF37")        // bright gold (dark mode)
    static let secondary = Color(hex: "8B1A1A")          // crimson (light mode)
    static let secondaryDark = Color(hex: "C0392B")      // crimson (dark mode)
    static let accent = Color(hex: "1F6358")             // teal-green (darkened for WCAG AA contrast)
    static let premiumGold = Color(hex: "D4AF37")        // crown/premium

    // Background
    static let background = Color(hex: "FAF7F0")         // warm parchment (light)
    static let backgroundDark = Color(hex: "1C1A17")     // dark leather (dark)
    static let surface = Color(hex: "FFFFFF")            // card/list row (light)
    static let surfaceDark = Color(hex: "2A2620")        // card/list row (dark)
    static let surfaceElevated = Color(hex: "F5F0E8")    // input fills (light)
    static let surfaceElevatedDark = Color(hex: "332E28") // input fills (dark)

    // Text
    static let textPrimary = Color(hex: "1A1714")
    static let textPrimaryDark = Color(hex: "F0EDE6")
    static let textSecondary = Color(hex: "4A4440")
    static let textSecondaryDark = Color(hex: "9A9590")

    // Border
    static let border = Color(hex: "D4C9B0")
    static let borderDark = Color(hex: "3D3830")

    // Adaptive (use these in views)
    static func adaptivePrimary(_ scheme: ColorScheme) -> Color {
        scheme == .dark ? primaryDark : primary
    }

    static func adaptiveBackground(_ scheme: ColorScheme) -> Color {
        scheme == .dark ? backgroundDark : background
    }

    static func adaptiveSurface(_ scheme: ColorScheme) -> Color {
        scheme == .dark ? surfaceDark : surface
    }

    static func adaptiveSurfaceElevated(_ scheme: ColorScheme) -> Color {
        scheme == .dark ? surfaceElevatedDark : surfaceElevated
    }

    static func adaptiveTextPrimary(_ scheme: ColorScheme) -> Color {
        scheme == .dark ? textPrimaryDark : textPrimary
    }

    static func adaptiveTextSecondary(_ scheme: ColorScheme) -> Color {
        scheme == .dark ? textSecondaryDark : textSecondary
    }

    static func adaptiveBorder(_ scheme: ColorScheme) -> Color {
        scheme == .dark ? borderDark : border
    }

    // Legacy fallbacks (for views not yet migrated to colorScheme-aware)
    static let secondaryBackground = Color(.secondarySystemBackground)
    static let groupedBackground = Color(.systemGroupedBackground)

    // Content type colors
    static func contentTypeColor(_ type: ContentType) -> Color {
        switch type {
        case .spell:   Color(hex: "7B3FA0")
        case .class_:  Color(hex: "1A6B9A")
        case .monster: Color(hex: "C0392B")
        case .feat:    Color(hex: "D05A16")
        case .item:    Color(hex: "2E8B57")
        case .race:    Color(hex: "1A7A7A")
        case .trait:   Color(hex: "5B4B9A")
        case .rule:    Color(hex: "4A4A4A")
        }
    }
}

// MARK: - Spacing

enum AppSpacing {
    static let xs: CGFloat   = 4
    static let sm: CGFloat   = 8
    static let md: CGFloat   = 12
    static let base: CGFloat = 16
    static let lg: CGFloat   = 20
    static let xl: CGFloat   = 24
    static let xxl: CGFloat  = 32
    static let xxxl: CGFloat = 40
}

// MARK: - Corner Radius

enum AppRadius {
    static let small: CGFloat  = 6
    static let medium: CGFloat = 10
    static let large: CGFloat  = 14
    static let xl: CGFloat     = 20
    static let pill: CGFloat   = 100
}
