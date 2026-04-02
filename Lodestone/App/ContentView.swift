import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") private var selectedTab: Int = 0
    @Environment(\.horizontalSizeClass) private var sizeClass
    @Environment(\.colorScheme) private var colorScheme
    @Environment(RecentlyViewedService.self) private var recentlyViewedService

    // One path per tab — held here so we can reset on tab switch
    @State private var paths: [NavigationPath] = Array(repeating: NavigationPath(), count: 5)

    var body: some View {
        Group {
            if sizeClass == .regular {
                iPadLayout
            } else {
                iPhoneLayout
            }
        }
        .tint(colorScheme == .dark ? AppColors.primaryDark : AppColors.primary)
    }

    // MARK: - iPad Layout (NavigationSplitView sidebar)

    private var iPadLayout: some View {
        NavigationSplitView {
            List {
                Section {
                    SidebarItem(label: "Browse", icon: "books.vertical.fill", tag: 0, selected: $selectedTab)
                    SidebarItem(label: "Search", icon: "magnifyingglass", tag: 1, selected: $selectedTab)
                    SidebarItem(label: "Favorites", icon: "bookmark.fill", tag: 2, selected: $selectedTab)
                    SidebarItem(label: "GM Tools", icon: "shield.fill", tag: 3, selected: $selectedTab)
                    SidebarItem(label: "Settings", icon: "gearshape.fill", tag: 4, selected: $selectedTab)
                }

                if !recentlyViewedService.entries.isEmpty {
                    Section("Recently Viewed") {
                        ForEach(recentlyViewedService.entries.prefix(5)) { recent in
                            Button {
                                selectedTab = 0
                                paths[0].append(BrowseDestination.recentEntry(recent))
                            } label: {
                                Label(recent.title, systemImage: recent.contentType.iconName)
                                    .font(AppFonts.subheadline)
                                    .lineLimit(1)
                            }
                            .foregroundStyle(colorScheme == .dark ? AppColors.primaryDark : AppColors.primary)
                        }
                    }
                }
            }
            .navigationTitle(AppConstants.appName)
            .listStyle(.sidebar)
        } detail: {
            // Each tab gets its own NavigationStack with an externally-owned path.
            // Switching tabs resets the path via onChange, popping to root.
            switch selectedTab {
            case 0: NavigationStack(path: $paths[0]) { BrowseView() }.environment(\.isEmbeddedInSplitView, true)
            case 1: NavigationStack(path: $paths[1]) { SearchView() }.environment(\.isEmbeddedInSplitView, true)
            case 2: NavigationStack(path: $paths[2]) { FavoritesView() }.environment(\.isEmbeddedInSplitView, true)
            case 3: NavigationStack(path: $paths[3]) { GMScreenView() }.environment(\.isEmbeddedInSplitView, true)
            case 4: NavigationStack(path: $paths[4]) { SettingsView() }.environment(\.isEmbeddedInSplitView, true)
            default: NavigationStack(path: $paths[0]) { BrowseView() }.environment(\.isEmbeddedInSplitView, true)
            }
        }
        .onChange(of: selectedTab) { _, newTab in
            paths[newTab] = NavigationPath()
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
