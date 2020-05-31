//
//  File.swift
//  
//
//  Created by Laurent B on 31/05/2020.
//

import Foundation

public class Challenge18 {
    
    var description: String!
    
    public init() {
        self.description = descriptionForChallenge18
    }
    
    public func maximumPathSum(triangle: [[Int]]) -> Int {
        var temp: [[Int]] = triangle
       
        for i in stride(from: temp.count-2, through: 0, by: -1) {
            //print(i)
            for j in (0...i) {
                //print(i, j)
                temp[i][j] += max(temp[i+1][j], temp[i+1][j+1])
            }
            
        }
        return temp[0][0]
    }
        
    public func printDescription() {
            print(descriptionForChallenge18)
    }
}

