//
//  File.swift
//  
//
//  Created by Laurent B on 31/05/2020.
//

import Foundation


public class Challenge24 {
    
    var description: String = ""
    
    public init() {
        self.description = descriptionForChallenge23
    }
    
    
    func getPermutations(for characters: String) -> [String] {
        
        let permutations = [String]()
        if characters.count == 0 {
            return []
        }
        
        return []
    }
    
    func lexicographicPermutations(number: Int) -> Int {
        return -1
    }
    
    public func printDescription() {
        print(description)
    }
}

