//
//  Knight.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

final class Knight: Piece {
    var color: PieceColor
    
    var shape: String {
        color == .white ? "♘" : "♞"
    }
    
    var position: Position
    
    init(color: PieceColor, position: Position) {
        self.color = color
        self.position = position
    }
    
    func expectedMovePoints() -> [Position] {
        //생성 위치는 흑색은 B-1 과 G-1 에만 가능하고, 백색은 B-8 과 G-8 에만 가능하다.
        //모든 색상이 놓여진 칸을 기준으로 전진1칸+대각선1칸으로만 움직일 수 있다.
        //체스 게임과 달리 전진하는 칸이 막혀있으면 움직일 수 없다.
        var result: [Position] = []
        
        if let newPosition = Position(x: position.x + 1, y: position.y + 2) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x + 1, y: position.y - 2) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x + 2, y: position.y + 1) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x + 2, y: position.y - 1) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x - 1, y: position.y + 2) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x - 1, y: position.y - 2) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x - 2, y: position.y + 1) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x - 2, y: position.y - 1) {
            result.append(newPosition)
        }
        
        return result
    }
}
