import SwiftUI

// MARK: - Tab

enum Tab: Int, CaseIterable {
    case browse    = 0
    case search    = 1
    case favorites = 2
    case gmTools   = 3
    case settings  = 4
}

struct ContentView: View {
    @AppStorage("selectedTab") private var selectedTabRaw: Int = Tab.browse.rawValue
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
            if sizeClass == .regular && UIDevice.current.userInterfaceIdiom == .pad {
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
                SidebarItem(label: "Browse", icon: "books.vertical.fill", tag: Tab.browse.rawValue, selected: $selectedTabRaw)
                SidebarItem(label: "Search", icon: "magnifyingglass", tag: Tab.search.rawValue, selected: $selectedTabRaw)
                SidebarItem(label: "Favorites", icon: "bookmark.fill", tag: Tab.favorites.rawValue, selected: $selectedTabRaw)
                SidebarItem(label: "GM Tools", icon: "shield.fill", tag: Tab.gmTools.rawValue, selected: $selectedTabRaw)
                SidebarItem(label: "Settings", icon: "gearshape.fill", tag: Tab.settings.rawValue, selected: $selectedTabRaw)
            }
            .navigationTitle(AppConstants.appName)
            .listStyle(.sidebar)
        } detail: {
            switch Tab(rawValue: selectedTabRaw) ?? .browse {
            case .browse:    BrowseView().id(Tab.browse.rawValue)
            case .search:    SearchView().id(Tab.search.rawValue)
            case .favorites: FavoritesView().id(Tab.favorites.rawValue)
            case .gmTools:   GMScreenView().id(Tab.gmTools.rawValue)
            case .settings:  SettingsView().id(Tab.settings.rawValue)
            }
        }
    }

    // MARK: - iPhone Layout (TabView)

    private var iPhoneLayout: some View {
        TabView(selection: $selectedTabRaw) {
            BrowseView()
                .tabItem { Label("Browse", systemImage: "books.vertical.fill") }
                .tag(Tab.browse.rawValue)

            SearchView()
                .tabItem { Label("Search", systemImage: "magnifyingglass") }
                .tag(Tab.search.rawValue)

            FavoritesView()
                .tabItem { Label("Favorites", systemImage: "bookmark.fill") }
                .tag(Tab.favorites.rawValue)

            GMScreenView()
                .tabItem { Label("GM Tools", systemImage: "shield.fill") }
                .tag(Tab.gmTools.rawValue)

            SettingsView()
                .tabItem { Label("Settings", systemImage: "gearshape.fill") }
                .tag(Tab.settings.rawValue)
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
        .accessibilityAddTraits(selected == tag ? .isSelected : [])
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
