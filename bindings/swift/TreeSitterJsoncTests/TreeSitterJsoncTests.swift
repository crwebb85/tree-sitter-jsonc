import XCTest
import SwiftTreeSitter
import TreeSitterJsonc

final class TreeSitterJsoncTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_jsonc())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Jsonc grammar")
    }
}
