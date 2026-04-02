import SwiftUI

struct ClassDetailView: View {
    let cls: ClassEntry
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.sm) {
            DetailRow(label: "Key Ability", value: cls.keyAbility)
            DetailRow(label: "HP per Level", value: "\(cls.hp)")
            DetailRow(label: "Perception", value: cls.perception)
            DetailRow(label: "Fort Save", value: cls.fortSave)
            DetailRow(label: "Ref Save", value: cls.refSave)
            DetailRow(label: "Will Save", value: cls.willSave)
            DetailRow(label: "Skills", value: cls.skills)
            DetailRow(label: "Source", value: cls.source)

            if !cls.classFeatures.isEmpty {
                OrnamentalDivider(label: "Class Features")
                    .padding(.vertical, AppSpacing.sm)
                Text(cls.classFeatures)
                    .font(AppFonts.body)
                    .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                    .lineSpacing(4)
            }

            OrnamentalDivider(label: "Description")
                .padding(.vertical, AppSpacing.sm)

            Text(cls.description)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.adaptiveTextPrimary(colorScheme))
                .lineSpacing(4)
        }
    }
}

#Preview {
    ScrollView {
        ClassDetailView(cls: .placeholder)
            .padding()
    }
}
