//
//  File.swift
//  
//
//  Created by Laurent B on 31/05/2020.
//

import Foundation


public class Challenge25 {
    
    var description: String = ""
    
    public init() {
        self.description = descriptionForChallenge23
    }
   
    func digitFibonacci(for digits: Int) -> Int {
        // the fibonacci sequence mathematically is a asymptotic function - The formula below (see the screen shot in images)
        // is tested and works well. tested from 5 digits
        if digits >= 5 {
            let phi = 1.61803399 // golden ratio
            print(log(10.0)) //. in swift log(10) is the natural logarithm
            print(pow(2.71828, 2.302585092994046))
            // here digits - 1 is because again 1000 has 4 digits so is 10^3
            let number = (log(10.0) * Double(digits - 1) + log(5.0) / 2 ) / log(phi)
            return Int(ceil(number))
            }
        // this was the brute force method. Works till 19 digits
        // Ex if the digits are three I divide by 100 to check if more than three digits
        // 100 is 10 ^ 2
        let digitCheck: Int = Int(pow(10.0, Double(digits-1)))
        //print(digitCheck)
        var counter = 2 // start with 2
        var fib = 1
        var lastFib = 1
        while fib / digitCheck < 1 {
            counter += 1
            let temp = fib
            fib += lastFib
            lastFib = temp
            print(fib)
        }
        
        return counter
    }


    
    public func printDescription() {
        print(description)
    }
}

