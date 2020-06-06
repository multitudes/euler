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
    
    func getPermutations(for string: String) -> [String] {
        var permutations = [String]()
        if string.count == 0 {
            return permutations
        }
        let first = string.prefix(1)
        let remainder = string.suffix(string.count - 1)
        //print("first, remainder ",first, remainder)
        if remainder.count == 0 {
            permutations.append(String(first))
            return permutations
        }
        let words: [String] = getPermutations(for: String(remainder))
        
        for word in words {
            
            for j in 0...word.count {
                var wordCopy = word
                wordCopy.insert(contentsOf:first, at: word.index(word.startIndex, offsetBy: j))
                permutations.append(wordCopy)
            }
            
        }
        //print(permutations)
        return permutations
    }
    
    func lexicographicPermutations(number: Int) -> Int {
        return -1
    }
    
    public func printDescription() {
        print(description)
    }
}

