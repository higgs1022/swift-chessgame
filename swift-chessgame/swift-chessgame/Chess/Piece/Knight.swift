//
//  Knight.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

class Knight: Piece {
    var color: PieceColor
    
    var shape: String {
        color == .white ? "♘" : "♞"
    }
    
    var position: Position
    
    init(color: PieceColor, position: Position) {
        self.color = color
        self.position = position
    }
}
