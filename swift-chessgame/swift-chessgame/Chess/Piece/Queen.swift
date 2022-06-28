//
//  Queen.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

final class Queen: Piece {
    var color: PieceColor
    
    var shape: String {
        color == .white ? "♕" : "♛"
    }
    
    var position: Position
    
    init(color: PieceColor, position: Position) {
        self.color = color
        self.position = position
    }
    
    func expectedMovePoints() -> [Position] {
        //생성 위치는 흑색은 E-1에만 가능하고, 백색은 E-8 에만 가능하다.
        //모든 색상이 놓여진 칸을 기준으로 대각선이 좌-우, 위-아래 방향으로 움직일 수 있다.
        
        var result: [Position] = []
        
        //12시 방향부터 시계방향 순서대로 8방향
        if let newPosition = Position(x: position.x , y: position.y - 1) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x + 1 , y: position.y - 1) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x + 1, y: position.y) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x + 1, y: position.y + 1) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x , y: position.y + 1) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x - 1, y: position.y + 1) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x - 1 , y: position.y) {
            result.append(newPosition)
        }
        if let newPosition = Position(x: position.x - 1, y: position.y - 1) {
            result.append(newPosition)
        }
        
        return result
    }
}
