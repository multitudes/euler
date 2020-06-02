//
//  File.swift
//  
//
//  Created by Laurent B on 31/05/2020.
//

import Foundation


public class Challenge23 {
    
    var description: String = ""
    let defaults = UserDefaults.standard
    var cacheDict: [Int: Bool]
//    var cacheDict: [Int: Bool]? {
//        get {
//            if let data = UserDefaults.standard.object(forKey: "SavedDict") as? Data {
//                do {
//                    return try JSONDecoder().decode([Int: Bool].self, from: data)
//                } catch {
//                    print("Error while decoding user data")
//                }
//            }
//            return nil
//        }
//        set {
//            if let newValue = newValue {
//                do {
//                    let data = try JSONEncoder().encode(newValue)
//                    UserDefaults.standard.set(data, forKey: "SavedDict")
//                } catch {
//                    print("Error while encoding user data")
//                }
//            } else {
//               // UserDefaults.standard.removeObject(forKey: "SavedDict")
//            }
//        }
//    }
    
    public init() {
        self.description = descriptionForChallenge23
        self.cacheDict = [Int: Bool]()
//        print(cacheDict ?? [1:false])
    }
    
    private func getDivisorSum(number: Int) -> Int {
        // the first amicable number is 6
        if number == 1 { return 0}
        if number == 2 { return 1}
        if number == 3 { return 1}
        
        let sqrtn: Int = Int(Double(number).squareRoot())
        
        var sumOfDivisors: Int = 1
        for i in 2...sqrtn  {
            if number % i == 0  {
                //print("divisor 1, ", i, (i * i == number ? 0 : number / i))
                sumOfDivisors += i + (i * i == number ? 0 : number / i)
            }
        }
        return sumOfDivisors
    }
    
    
    
    
    private func isAbundant(_ number: Int) -> Bool {
        if number < 12 { return false }
        if let cached = cacheDict[number] {
            return cached
        }
        let sqrtn: Int = Int(Double(number).squareRoot())
        var sumOfDivisors: Int = 1
        for i in 2...sqrtn  {
            if number % i == 0  {
                //print("divisor 1, ", i, (i * i == number ? 0 : number / i))
                sumOfDivisors += i + (i * i == number ? 0 : number / i)
            }
        }
        //print(cacheDict)
        cacheDict[number] = sumOfDivisors > number
        return sumOfDivisors > number
    }
    
    private func isSumOfNonAbundantNumbers(number: Int) -> Bool {
        
        for i in 0...number {
            if isAbundant(i) && isAbundant(number - i) {
                return true
            }
        }
        return false
    }
    
    public func sumOfNonAbundantNumbers(number: Int) -> Int {
        var sum = 0
        //if number < 25 { return 0 }
        for i in 1...number {
            if !isSumOfNonAbundantNumbers(number: i) {
                sum += i
            }
        }
        
        return sum
    }
    
    
    public func printDescription() {
        print(description)
    }
}

