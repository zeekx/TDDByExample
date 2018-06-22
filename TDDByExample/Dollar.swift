//
//  Dollar.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/22.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation
class Dollar: Money {
    
    override func times(_ multiplier: Int) -> Money {
        return Money(amount * multiplier, _currency)
    }
}
