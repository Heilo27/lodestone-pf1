import SwiftUI

// MARK: - App Fonts
//
// Playfair Display (variable font, PostScript name: PlayfairDisplay-Regular)
// is used for all display/heading text.
// SF Pro (system font) is used for body, captions, and UI labels.

enum AppFonts {
    private static let playfairName = "PlayfairDisplay-Regular"

    // MARK: Display / Headings (Playfair Display)

    /// 28pt Bold — screen/section titles; scales with Large Title Dynamic Type
    static var displayLarge: Font {
        .custom(playfairName, size: 28, relativeTo: .largeTitle).weight(.bold)
    }

    /// 22pt Bold — view titles, card headers; scales with Title2 Dynamic Type
    static var displayMedium: Font {
        .custom(playfairName, size: 22, relativeTo: .title2).weight(.bold)
    }

    /// 18pt SemiBold — sub-section headers; scales with Title3 Dynamic Type
    static var displaySmall: Font {
        .custom(playfairName, size: 18, relativeTo: .title3).weight(.semibold)
    }

    /// 16pt Regular — styled labels, ornamental text; scales with Callout Dynamic Type
    static var displayBody: Font {
        .custom(playfairName, size: 16, relativeTo: .callout)
    }

    // MARK: Body / UI (SF Pro — system)

    /// 17pt Regular — primary body text
    static let body: Font = .system(.body)

    /// 15pt Regular — secondary descriptions
    static let callout: Font = .system(.callout)

    /// 15pt Semibold — subheadlines, labels
    static let subheadline: Font = .system(.subheadline)

    /// 13pt Regular — captions, secondary labels
    static let caption: Font = .system(.caption)

    /// 12pt Regular — legal, fine print
    static let caption2: Font = .system(.caption2)

    /// 17pt Semibold — row titles, nav items
    static let headline: Font = .system(.headline)

    /// 13pt Medium — badges, chips
    static func chip(size: CGFloat = 13) -> Font {
        .system(size: size, weight: .medium)
    }

    // MARK: Fallback

    /// Serif fallback if Playfair Display fails to load (uses New York)
    static func serifFallback(size: CGFloat, weight: Font.Weight = .regular) -> Font {
        .system(size: size, weight: weight, design: .serif)
    }
}

// MARK: - View Extensions

extension View {
    /// Apply Playfair Display at a given size and weight.
    func playfair(size: CGFloat, weight: Font.Weight = .regular) -> some View {
        self.font(.custom("PlayfairDisplay-Regular", size: size).weight(weight))
    }
}
