import Foundation
import SQLite3

/// A dictionary-backed representation of a single SQLite result row.
/// Keys are column names; values are the text representation of each column.
typealias SQLiteRow = [String: String]

// MARK: - SQLite helpers

func sqlite3_column_string(_ stmt: OpaquePointer?, _ col: Int32) -> String? {
    guard let ptr = sqlite3_column_text(stmt, col) else { return nil }
    return String(cString: ptr)
}

extension OpaquePointer {
    /// Collect all columns in the current row as a [String: String] dictionary.
    func currentRow() -> SQLiteRow {
        var row: SQLiteRow = [:]
        let count = sqlite3_column_count(self)
        for i in 0..<count {
            guard let nameCStr = sqlite3_column_name(self, i) else { continue }
            let name = String(cString: nameCStr)
            if let text = sqlite3_column_text(self, i) {
                row[name] = String(cString: text)
            } else {
                row[name] = nil
            }
        }
        return row
    }
}
