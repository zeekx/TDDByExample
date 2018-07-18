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
        XCTAssertTrue(Money.dollar(10) == reduced)
    }
    
    func testMixedAddition() {
        let fiveBucks: Expression = Money.dollar(5)
        let tenFrancs: Expression = Money.franc(10)
        let bank = Bank()
        bank.addRate("CHF", "USD", 2)
        let result = bank.reduce(fiveBucks.plus(tenFrancs), "USD")
        XCTAssertTrue(Money.dollar(10) == result)
    }
    
    func testPlusReturnsSum() {
        let five = Money.dollar(5)
        let result = five.plus(five)
        let sum = result as! Sum
        XCTAssertEqual(five, sum.augend as! Money)
        XCTAssertEqual(five, sum.addend as! Money)
    }
    

    
    func testReduceSum() {
        let sum = Sum(Money.dollar(3), Money.dollar(4))
        let bank = Bank()
        let result = bank.reduce(sum, "USD")
        XCTAssertEqual(Money.dollar(7), result)
    }
    
    func testReduceMoney() {
        let bank = Bank()
        let result = bank.reduce(Money.dollar(1), "USD")
        XCTAssertEqual(Money.dollar(1), result)
    }
    
    func testReduceMoneyDifferentCurrency() {
        let bank = Bank()
        bank.addRate("CHF", "USD", 2)
        let result = bank.reduce(Money.franc(2), "USD")
        XCTAssertEqual(Money.dollar(1), result)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
