import SwiftUI

struct SpellDetailView: View {
    let spell: SpellEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            DetailRow(label: "School", value: spell.school)

            if !spell.levels.isEmpty {
                OrnamentalDivider(label: "Class Levels")
                    .padding(.vertical, AppSpacing.sm)
                SpellClassLevelsView(levels: spell.levels)
            }

            DetailRow(label: "Casting Time", value: spell.castingTime)
            if !spell.components.isEmpty { DetailRow(label: "Components", value: spell.components) }
            if !spell.range.isEmpty { DetailRow(label: "Range", value: spell.range) }
            if !spell.area.isEmpty { DetailRow(label: "Area", value: spell.area) }
            if !spell.targets.isEmpty { DetailRow(label: "Targets", value: spell.targets) }
            if !spell.duration.isEmpty { DetailRow(label: "Duration", value: spell.duration) }
            if !spell.savingThrow.isEmpty { DetailRow(label: "Saving Throw", value: spell.savingThrow) }
            DetailRow(label: "Spell Resistance", value: spell.spellResistance ? "Yes" : "No")
            DetailRow(label: "Source", value: spell.page > 0 ? "\(spell.source), p. \(spell.page)" : spell.source)

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)

            Text(.init(spell.description))
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)

            CrossLinkSection(sourceId: spell.id, heading: "See Also")
        }
    }
}

// MARK: - Class Levels Subview

private struct SpellClassLevelsView: View {
    let levels: String
    @Environment(\.colorScheme) private var colorScheme

    /// Parsed entries: [("Cleric", "2"), ("Sorcerer/Wizard", "3"), ...]
    private var entries: [(class_: String, level: String)] {
        levels
            .split(separator: ",")
            .compactMap { segment -> (String, String)? in
                let trimmed = segment.trimmingCharacters(in: .whitespaces)
                // Find the last space — everything after is the level number
                guard let lastSpace = trimmed.lastIndex(of: " ") else { return nil }
                let className = String(trimmed[..<lastSpace]).capitalized
                let levelStr = String(trimmed[trimmed.index(after: lastSpace)...])
                guard !className.isEmpty, !levelStr.isEmpty else { return nil }
                return (className, levelStr)
            }
    }

    var body: some View {
        if entries.isEmpty {
            // Fallback: show raw string
            Text(levels)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
        } else {
            VStack(alignment: .leading, spacing: AppSpacing.xs) {
                ForEach(entries, id: \.class_) { entry in
                    HStack {
                        Text(entry.class_)
                            .font(AppFonts.subheadline)
                            .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                        Spacer()
                        Text("Level \(entry.level)")
                            .font(AppFonts.subheadline.weight(.semibold))
                            .foregroundStyle(AppColors.accent)
                    }
                    .padding(.horizontal, AppSpacing.sm)
                    .padding(.vertical, AppSpacing.xs)
                    .background(AppColors.adaptiveSurfaceElevated(colorScheme), in: RoundedRectangle(cornerRadius: AppRadius.small))
                }
            }
        }
    }
}

#Preview {
    ScrollView {
        SpellDetailView(spell: .placeholder)
            .padding()
    }
}
