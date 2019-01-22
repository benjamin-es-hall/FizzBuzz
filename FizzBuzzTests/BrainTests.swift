//
//  BrainTests.swift
//  FizzBuzzTests
//
//  Created by beshbashbosh on 22/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }

    func testThreeIsMultipleOfThree() {
        // Given
        let sut = Brain()
        let multiple = 3
        let factor = 3
        // When
        let result = sut.isMultiple(multiple, of: factor)
        // Then
        XCTAssertTrue(result, "\(multiple) is not a multiple of \(factor)")
    }
    
    func testFiveIsNotMultipleOfThree() {
        // Given
        let sut = Brain()
        let multiple = 5
        let factor = 3
        // When
        let result = sut.isMultiple(multiple, of: factor)
        // Then
        XCTAssertFalse(result, "\(multiple) is not a multiple of \(factor)")
    }
    
    func test30IsMultipleOfFive() {
        let sut = Brain()
        let multiple = 30
        let factor = 3
        
        let result = sut.isMultiple(multiple, of: factor)
        
        XCTAssertTrue(result, "\(multiple) is a multiple of \(factor)")
    }
    
    func test1723IsNotMultipleOfFive() {
        let sut = Brain()
        let multiple = 1723
        let factor = 5
        
        let result = sut.isMultiple(multiple, of: factor)
        
        XCTAssertFalse(result, "\(multiple) is not a multiple of \(factor)")
    }

}
