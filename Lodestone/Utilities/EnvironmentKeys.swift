import SwiftUI

private struct EmbeddedInSplitViewKey: EnvironmentKey {
    static let defaultValue = false
}

extension EnvironmentValues {
    /// True when the view is hosted inside a NavigationSplitView detail column.
    /// Views should skip their own NavigationStack when this is true.
    var isEmbeddedInSplitView: Bool {
        get { self[EmbeddedInSplitViewKey.self] }
        set { self[EmbeddedInSplitViewKey.self] = newValue }
    }
}
