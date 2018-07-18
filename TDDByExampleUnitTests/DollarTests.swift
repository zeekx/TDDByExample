//
//  DollarTests.swift
//  TDDByExampleUnitTests
//
//  Created by Milo on 2018/6/22.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import XCTest

class DollarTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testMultiplication() {
        let five = Money.dollar(5)
        XCTAssertEqual(Money.dollar(10), five.times(2) as! Money)
        XCTAssertEqual(Money.dollar(15), five.times(3) as! Money)
        XCTAssertNotEqual(Money.dollar(20), five.times(3) as! Money)
    }

    func testEquality() {
        XCTAssertTrue(Money.dollar(5) == Money.dollar(5))
        XCTAssertTrue(Money.dollar(5) == Money.dollar(5))
        XCTAssertFalse(Money.dollar(5) == Money.dollar(6))
        XCTAssertFalse(Money.dollar(5) == Money.franc(6))
    }
    
    func testCurrency() {
        XCTAssertEqual("USD", Money.dollar(0).currency())
    }
    
    func testDifferentClassEqaulity() {
        XCTAssertTrue(Money(10, "USD") == Money.dollar(10))
    }
}
