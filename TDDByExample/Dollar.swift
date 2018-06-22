//
//  Dollar.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/22.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation
class Dollar: Money {
    
    init(_ amount: Int) {
        super.init()
        self.amount = amount
    }
    
    func times(_ multiplier: Int) -> Dollar {
        return Dollar(amount * multiplier)
    }
    
 
    
}

extension Dollar: Equatable {
    static func == (_ lhs: Dollar, _ rhs: Dollar) -> Bool {
        return lhs.amount == rhs.amount
    }
}
