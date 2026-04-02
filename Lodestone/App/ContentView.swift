import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") private var selectedTab: Int = 0
    @AppStorage("selectedTheme") private var selectedTheme: String = "system"
    @Environment(\.horizontalSizeClass) private var sizeClass
    @Environment(\.colorScheme) private var colorScheme

    private var preferredScheme: ColorScheme? {
        switch selectedTheme {
        case "light": return .light
        case "dark":  return .dark
        default:      return nil
        }
    }

    var body: some View {
        Group {
            if sizeClass == .regular {
                iPadLayout
            } else {
                iPhoneLayout
            }
        }
        .preferredColorScheme(preferredScheme)
        .tint(colorScheme == .dark ? AppColors.primaryDark : AppColors.primary)
    }

    // MARK: - iPad Layout (NavigationSplitView sidebar)

    private var iPadLayout: some View {
        NavigationSplitView {
            List {
                SidebarItem(label: "Browse", icon: "books.vertical.fill", tag: 0, selected: $selectedTab)
                SidebarItem(label: "Search", icon: "magnifyingglass", tag: 1, selected: $selectedTab)
                SidebarItem(label: "Favorites", icon: "bookmark.fill", tag: 2, selected: $selectedTab)
                SidebarItem(label: "GM Tools", icon: "shield.fill", tag: 3, selected: $selectedTab)
                SidebarItem(label: "Settings", icon: "gearshape.fill", tag: 4, selected: $selectedTab)
            }
            .navigationTitle(AppConstants.appName)
            .listStyle(.sidebar)
        } detail: {
            switch selectedTab {
            case 0: BrowseView()
            case 1: SearchView()
            case 2: FavoritesView()
            case 3: GMScreenView()
            case 4: SettingsView()
            default: BrowseView()
            }
        }
    }

    // MARK: - iPhone Layout (TabView)

    private var iPhoneLayout: some View {
        TabView(selection: $selectedTab) {
            BrowseView()
                .tabItem { Label("Browse", systemImage: "books.vertical.fill") }
                .tag(0)

            SearchView()
                .tabItem { Label("Search", systemImage: "magnifyingglass") }
                .tag(1)

            FavoritesView()
                .tabItem { Label("Favorites", systemImage: "bookmark.fill") }
                .tag(2)

            GMScreenView()
                .tabItem { Label("GM Tools", systemImage: "shield.fill") }
                .tag(3)

            SettingsView()
                .tabItem { Label("Settings", systemImage: "gearshape.fill") }
                .tag(4)
        }
    }
}

// MARK: - Sidebar Item

private struct SidebarItem: View {
    let label: String
    let icon: String
    let tag: Int
    @Binding var selected: Int
    @Environment(\.colorScheme) private var colorScheme

    private var accentColor: Color {
        colorScheme == .dark ? AppColors.primaryDark : AppColors.primary
    }

    var body: some View {
        Button {
            selected = tag
        } label: {
            Label(label, systemImage: icon)
                .foregroundStyle(selected == tag ? accentColor : .secondary)
                .fontWeight(selected == tag ? .semibold : .regular)
        }
        .listRowBackground(
            selected == tag ? accentColor.opacity(0.12) : Color.clear
        )
    }
}

#Preview("iPhone") {
    ContentView()
        .environment(\.horizontalSizeClass, .compact)
}

#Preview("iPad") {
    ContentView()
        .environment(\.horizontalSizeClass, .regular)
}
