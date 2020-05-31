
import ArgumentParser
import Foundation

struct euler: ParsableCommand {
    
    @Argument(help: "Challenge number")
    var number: Int
    
    @Flag(name: [.customLong("sol"), .long, .customShort("s")],
          help: "Ask to run the code and get solution")
    var solution: Bool
    
    
    func run() throws {
        Challenge(with: solution, number: number).runChallenge()
    }
}

euler.main()
