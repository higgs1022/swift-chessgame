//
//  Rook.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

final class Rook: Piece {
    var color: PieceColor
    
    var shape: String {
        color == .white ? "♖" : "♜"
    }
    
    var position: Position
    
    init(color: PieceColor, position: Position) {
        self.color = color
        self.position = position
    }
    
    func expectedMovePoints() -> [Position] {
        //생성 위치는 흑색은 A-1 과 H-1 에만 가능하고, 백색은 A-8 과 H-8 에만 가능하다.
        //모든 색상이 놓여진 칸을 기준으로 좌-우 또는 위-아래 방향으로 움직일 수 있다.
        var result: [Position] = []
        
        for i in 1...7 {
            if let newPosition = Position(x: position.x + i, y: position.y) {
                result.append(newPosition)
            }
            if let newPosition = Position(x: position.x - i, y: position.y) {
                result.append(newPosition)
            }
            if let newPosition = Position(x: position.x, y: position.y + i) {
                result.append(newPosition)
            }
            if let newPosition = Position(x: position.x, y: position.y - i) {
                result.append(newPosition)
            }
        }
        
        return result
    }
}
