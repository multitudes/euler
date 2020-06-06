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
    
    // I keep this for later - it was used in the brute force solution
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
    
    func lexicographicPermutations(at number: Int) -> String {
            if number > 3628800 { return "Index too big" }
            // swift complains if I want to update the parameter so need a copy
            var itemNumber = number
            // we precompute the factorials for easy access
            let factorials = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
            // I will calculate the permutations of these digits
            var inputdigits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
            //var inputdigits = [0, 1, 2]
            var permutations = [String]()
            
            itemNumber -= 1
            for i in stride(from: inputdigits.count - 1 , through: 0, by: -1) {
                let IndexDigitToPush: Int = itemNumber / factorials[i];
                itemNumber %= factorials[i]
                permutations.append(String(inputdigits[IndexDigitToPush]))
                if let index = inputdigits.firstIndex(of: inputdigits[IndexDigitToPush] ) {
                    inputdigits.remove(at: index)
                }
        }
            return permutations.joined()
    }


    
    public func printDescription() {
        print(description)
    }
}

