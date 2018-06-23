//
//  Money.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/22.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation

protocol Expression {
    
}

class Money {
    internal var amount = Int(0)
    internal var _currency: String!
    
    internal init() {  //抽象类
    }
    
    init(_ amount: Int, _ currency: String) {
        _currency = currency
        self.amount = amount
    }
    
    static func dollar(_ amount: Int) -> Money {
        return Dollar(amount, "USD")
    }
    
    static func franc(_ amount: Int) -> Money {
        return Franc(amount, "CHF")
    }
    
    func currency() -> String {
        return _currency
    }
    
    func times(_ multiplier: Int) -> Money {
        return Money(amount * multiplier, _currency)
    }

    func isEqual(_ object: Any?) -> Bool {
        guard let money = object as? Money else { return false }
        return self.currency() == money.currency() && amount == money.amount
    }
    
    func equals(_ dollar: Money) -> Bool {
        return self.isEqual( dollar)
    }
    
    func plus(_ addend: Money) -> Expression {
        return Sum(self, addend)
    }
    
    var description: String {
        return "\(class_getName)->\(currency):\(amount)"
    }
    
    func reduce(_ to: String) -> Money {
        return self
    }
    
}

extension Money: Expression {
    
}

extension Money: Equatable {
    static func == (_ lhs: Money, _ rhs: Money) -> Bool {
        return  lhs.isEqual(rhs)
    }
}
