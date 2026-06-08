import SwiftUI

struct MonsterDetailView: View {
    let monster: MonsterEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            // Top stat blocks: CR, AC, HP
            HStack(spacing: AppSpacing.sm) {
                StatBlock(label: "CR", value: monster.challengeRating)
                StatBlock(label: "AC", value: "\(monster.armorClass)")
                StatBlock(label: "HP", value: monster.hitPoints)
            }
            .padding(.bottom, AppSpacing.sm)

            GroupHeader("Stats")
                .padding(.bottom, AppSpacing.xs)

            // Ability scores grid
            HStack(spacing: AppSpacing.sm) {
                AbilityBlock(label: "STR", value: monster.str)
                AbilityBlock(label: "DEX", value: monster.dex)
                AbilityBlock(label: "CON", value: monster.con)
                AbilityBlock(label: "INT", value: monster.int_)
                AbilityBlock(label: "WIS", value: monster.wis)
                AbilityBlock(label: "CHA", value: monster.cha)
            }
            .padding(.bottom, AppSpacing.sm)

            // Saves + Initiative
            HStack(spacing: AppSpacing.sm) {
                StatBlock(label: "Fort", value: signedInt(monster.fortSave))
                StatBlock(label: "Ref", value: signedInt(monster.refSave))
                StatBlock(label: "Will", value: signedInt(monster.willSave))
                StatBlock(label: "Init", value: signedInt(monster.initiative))
            }
            .padding(.bottom, AppSpacing.sm)

            DetailRow(label: "Type", value: monster.type)
            DetailRow(label: "Size", value: "\(monster.size) — \(monster.alignment)")
            DetailRow(label: "Speed", value: monster.speed)
            if !monster.senses.isEmpty { DetailRow(label: "Senses", value: monster.senses) }
            if !monster.environment.isEmpty { DetailRow(label: "Environment", value: monster.environment) }
            DetailRow(label: "Source", value: monster.page > 0 ? "\(monster.source), p. \(monster.page)" : monster.source)

            if !monster.attacks.isEmpty {
                OrnamentalDivider(label: "Attacks")
                    .padding(.vertical, AppSpacing.sm)
                Text(.init(monster.attacks))
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    .lineSpacing(3)
            }

            if !monster.specialAbilities.isEmpty {
                OrnamentalDivider(label: "Special Abilities")
                    .padding(.vertical, AppSpacing.sm)
                Text(.init(monster.specialAbilities))
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    .lineSpacing(4)
            }

            if !monster.immunities.isEmpty {
                OrnamentalDivider(label: "Immunities")
                    .padding(.vertical, AppSpacing.sm)
                Text(.init(monster.immunities))
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    .lineSpacing(3)
            }

            if !monster.resistances.isEmpty {
                OrnamentalDivider(label: "Resistances")
                    .padding(.vertical, AppSpacing.sm)
                Text(.init(monster.resistances))
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    .lineSpacing(3)
            }

            if !monster.skills.isEmpty {
                OrnamentalDivider(label: "Skills")
                    .padding(.vertical, AppSpacing.sm)
                Text(.init(monster.skills))
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    .lineSpacing(3)
            }

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)

            Text(.init(monster.description))
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)

            CrossLinkSection(sourceId: monster.id, heading: "Spell-Like Abilities")
        }
    }

    private func signedInt(_ value: Int) -> String {
        value >= 0 ? "+\(value)" : "\(value)"
    }
}

private struct StatBlock: View {
    let label: String
    let value: String
    @Environment(\.colorScheme) private var colorScheme

    /// Returns an expanded accessibility label for abbreviated stat labels.
    private var accessibilityLabelText: String {
        switch label.uppercased() {
        case "CR":   return "Challenge Rating \(value)"
        case "AC":   return "Armor Class \(value)"
        case "HP":   return "Hit Points \(value)"
        case "FORT": return "Fortitude Save \(value)"
        case "REF":  return "Reflex Save \(value)"
        case "WILL": return "Will Save \(value)"
        case "INIT": return "Initiative \(value)"
        default:     return "\(label) \(value)"
        }
    }

    var body: some View {
        VStack(spacing: AppSpacing.xs) {
            Text(label)
                .font(AppFonts.caption.weight(.semibold))
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
                .textCase(.uppercase)
                .tracking(0.8)
            Text(value)
                .font(AppFonts.displaySmall)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, AppSpacing.md)
        .background(AppColors.adaptiveSurfaceElevated(colorScheme), in: RoundedRectangle(cornerRadius: AppRadius.medium))
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(accessibilityLabelText)
    }
}

private struct AbilityBlock: View {
    let label: String
    let value: Int  // raw ability score (e.g. 18 for STR 18)
    @Environment(\.colorScheme) private var colorScheme

    private var modifierString: String {
        let mod = Int(floor(Double(value - 10) / 2.0))
        return mod >= 0 ? "+\(mod)" : "\(mod)"
    }

    /// Returns an expanded accessibility label for abbreviated ability score labels.
    private var accessibilityLabelText: String {
        let fullName: String
        switch label.uppercased() {
        case "STR": fullName = "Strength"
        case "DEX": fullName = "Dexterity"
        case "CON": fullName = "Constitution"
        case "INT": fullName = "Intelligence"
        case "WIS": fullName = "Wisdom"
        case "CHA": fullName = "Charisma"
        default:    fullName = label
        }
        return "\(fullName) \(value), modifier \(modifierString)"
    }

    var body: some View {
        VStack(spacing: 2) {
            Text(label)
                .font(AppFonts.caption.weight(.bold))
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
            Text("\(value)")
                .font(AppFonts.subheadline.weight(.semibold))
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
            Text(modifierString)
                .font(AppFonts.caption)
                .foregroundStyle(AppColors.adaptiveTextSecondary(colorScheme))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, AppSpacing.sm)
        .background(AppColors.adaptiveSurfaceElevated(colorScheme), in: RoundedRectangle(cornerRadius: AppRadius.small))
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(accessibilityLabelText)
    }
}

#Preview {
    ScrollView {
        MonsterDetailView(monster: .placeholder)
            .padding()
    }
}
