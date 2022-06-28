//
//  Position.swift
//  swift-chessgame
//
//  Created by main on 2022/06/20.
//

import Foundation

final class Position {
    private var x: Int
    private var y: Int
    
    private func checkBound(_ point: Int) -> Bool {
        guard point >= 0 else {
            return false
        }
        
        guard point < 8 else {
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
