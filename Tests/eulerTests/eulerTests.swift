import XCTest
import class Foundation.Bundle
//import euler

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
        try testChallenge19Test(number: "19", flag: "-s")
        try testChallenge20Test(number: "20", flag: "-s")
        try testChallenge21Test(number: "21", flag: "-s")
    }



    static var allTests = [
        ("testChallenge", testChallenge),
    ]
}
