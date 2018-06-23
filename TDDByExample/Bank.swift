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
        guard let sum = source as? Sum else {
            return Money(-1, "xxx")
        }
        return Money(sum.augend.amount + sum.addend.amount, to)
    }
}
