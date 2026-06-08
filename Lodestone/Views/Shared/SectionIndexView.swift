import SwiftUI

// MARK: - Section Index (side letter scrubber)

/// Right-edge letter scrubber overlay for alphabetical lists with many entries.
/// Attach via `.overlay(alignment: .trailing)` on a ScrollViewReader that wraps a List.
///
/// Usage:
///   ScrollViewReader { proxy in
///       List { ... }
///           .overlay(alignment: .trailing) {
///               if showIndex {
///                   SectionIndexView(letters: indexLetters) { letter in
///                       withAnimation { proxy.scrollTo(letter, anchor: .top) }
///                   }
///                   .padding(.trailing, 6)
///               }
///           }
///   }

struct SectionIndexView: View {
    let letters: [String]
    let onSelect: (String) -> Void

    @GestureState private var activeLetter: String? = nil
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(spacing: 0) {
            ForEach(letters, id: \.self) { letter in
                Text(letter)
                    .font(.system(size: 11, weight: .semibold))
                    .foregroundStyle(activeLetter == letter
                        ? AppColors.adaptivePrimary(colorScheme)
                        : AppColors.adaptiveTextSecondary(colorScheme))
                    .frame(width: 20, height: 16)
            }
        }
        .padding(.vertical, 6)
        .padding(.horizontal, 2)
        .background(
            Capsule()
                .fill(AppColors.adaptiveSurface(colorScheme).opacity(0.92))
                .shadow(color: .black.opacity(0.15), radius: 3, x: -1, y: 0)
        )
        .gesture(
            DragGesture(minimumDistance: 0, coordinateSpace: .local)
                .updating($activeLetter) { value, state, _ in
                    state = letter(at: value.location.y)
                }
                .onChanged { value in
                    if let l = letter(at: value.location.y) {
                        onSelect(l)
                    }
                }
        )
    }

    private func letter(at y: CGFloat) -> String? {
        guard !letters.isEmpty else { return nil }
        let topPad: CGFloat = 6
        let itemHeight: CGFloat = 16
        let index = Int((y - topPad) / itemHeight)
        let clamped = max(0, min(letters.count - 1, index))
        return letters[clamped]
    }
}
