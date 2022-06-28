//
//  Position.swift
//  swift-chessgame
//
//  Created by main on 2022/06/20.
//

import Foundation

final class Position: Equatable {
    static let MIN = 1
    static let MAX = 8
    static let Range = MIN...MAX
    
    private(set) var x: Int
    private(set) var y: Int
    
    private func checkBound(_ point: Int) -> Bool {
        guard point >= Position.MIN else {
            return false
        }
        
        guard point <= Position.MAX else {
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
    
    static func == (lhs: Position, rhs: Position) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
}
