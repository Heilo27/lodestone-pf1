import SwiftUI

// MARK: - Ornamental Divider
//
// Thin lines flanking a rotated diamond in the primary gold color.
// Used as section headers in detail views and the loading screen.

struct OrnamentalDivider: View {
    var label: String? = nil
    var color: Color = AppColors.primary

    @Environment(\.colorScheme) private var colorScheme

    private var resolvedColor: Color {
        colorScheme == .dark ? AppColors.primaryDark : color
    }

    var body: some View {
        HStack(spacing: AppSpacing.sm) {
            line
            if let label {
                Text(label)
                    .font(AppFonts.chip())
                    .fontWeight(.semibold)
                    .tracking(1.5)
                    .foregroundStyle(resolvedColor)
                    .textCase(.uppercase)
            } else {
                diamond
            }
            line
        }
    }

    private var line: some View {
        Rectangle()
            .fill(resolvedColor.opacity(0.4))
            .frame(height: 1)
    }

    private var diamond: some View {
        Rectangle()
            .fill(resolvedColor)
            .frame(width: 6, height: 6)
            .rotationEffect(.degrees(45))
    }
}

// MARK: - Group Header
//
// Tinted full-width row used as section headers in list views.
// Provides visual delineation between groups with a subtle background.

struct GroupHeader: View {
    let title: String
    @Environment(\.colorScheme) private var colorScheme

    init(_ title: String) { self.title = title }

    var body: some View {
        Text(title)
            .font(AppFonts.caption.weight(.bold))
            .foregroundStyle(AppColors.adaptivePrimary(colorScheme))
            .textCase(nil)
            .padding(.horizontal, AppSpacing.sm)
            .padding(.vertical, 4)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(AppColors.adaptivePrimary(colorScheme).opacity(0.08))
            .listRowInsets(EdgeInsets())
    }
}

// MARK: - Source Badge

struct SourceBadge: View {
    let text: String
    var color: Color = AppColors.accent

    var body: some View {
        Text(text)
            .font(AppFonts.chip())
            .fontWeight(.medium)
            .foregroundStyle(color)
            .padding(.horizontal, AppSpacing.sm)
            .padding(.vertical, 3)
            .background(color.opacity(0.12), in: Capsule())
            .overlay(Capsule().strokeBorder(color.opacity(0.3), lineWidth: 0.5))
    }
}

// MARK: - Premium Badge

struct PremiumBadge: View {
    var compact: Bool = false

    var body: some View {
        HStack(spacing: 3) {
            Image(systemName: "crown.fill")
                .font(.system(size: compact ? 9 : 10))
            if !compact {
                Text("Premium")
                    .font(AppFonts.chip())
                    .fontWeight(.semibold)
            }
        }
        .foregroundStyle(AppColors.premiumGold)
        .padding(.horizontal, compact ? 5 : AppSpacing.sm)
        .padding(.vertical, 3)
        .background(AppColors.premiumGold.opacity(0.12), in: Capsule())
        .overlay(Capsule().strokeBorder(AppColors.premiumGold.opacity(0.3), lineWidth: 0.5))
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(compact ? "Premium content" : "Premium content")
    }
}

// MARK: - Content Type Badge

struct ContentTypeBadge: View {
    let type: ContentType

    var body: some View {
        Text(type.singularName)
            .font(AppFonts.chip())
            .foregroundStyle(AppColors.contentTypeColor(type))
            .padding(.horizontal, AppSpacing.sm)
            .padding(.vertical, 3)
            .background(AppColors.contentTypeColor(type).opacity(0.12), in: Capsule())
    }
}

// MARK: - Content Type Icon Badge

struct ContentTypeIconBadge: View {
    let type: ContentType
    var size: CGFloat = 28

    var body: some View {
        Image(systemName: type.iconName)
            .font(.system(size: size * 0.5))
            .foregroundStyle(.white)
            .frame(width: size, height: size)
            .background(AppColors.contentTypeColor(type), in: RoundedRectangle(cornerRadius: AppRadius.small))
            .accessibilityHidden(true)
    }
}

// MARK: - Primary Button Style

struct PrimaryButtonStyle: ButtonStyle {
    @Environment(\.colorScheme) private var colorScheme

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(AppFonts.subheadline.weight(.semibold))
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, AppSpacing.md)
            .background(
                (colorScheme == .dark ? AppColors.primaryDark : AppColors.primary)
                    .opacity(configuration.isPressed ? 0.85 : 1),
                in: Capsule()
            )
    }
}

// MARK: - Crimson Gradient Button Style

struct GoldGradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(AppFonts.subheadline.weight(.semibold))
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, AppSpacing.md)
            .background(
                LinearGradient(
                    colors: [Color(hex: "C0392B"), Color(hex: "7A1010")],
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .opacity(configuration.isPressed ? 0.85 : 1),
                in: Capsule()
            )
    }
}

// MARK: - Previews

#Preview("Design Components") {
    VStack(spacing: 24) {
        OrnamentalDivider()
        OrnamentalDivider(label: "Description")

        HStack(spacing: 8) {
            SourceBadge(text: "Core Rulebook")
            PremiumBadge()
            PremiumBadge(compact: true)
        }

        HStack(spacing: 8) {
            ContentTypeBadge(type: .spell)
            ContentTypeBadge(type: .monster)
            ContentTypeBadge(type: .feat)
        }

        HStack(spacing: 8) {
            ForEach(ContentType.allCases) { type in
                ContentTypeIconBadge(type: type)
            }
        }

        Button("Subscribe for $1.99/mo") {}
            .buttonStyle(PrimaryButtonStyle())
            .padding(.horizontal)

        Button("Unlock Premium Access") {}
            .buttonStyle(GoldGradientButtonStyle())
            .padding(.horizontal)
    }
    .padding()
}
