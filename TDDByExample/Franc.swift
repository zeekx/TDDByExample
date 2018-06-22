//
//  Franc.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/22.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation
class Franc: Money {
    init(_ amount: Int, _ currency: String) {
        super.init()
        _currency = currency
        self.amount = amount
    }
    
    override func times(_ multiplier: Int) -> Money {
        return Money.franc(amount * multiplier)
    }

}
