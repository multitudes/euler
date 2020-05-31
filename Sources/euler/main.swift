
import ArgumentParser
import Foundation

struct euler: ParsableCommand {
    
    @Argument(help: "Challenge number")
    var number: Int
    
    @Flag(name: [.customLong("sol"), .long, .customShort("s")],
          help: "Ask to run the code and get solution")
    var solution: Bool
    
    
    func run() throws {
        // try to uncomment the code below and start creating your challenges
        
//        let start = DispatchTime.now()
//        Challenge(with: solution, number: number).runChallenge()
//        let end = DispatchTime.now()
//        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
//        let timeInterval = Double(nanoTime) / 1_000_000_000
        //print("Time to evaluate problem: \(timeInterval) seconds")

        // this is just to pass the test when the package is first initialized
        print("Hello, world!")

    }
}

euler.main()
