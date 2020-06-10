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
        var terms: Set<Double> = []
        for i in 2...number {
            for j in 2...number {
                terms.insert(pow(Double(i), Double(j)))
            }
            print(terms)
        }
        return terms.count
    }
    
    public func printDescription() {
        print(description)
    }
}

