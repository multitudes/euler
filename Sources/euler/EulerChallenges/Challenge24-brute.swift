//
//  File.swift
//  
//
//  Created by Laurent B on 31/05/2020.
//

import Foundation


public class Challenge24brute {
    
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
    
    func lexicographicPermutations(at nthItem: Int) -> String {
        let stringToPermute = "0123456789"
        //let stringToPermute = "012"
        let permutations = getPermutations(for: stringToPermute).sorted()
        //print(permutations)
        return permutations[nthItem]
    }
    
    public func printDescription() {
        print(description)
    }
}

