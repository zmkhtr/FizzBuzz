//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Azam Mukhtar on 02/02/23.
//

import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {
    
    func test_print_numbers() {
        expect(number: 1, toPrint: "1")
        expect(number: 2, toPrint: "2")
        expect(number: 13, toPrint: "13")
        expect(number: 23, toPrint: "23")
        expect(number: 4, toPrint: "4")
    }
    
    func test_print_fizzWhenNumberIsMultipleOfThree() {
        expect(number: 3, toPrint: "Fizz")
        expect(number: 6, toPrint: "Fizz")
        expect(number: 9, toPrint: "Fizz")
        expect(number: 12, toPrint: "Fizz")
    }
    
    func test_print_buzzWhenNumberIsMultipleOfFive() {
        expect(number: 5, toPrint: "Buzz")
        expect(number: 25, toPrint: "Buzz")
        expect(number: 10, toPrint: "Buzz")
        expect(number: 20, toPrint: "Buzz")
    }
    
    func test_print_fizzBuzzWhenNumberIsMultipleOfFifteen() {
        expect(number: 15, toPrint: "FizzBuzz")
        expect(number: 30, toPrint: "FizzBuzz")
        expect(number: 45, toPrint: "FizzBuzz")
        expect(number: 60, toPrint: "FizzBuzz")
    }
    
    // MARK: Helpers
    
    private func expect(number: Int, toPrint result: String, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(FizzBuzzParser.parse(number), result, file: file, line: line)
    }
}
