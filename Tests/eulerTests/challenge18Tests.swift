import XCTest
import class Foundation.Bundle

func testChallenge18Test(number: String, flag: String) throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.

        // Some of the APIs that we use below are available in macOS 10.13 and above.
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
        let expectedOutput = "Solution: 1074\n"
        //XCTAssertEqual(output!, expectedOutput)
    }
/// Returns path to the built products directory.
public var productsDirectory: URL {
  #if os(macOS)
    for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
        return bundle.bundleURL.deletingLastPathComponent()
    }
    fatalError("couldn't find the products directory")
  #else
    return Bundle.main.bundleURL
  #endif
}
