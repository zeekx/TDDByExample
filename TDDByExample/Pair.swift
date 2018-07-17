//
//  Pair.swift
//  TDDByExample
//
//  Created by Milo on 2018/7/17.
//  Copyright © 2018年 Zeekx. All rights reserved.
//

import Foundation

class Pair {
    fileprivate var from: String!
    fileprivate var to: String!
    
    init(_ from: String, _ to: String) {
        self.from = from
        self.to = to
    }
}

extension Pair: Hashable {
    var hashValue: Int {
        return 0
    }
}

extension Pair: Equatable {
    static func == (lhs: Pair, rhs: Pair) -> Bool {
        return lhs.from == rhs.from && lhs.to == rhs.to
    }
}
