//
//  Biship.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

final class Biship: Piece {
    var color: PieceColor
    
    var shape: String {
        color == .white ? "♗" : "♝"
    }
    
    var position: Position
    
    init(color: PieceColor, position: Position) {
        self.color = color
        self.position = position
    }
    
    func expectedMovePoints() -> [Position] {
        //생성 위치는 흑색은 C-1 과 F-1 에만 가능하고, 백색은 C-8 과 F-8 에만 가능하다.
        //모든 색상이 놓여진 칸을 기준으로 대각선으로만 움직일 수 있다.
        var result: [Position] = []
        
        for i in 1...7 {
            if let newPosition = Position(x: position.x - i, y: position.y - i) {
                result.append(newPosition)
            }
            if let newPosition = Position(x: position.x + i, y: position.y - i) {
                result.append(newPosition)
            }
            if let newPosition = Position(x: position.x - i, y: position.y + i) {
                result.append(newPosition)
            }
            if let newPosition = Position(x: position.x + i, y: position.y + i) {
                result.append(newPosition)
            }
        }
        
        return result
    }
}
