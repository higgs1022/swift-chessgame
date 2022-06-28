//
//  Pawn.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

final class Pawn: Piece {
    var color: PieceColor
    
    var shape: String {
        color == .white ? "♙" : "♟"
    }
    
    var position: Position
    
    init(color: PieceColor, position: Position) {
        self.color = color
        self.position = position
    }
    
    func expectedMovePoints() -> [Position] {
        //생성 위치는 흑색은 2-rank 또는 백색 7-rank에만 가능하다.
        //백색은 더 작은 rank로 움직일 수 있고, 흑색은 더 큰 rank로 움직일 수 있다.
        //체스 게임과 달리 처음에도 1칸만 움직일 수 있고, 다른 말을 잡을 때도 대각선이 아니라 직선으로 움직일 때 잡는다고 가정한다.
        var result: [Position] = []
        
        switch color {
        case .white:
            if let position = Position(x: position.x, y: position.y - 1) {
                result.append(position)
            }
        case .black:
            if let position = Position(x: position.x, y: position.y + 1) {
                result.append(position)
            }
        }
        
        return result
    }
}
