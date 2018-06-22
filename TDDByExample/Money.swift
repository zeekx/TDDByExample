//
//  Money.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/22.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation
class Money {
    internal var amount = Int(0)
    
    func equals(_ dollar: Money) -> Bool {
        return amount == dollar.amount
    }
}
