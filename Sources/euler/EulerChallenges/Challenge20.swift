//
//  File.swift
//  
//
//  Created by Laurent B on 31/05/2020.
//

import Foundation

public class Challenge19 {
    
    var description: String = ""
    
    public init() {
        self.description = descriptionForChallenge19
    }
    
    enum Days: Int {
        case Sun = 0, Mon, Tue, Wed, Thu, Fri, Sat
    }
    
    
    public func countingSundays(firstYear: Int, lastYear: Int) -> Int {
        var count = 0
        let  startingDay = Days.Mon  // the 1 jan 1901 is a mon so it starts with 1
        var days = startingDay.rawValue + 1 // because the days in the months start with zero indexed! need to offset by one. I cannot say the 0 day of the month is a sunday!
        
        //print(days)
        // I see the days as enum with value sun = 0, mon, tue, wed, thu, fri sat..
        var months = [31, 0, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
        // feb is computed
        for year in stride(from: 1901, through: 2000, by: 1){
            let leap = (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
            months[1] = 28 + ( leap ? 1 : 0)
            //print(months[1])
            for month in months {
                //print("days \(days)")

                if firstYear...lastYear ~= year{
                    if days % 7 == Days.Sun.rawValue {
                        count += 1
                    }
                } // important, update after the block or ypou might miss one sunday if is the first day of the first month
                days += month % 7
            }
        }
        return count
    }
    
    public func printDescription() {
        print(description)
    }
}

