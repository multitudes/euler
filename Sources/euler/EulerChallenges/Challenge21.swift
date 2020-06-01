//
//  File.swift
//  
//
//  Created by Laurent B on 31/05/2020.
//

import Foundation

public class Challenge21 {
    
    var description: String = ""
    
    public init() {
        self.description = descriptionForChallenge20
    }
    
    // I will multiply the solution array with the digits with the number - number is incremented in
    // the other function sumFactorialDigits
    private func getDivisorSum(number: Int) -> Int {
        let sqrtn = Int(Double(number).squareRoot())
        var sumOfDivisors: Int = 0
        for i in 1...sqrtn {
            if number % i == 0 {
                sumOfDivisors += i + number/i
            }
        }
        return sumOfDivisors
    }
    
    public func sumAmicableNum(number: Int) -> Int {
        precondition(number > 0, "The number must be positive")
        var countAmicableNumbers: Int = 0
        for i in 1...number {
            let a = getDivisorSum(number: i)
            let b = getDivisorSum(number: a)
            if a == b {
                countAmicableNumbers += 1
            }
        }
        return countAmicableNumbers
    }
    
    public func printDescription() {
        print(description)
    }
}

