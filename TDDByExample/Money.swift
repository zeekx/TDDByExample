//
//  Money.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/22.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation

protocol Expression {
    func reduce(_ bank: Bank, _ to: String) -> Money
    func plus(_ addend: Expression) -> Expression
    func times(_ multiplier: Int) -> Expression
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
    
    var description: String {
        return "\(class_getName)->\(currency):\(amount)"
    }
    
}

extension Money: Expression {
    func reduce(_ bank: Bank, _ to: String) -> Money {
        guard let rate = bank.rate(currency(), to) else {
            fatalError("Rate is optional!")
        }
        return Money(amount / rate, to)
    }
    
    func plus(_ addend: Expression) -> Expression {
        return Sum(self, addend)
    }
    
    func times(_ multiplier: Int) -> Expression {
        return Money(amount * multiplier, _currency)
    }

}

extension Money: Equatable {
    static func == (_ lhs: Money, _ rhs: Money) -> Bool {
        return lhs.currency() == rhs.currency() && lhs.amount == rhs.amount
    }
}
