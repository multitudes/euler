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
        for (index, line) in triangle.reversed().enumerated() {
            print(index, line)
        }
        return 1
    }
        
        //          for (let i = t.length - 2; i >= 0; i--)
        //            for (let j = 0; j <= i; j++)
        //              t[i][j]+= Math.max(t[i + 1][j], t[i + 1][j + 1]);
        //          return triangle[0][0];
        //        }
        //        solution(triangle);
        
    public func printDescription() {
            print(descriptionForChallenge18)
    }
}

