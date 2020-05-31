import XCTest
import class Foundation.Bundle

final class eulerTests: XCTestCase {
    func testChallenge() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.

        // Some of the APIs that we use below are available in macOS 10.13 and above.
        guard #available(macOS 10.13, *) else {
            return
        }
        try testChallenge18Test(number: "18", flag: "-s")
    }



    static var allTests = [
        ("testChallenge18Test", testChallenge18Test),
    ]
}
