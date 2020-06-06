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
                challenge.execute()
        }
    }
    
    
    enum EulerChallenge: Int {
        case challenge1 = 1,
        challenge2, challenge3, challenge4, challenge5, challenge6, challenge7, challenge8, challenge9, challenge10, challenge11, challenge12, challenge13, challenge14, challenge15,challenge16, challenge17, challenge18, challenge19, challenge20, challenge21, challenge22, challenge23, challenge24, challenge25
        
        func execute() {
            switch self {
                case .challenge1:
                    break
                case .challenge2:
                    break
                case .challenge3:
                    break
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
                case .challenge18:
                    if solution == true {
                        //return Challenge18().maximumPathSum(triangle: testTriangle)
                        let challengeSolution: Int = Challenge18().maximumPathSum(triangle: numTriangle)
                        print("Solution: \(challengeSolution)")
                    } else {
                        print(descriptionForChallenge18)
                    }
                case .challenge19:
                    if solution == true {
                        let challengeSolution: Int = Challenge19().countingSundays(firstYear: firstYear, lastYear: lastYear)
                        print("Solution: \(challengeSolution)")
                    } else {
                        print(descriptionForChallenge19)
                }
                case .challenge20:
                    if solution == true {
                            let challengeSolution: Int = Challenge20().sumFactorialDigits(number: inputChallenge20)
                            print("Solution: \(challengeSolution)")
                        } else {
                            print(descriptionForChallenge20)
                    }
                case .challenge21:
                if solution == true {
                        let challengeSolution: Int = Challenge21().sumAmicableNum(number: inputChallenge21)
                        print("Solution: \(challengeSolution)")
                    } else {
                        print(descriptionForChallenge21)
                }
                case .challenge22:
                    if solution == true {
                            let challengeSolution: Int = Challenge22().namesScores(array: inputChallenge22)
                            print("Solution: \(challengeSolution)")
                        } else {
                            print(descriptionForChallenge22)
                    }
                case .challenge23:
                    if solution == true {
                            let challengeSolution: Int = Challenge23().sumOfNonAbundantNumbers(number: inputChallenge23)
                            print("Solution: \(challengeSolution)")
                        } else {
                            print(descriptionForChallenge23)
                    }
                case .challenge24:
                    if solution == true {
                            let challengeSolution: String = Challenge24().lexicographicPermutations(at: inputChallenge24)
                            print("Solution: \(challengeSolution)")
                        } else {
                            print(descriptionForChallenge24)
                    }
                case .challenge25:
                if solution == true {
                    let challengeSolution: Int = Challenge25().digitFibonacci(for: inputChallenge25)
                        print("Solution: \(challengeSolution)")
                    } else {
                        print(descriptionForChallenge25)
                }
            }
        }
    }
}


