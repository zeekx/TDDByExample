//
//  Sum.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/23.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation

class Sum {
    var augend: Expression!
    var addend: Expression!
    private init() {
        
    }
    
    init(_ augend: Expression, _ addend: Expression) {
        self.augend = augend
        self.addend = addend
    }
}

extension Sum: Expression {
    func plus(_ addend: Expression) -> Expression {
        fatalError("Empty!")
    }
    
    func reduce(_ bank: Bank, _ to: String) -> Money {
        let amount = augend.reduce(bank, to).amount + addend.reduce(bank, to).amount
        return Money(amount, to)
    }
}
