//
//  GameState.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

final class GameState {
    private var currentColor: PieceColor = .white
    private var turn: Int = 0
    private var selecedPiece: Piece?
    var isSelecting: Bool {
        return selecedPiece != nil
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
