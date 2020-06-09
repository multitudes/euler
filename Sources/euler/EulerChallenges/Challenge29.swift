//
//  File.swift
//  
//
//  Created by Laurent B on 31/05/2020.
//

import Foundation


public class Challenge29 {
    
    var description: String = ""
    
    public init() {
        self.description = descriptionForChallenge29
    }
    

    func distinctPowers(number: Int) -> Int {
        var interval = 2
        var sum = 1
        var i = 1
        while i < number * number {
           // print(i)
            for _ in 0..<4 {
                i += interval
                sum += i
         //       print("sum", sum)
            }
            interval += 2
        }
        return sum
    }
    
    public func printDescription() {
        print(description)
    }
}

