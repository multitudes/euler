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
    private func multiply(productArray: [Int], number: Int) -> [Int] {
        //print("inputs",productArray, number)
        var product = 1
        var carryOn: Int = 0

        // in swift arrays are value types
        var tempArray = productArray
        
        for i in 0..<productArray.count {
            product = carryOn + productArray[i] * number
            tempArray[i] = product % 10
            carryOn = product / 10
            //print(tempArray, carryOn)
        }
        while carryOn != 0 {
            tempArray.append(carryOn % 10)
            carryOn /= 10
        }
        return tempArray
    }
    
    public func sumFactorialDigits(number: Int) -> Int {
        // the factorial of 1 is 1 and 2 is 2
        if number == 1 || number == 2 { return number }
        // my array of digits starting with the least significant
        var result: [Int] = [1]
        // I will call the func multiply on my result incrementing number and updating result
        for i in 2...number {
            result = multiply(productArray: result, number: i)
        }
        // after iterating and getting the array with all factorial digits I reduce and get the sum
        let solution = result.reduce(0, +)
        return solution
    }
    
    public func printDescription() {
        print(description)
    }
}

