//
//  FrancTests.swift
//  TDDByExampleUnitTests
//
//  Created by Milo on 2018/6/22.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import XCTest

class FrancTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testFrancMultiplication() {
        let five = Money.franc(5)
        XCTAssertEqual(Money.franc(10), five.times(2) as! Money)
        XCTAssertEqual(Money.franc(15), five.times(3) as! Money)
        XCTAssertNotEqual(Money.franc(20), five.times(3) as! Money)
    }

    func testEquality() {
        XCTAssertTrue(Money.franc(5) == Money.franc(5))
        XCTAssertFalse(Money.franc(5) == Money.franc(6))
    }
    
    func testCurrency() {
        XCTAssertEqual("CHF", Money.franc(0).currency())
    }

}
