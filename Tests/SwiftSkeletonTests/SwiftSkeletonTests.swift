import XCTest
@testable import SwiftSkeleton

final class SwiftSkeletonTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swift_skeleton().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
