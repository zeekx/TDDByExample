//
//  Bank.swift
//  TDDByExample
//
//  Created by Milo on 2018/6/23.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation

class Bank {
    private var rates: [Pair:Int] = [:]
    func reduce(_ source: Expression, _ to: String) -> Money {
        return source.reduce(self, to)
    }
    
    func addRate(_ from: String, _ to: String, _ rate: Int) {
        rates[Pair(from, to)] = rate
    }
    
    func rate(_ from: String, _ to: String) -> Int? {
        if from == to {
            return 1
        }
        return rates[Pair(from, to)]
    }
}
