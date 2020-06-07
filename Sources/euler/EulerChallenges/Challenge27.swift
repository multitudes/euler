//
//  File.swift
//  
//
//  Created by Laurent B on 31/05/2020.
//

import Foundation


public class Challenge27 {
    
    var description: String = ""
    //var max = Int(Int32.max)
    var max = 1_000_000
    var sieve: [Bool]
    
    public init() {
        self.description = descriptionForChallenge27
        self.sieve = [Bool](repeating: true, count: max)
        createPrimesArray()
    }
    
    
    func createPrimesArray() {
        for i in 2..<self.max {
            if sieve[i] == true {
                for multiple in stride(from: i * i, to: max, by: i) {
                    sieve[multiple] = false
                }
            }
        }
    }
    
    func isPrime(_ number: Int) -> Bool {
        guard number > 1 else { return false}
        return sieve[number]
    }
    
    
    func quadraticPrimes(for range: Int) -> Int {
        let myRange: Int = range
        let aRange: ClosedRange = -myRange...myRange
        let bRange: Range = -myRange..<myRange
        // optimisation - b has to be a prime so I iterate over a smaller array of primes
        // because at n = 0 -> b = b
        let bRangeArray = bRange.filter { isPrime(abs( $0 )) }
        
        var (aMax, bMax, nMax) = (0,0,0)
         
        for a in aRange {
            for b in bRangeArray {
                // another small optimisation - when n = 1 then `1 + a + b` so if b is 2 a has to be even because primes are uneven if not 2
                if b == 2 && a % 2 != 0 { continue }
                // if n = 1 -> (1 + a + b)  if b is a prime is uneven and a has to be uneven
                if b != 2 && a % 2 == 0 { continue }
                var n = 0
                while (isPrime(abs(n * n + a * n + b))) {
                    n += 1
                }
                if (n > nMax) {
                    aMax = a;
                    bMax = b;
                    nMax = n;
                }
            }
        }
        return aMax * bMax
    }
    
    
    public func printDescription() {
        print(description)
    }
}

