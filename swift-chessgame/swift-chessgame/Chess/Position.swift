//
//  Position.swift
//  swift-chessgame
//
//  Created by main on 2022/06/20.
//

import Foundation

final class Position {
    private let MIN = 1
    private let MAX = 8
    
    private(set) var x: Int
    private(set) var y: Int
    
    private func checkBound(_ point: Int) -> Bool {
        guard point >= MIN else {
            return false
        }
        
        guard point <= MAX else {
            return false
        }
        
        return true
    }
    
    init?(x: Int, y: Int) {
        self.x = x
        self.y = y
        
        guard checkBound(x), checkBound(y) else {
            return nil
        }
    }
}
