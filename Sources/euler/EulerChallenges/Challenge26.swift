//
//  File.swift
//  
//
//  Created by Laurent B on 31/05/2020.
//

import Foundation


public class Challenge26 {
    
    var description: String = ""
    
    public init() {
        self.description = descriptionForChallenge23
    }
    
    func reciprocalCycles(for n: Int) -> Int {
        var number = n
        var length = 0
        var arrayDigits = Array<Int>()
        var numerator = 1
        while number > 0 {
            numerator = 1
            arrayDigits = []
            number -= 1
            //print(number)
            if length >= number {
                //print("break ", length)
                return length
            }
            while true {
                let remainder = numerator % number
                //            print("numerator / number, remainder ", numerator, number, remainder)
                if let index = arrayDigits.firstIndex(of: remainder) {
                    if arrayDigits.count - index > length {
                        length = (arrayDigits.count - index) + 1 //because I dont get to update the array the last time
         //               print("length now ",length)
                    }
                    break
                } else {
                    numerator = remainder * 10
                    arrayDigits.append(remainder)
                }
            }
        }
        return -1
    }
    
    public func printDescription() {
        print(description)
    }
}

