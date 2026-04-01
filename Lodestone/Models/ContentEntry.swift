import Foundation

protocol ContentEntry: Codable, Identifiable, Hashable {
    var id: UUID { get }
    var title: String { get }
    var contentType: ContentType { get }
    var summary: String { get }
    var isPremium: Bool { get }
}
