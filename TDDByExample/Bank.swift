//
//  Bank.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/23.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation

class Bank {
    func reduce(_ source: Expression, _ to: String) -> Money {
        if let money = source as? Money {
            return money
        }
        guard let sum = source as? Sum else {
            assertionFailure("\(#function) receive source as Expression type")
            return Money(-1, "xxx")
        }
        return sum.reduce(to)
    }
}
