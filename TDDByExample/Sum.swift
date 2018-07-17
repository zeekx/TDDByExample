//
//  Sum.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/23.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation

class Sum {
    var augend: Money!
    var addend: Money!
    private init() {
        
    }
    
    init(_ augend: Money, _ addend: Money) {
        self.augend = augend
        self.addend = addend
    }
    
}

extension Sum: Expression {
    func reduce(_ bank: Bank, _ to: String) -> Money {
        return Money(augend.amount + addend.amount, to)
    }
}
