import XCTest
import class Foundation.Bundle


func testChallenge21Test(number: String, flag: String) throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.

    
        //let solutionChallenge21 = Challenge21().sumAmicableNum
    
    
    
//        let challenge = Challenge21()
//    XCTAssertTrue(Int(challenge.sumAmicableNum(number: 1000)) == challenge.sumAmicableNum(number: 1000))
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
        let expectedOutput = "Solution: 316226\n"
        XCTAssertEqual(output!, expectedOutput)
    }
