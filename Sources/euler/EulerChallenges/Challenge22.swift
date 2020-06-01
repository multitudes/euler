//
//  File.swift
//  
//
//  Created by Laurent B on 31/05/2020.
//

import Foundation

extension StringProtocol {
    var asciiValues: [UInt8] { compactMap( \.asciiValue ) }
}

public class Challenge22 {
    
    var description: String = ""
    
    public init() {
        self.description = descriptionForChallenge22
    }
    
    // I will multiply the solution array with the digits with the number - number is incremented in
    // the other function sumFactorialDigits
    public func namesScores(array: [String]) -> Int {
        let sorted = array.sorted()
        print(sorted)
        var totalSum = 0
        for (index, word) in sorted.enumerated() {
            print(index, word)
            // A is 65 but I want to give it a value of 1 therefore I substract 64
            let sum = word.asciiValues.map { Int($0) - 64 }.reduce(0, +) * ( index + 1)
            
            totalSum += sum
            print(word.asciiValues)
            print(sum)
            //let wordSum = word.asciiValues.reduce(0,+)
            //print(wordSum)
        }
        return totalSum
    }
    
    public func printDescription() {
        print(description)
    }
}

