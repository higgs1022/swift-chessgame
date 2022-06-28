//
//  GameState.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

enum State {
    case idle
    case selected
}

final class GameState {
    private(set) var currentColor: PieceColor = .white
    private(set) var turn: Int = 0
    private(set) var selecedPiece: Piece?
    var state: State {
        if selecedPiece == nil {
            return .idle
        } else {
            return .selected
        }
    }
    
    init() {
        self.resetGame()
    }
    
    func resetGame() {
        currentColor = .white
        turn = 0
        selecedPiece = nil
    }
    
    func select(_ piece: Piece) -> Bool {
        guard piece.color == currentColor else { return false }
        
        self.selecedPiece = piece
        return true
    }
    
    func deselect() {
        self.selecedPiece = nil
    }
}
