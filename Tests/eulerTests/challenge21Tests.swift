import XCTest
import class Foundation.Bundle
@testable import euler

func testChallenge21Test(number: String, flag: String) throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.

    
//    let solutionChallenge21 = Challenge21().sumAmicableNum
//
//        XCTAssertTrue(Int(solutionChallenge21(1000)) == solutionChallenge21(1000))
//        XCTAssertEqual(solutionChallenge21(1000), 504)
//
//        XCTAssertEqual(solutionChallenge21(2000), 2898)
//        XCTAssertEqual(solutionChallenge21(5000), 8442)
//        XCTAssertEqual(solutionChallenge21(10000), 31626)

        
    
    
    
        let fooBinary = productsDirectory.appendingPathComponent("euler")
        let process = Process()
        process.executableURL = fooBinary
        process.arguments = [number, flag]
        let pipe = Pipe()
        process.standardOutput = pipe

        try process.run()
        process.waitUntilExit()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)
        let expectedOutput = "Solution: 1111\n"
        XCTAssertEqual(output!, expectedOutput)
    }
