//
//  File.swift
//  
//
//  Created by Laurent B on 23/05/2020.
//

import Foundation

public class Challenge {
    
    static var solution: Bool!
    let number: Int!
    
    init(with solution: Bool, number: Int) {
        Self.solution = solution
        self.number = number
    }
    
    public func runChallenge() {
        
        if let challenge = EulerChallenge(rawValue: number) {
            let challengeSolution: Int = challenge.execute()
            print("Solution: \(challengeSolution)")
        }
    }
    
    
    enum EulerChallenge: Int {
        case challenge1 = 1,
        challenge2, challenge3, challenge4, challenge5, challenge6, challenge7, challenge8, challenge9, challenge10, challenge11, challenge12, challenge13, challenge14, challenge15,challenge16, challenge17,challenge18
        
        func execute() -> Int {
            switch self {
                case .challenge1:
                    break
                case .challenge2:
                    break
                case .challenge3:
                    break
                case .challenge18:
                    if solution == true {
                        //return Challenge18().maximumPathSum(triangle: testTriangle)
                        return Challenge18().maximumPathSum(triangle: numTriangle)
                    } else {
                        print("descriptionForChallenge18 \(descriptionForChallenge18)")
                }
                
                
                case .challenge4:
                    break
                case .challenge5:
                    break
                
                case .challenge6:
                    break
                case .challenge7:
                    break
                case .challenge8:
                    break
                case .challenge9:
                    break
                case .challenge10:
                    break
                case .challenge11:
                    break
                case .challenge12:
                    break
                case .challenge13:
                    break
                case .challenge14:
                    break
                case .challenge15:
                    break
                case .challenge16:
                    break
                case .challenge17:
                    break
            }
            return 0
        }
    }
}


