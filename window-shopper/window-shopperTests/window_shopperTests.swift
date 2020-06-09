//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Ziad Ahmed Said Ahmed on 6/9/20.
//  Copyright © 2020 Ziad Ahmed Said Ahmed. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetHours() {
        
        XCTAssert(Wage.getHours(userWage: 25, itemPrice: 100) == 4)
        XCTAssert(Wage.getHours(userWage: 15.50, itemPrice: 250.53) == 17)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
