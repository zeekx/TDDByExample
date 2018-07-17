//
//  BankTests.swift
//  TDDByExampleUnitTests
//
//  Created by Milo on 2018/7/17.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import XCTest

class BankTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testIdentiferRate() {
        XCTAssertEqual(Bank().rate("USD", "USD")!, 1)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
