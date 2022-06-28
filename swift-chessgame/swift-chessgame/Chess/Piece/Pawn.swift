//
//  Pawn.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

class Pawn: Piece {
    var color: PieceColor
    
    var shape: String {
        color == .white ? "♙" : "♟"
    }
    
    var position: Position
    
    init(pieceColor: PieceColor, position: Position) {
        self.color = .white
        self.position = position
    }
}
