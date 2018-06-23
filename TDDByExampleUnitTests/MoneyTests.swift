//
//  MoneyTests.swift
//  TDDByExampleUnitTests
//
//  Created by Milo on 2018/6/23.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import XCTest

class MoneyTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSimplyAddition() {
        let five = Money.dollar(5)
        let sum = five.plus(five)
        let bank = Bank()
        let reduced = bank.reduce(sum, "USD")
        XCTAssertTrue(Money.dollar(10).equals(reduced))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}