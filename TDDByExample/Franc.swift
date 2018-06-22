//
//  Franc.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/22.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation
class Franc: Money {
    init(_ amount: Int) {
        super.init()
        _currency = "CHF"
        self.amount = amount
    }
    
    func times(_ multiplier: Int) -> Franc {
        return Franc(amount * multiplier)
    }

}
