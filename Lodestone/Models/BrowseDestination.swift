import Foundation

enum BrowseDestination: Hashable {
    case contentTypeList(ContentType)
    case bookContents(BookSource)
    case recentEntry(RecentEntry)
    case itemCategory(String, [ItemEntry])
    case itemSpecialCategory(ItemCategory, [ItemEntry])
    case detail(AnyContentEntry)
}
