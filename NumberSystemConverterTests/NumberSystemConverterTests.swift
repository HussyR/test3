//
//  NumberSystemConverterTests.swift
//  NumberSystemConverterTests
//
//  Created by Данил on 14.10.2022.
//

import XCTest
@testable import NumberSystemConverter

class NumberSystemConverterTests: XCTestCase {

    let converter = ConverterService()
    
    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        
    }

    func testEqualNumbers() {
        
        // given
        
        let startValue = "10101011"
        let fromBase = 2
        let toBase = 2
        
        // when
        
        let result = converter.convert(from: startValue,
                                       fromSystem: fromBase,
                                       toSystem: toBase)
        
        // then
        
        XCTAssertEqual(result, "10101011")
    }

    func testConvertFrom2to10() {
        
        // given
        
        let startValue = "10101011"
        let fromBase = 2
        let toBase = 10
        
        // when
        
        let result = converter.convert(from: startValue,
                                       fromSystem: fromBase,
                                       toSystem: toBase)
        
        // then
        
        XCTAssertEqual(result, "171")
        
    }
    
    func testConvertFrom10to14() {
        
        // given
        
        let startValue = "1323"
        let fromBase = 10
        let toBase = 14
        
        // when
        
        let result = converter.convert(from: startValue,
                                       fromSystem: fromBase,
                                       toSystem: toBase)
        
        // then
        
        XCTAssertEqual(result, "171")
        
    }
    
    func testConvertFrom8to15() {
        
        // given
        
        let startValue = "2733"
        let fromBase = 8
        let toBase = 15
        
        // when
        
        let result = converter.convert(from: startValue,
                                       fromSystem: fromBase,
                                       toSystem: toBase)
        
        // then
        
        XCTAssertEqual(result, "69E")
        
    }

}
