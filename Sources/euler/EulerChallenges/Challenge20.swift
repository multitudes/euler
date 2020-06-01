//
//  File.swift
//  
//
//  Created by Laurent B on 31/05/2020.
//

import Foundation

public class Challenge20 {
    
    var description: String = ""
    
    public init() {
        self.description = descriptionForChallenge20
    }
    
    private func multiply(digitsArray: [Int], number: Int) -> [Int] {
        print(digitsArray, number)
        var prod = 1
        var carry = 0
        var length = digitsArray.count
        
        for i in 0...length {
            prod = carry + digitsArray[i]
        }
        
        return [1,1]
    }
    
    public func sumFactorialDigits(number: Int) -> Int {
        if number == 1 { return 1 }
        var result: [Int] = [1]
        for i in 2...number {
            result = multiply(digitsArray: result, number: i)
        }
        
        let solution = result.reduce(0, +)
        return solution
    }
    
    public func printDescription() {
        print(description)
    }
}

