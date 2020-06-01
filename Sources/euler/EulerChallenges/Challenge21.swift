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
        self.description = descriptionForChallenge21
    }
    
    // I will multiply the solution array with the digits with the number - number is incremented in
    // the other function sumFactorialDigits
    private func getDivisorSum(number: Int) -> Int {
        // the first amicable number is 6
        if number == 1 { return 0}
        if number == 2 { return 1}
        if number == 3 { return 1}
        
        let sqrtn: Int = Int(Double(number).squareRoot())
        
        var sumOfDivisors: Int = 1
        for i in 2...sqrtn  {
            if number % i == 0  {
                //print("divisor 1, ", i, (i * i == number ? 0 : number / i))
                sumOfDivisors += i + (i * i == number ? 0 : number / i)
            }
        }
        return sumOfDivisors
    }
    
    public func sumAmicableNum(number: Int) -> Int {
        //print(number)
        precondition(number > 0, "The number must be positive")
        
        var sumAmicableNumbers: Int = 0
        for a in 2...number {
            //print("trying ", a)
            let b = getDivisorSum(number: a)
            guard b > 1 else { continue }
            let isThisA = getDivisorSum(number: b)
            
            if a == isThisA && a != b {
                //print("amicables ", a, b)
                sumAmicableNumbers += a
            }
        }
        return sumAmicableNumbers
    }
    
    public func printDescription() {
        print(description)
    }
}

