import XCTest
import class Foundation.Bundle


func testChallenge22Test(number: String, flag: String) throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.

    
        //let solutionChallenge21 = Challenge21().sumAmicableNum
    
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
        let expectedOutput = "Solution: 316226\n"
        XCTAssertEqual(output!, expectedOutput)
    }
