//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Azam Mukhtar on 02/02/23.
//

import Foundation

class FizzBuzzParser {
    private init() {}
    
    static func parse(_ number: Int) -> String {
        if number.isMultiple(of: 15) {
            return "FizzBuzz"
        } else if number.isMultiple(of: 5){
            return "Buzz"
        } else if number.isMultiple(of: 3) {
            return "Fizz"
        }
        return "\(number)"
    }
    
}
