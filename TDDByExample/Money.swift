//
//  Money.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/22.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation

class Money: NSObject {
    internal var amount = Int(0)
    internal var _currency: String!
    
    internal override init() {  //抽象类
        super.init()
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
        fatalError("Subclass should implement")
    }

    override func isEqual(_ object: Any?) -> Bool {
        guard let money = object as? Money else { return false }
        return self.className == money.className && amount == money.amount
    }
    
    func equals(_ dollar: Money) -> Bool {
        return self.isEqual(to: dollar)
    }
    
}

extension Money {
    static func == (_ lhs: Money, _ rhs: Money) -> Bool {
        return  lhs.isEqual(rhs)
    }
}
