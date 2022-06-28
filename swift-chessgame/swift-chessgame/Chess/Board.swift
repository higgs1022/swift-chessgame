//
//  Board.swift
//  swift-chessgame
//
//  Created by main on 2022/06/20.
//

import Foundation
import UIKit

final class Board {
    var gameMap = GameMap()
    var gameState = GameState()
    
    func select(position: Position) -> Bool {
        guard let selectedPiece = gameMap.gameMap[position.y-1][position.x-1] as? Piece else { return false }
        guard gameState.currentColor == selectedPiece.color else { return false }
        return gameState.select(selectedPiece)
    }
    
    func move(from: Position, to: Position) {
        guard let selectedPiece = from as? Piece,
              selectedPiece.color == gameState.currentColor else { return }
        guard gameMap.canMove(from: from, to: to) else { return }
        gameMap.calculateTurn(from: from, to: to)
    }
}
