//
//  SumTests.swift
//  TDDByExampleUnitTests
//
//  Created by Milo on 2018/7/18.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import XCTest

class SumTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testPlusMoney() {
        let fiveBucks = Money.dollar(5)
        let tenFrans = Money.franc(10)
        let bank = Bank()
        bank.addRate("CHF", "USD", 2)
        let sum = Sum(fiveBucks, tenFrans).plus(fiveBucks)
        XCTAssertEqual(Money.dollar(15), bank.reduce(sum, "USD"))
    }
    
    func testTimes() {
        let fiveBucks = Money.dollar(5)
        let tenFrans = Money.franc(10)
        let bank = Bank()
        bank.addRate("CHF", "USD", 2)
        let sum = Sum(fiveBucks, tenFrans).times(2)
        XCTAssertEqual(Money.dollar(20), bank.reduce(sum, "USD"))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
