import Foundation

enum BrowseDestination: Hashable {
    case contentTypeList(ContentType)
    case bookContents(BookSource)
    case recentEntry(RecentEntry)
    case detail(AnyContentEntry)
}
