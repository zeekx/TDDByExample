//
//  Money.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/22.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation

protocol Expression {
    func reduce(_ to: String) -> Money
}

class Money {
    internal var amount = Int(0)
    private var _currency: String!
    
    private init() {
    }
    
    init(_ amount: Int, _ currency: String) {
        _currency = currency
        self.amount = amount
    }
    
    static func dollar(_ amount: Int) -> Money {
        return Money(amount, "USD")
    }
    
    static func franc(_ amount: Int) -> Money {
        return Money(amount, "CHF")
    }
    
    func currency() -> String {
        return _currency
    }
    
    func times(_ multiplier: Int) -> Money {
        return Money(amount * multiplier, _currency)
    }
    
    func plus(_ addend: Money) -> Expression {
        return Sum(self, addend)
    }
    
    var description: String {
        return "\(class_getName)->\(currency):\(amount)"
    }
    
    
}

extension Money: Expression {
    func reduce(_ to: String) -> Money {
        let rate = _currency == "CHF" && to == "USD" ? 2 : 1
        assert(rate != 0, "Can't 0")
        return Money(amount / rate, to)
    }
}

extension Money: Equatable {
    static func == (_ lhs: Money, _ rhs: Money) -> Bool {
        return lhs.currency() == rhs.currency() && lhs.amount == rhs.amount
    }
}
