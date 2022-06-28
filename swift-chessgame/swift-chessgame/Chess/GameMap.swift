//
//  GameMap.swift
//  swift-chessgame
//
//  Created by main on 2022/06/20.
//

import Foundation

final class GameMap {
    lazy var gameMap: [[Printable]] = resetMap()
    
    private func resetMap() -> [[Printable]] {
        let stringMap = [
            ["♜", "♞", "♝", ".", "♛", "♝", "♞", "♜"],
            ["♟", "♟", "♟", "♟", "♟", "♟", "♟", "♟"],
            [".", ".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", ".", "."],
            ["♙", "♙", "♙", "♙", "♙", "♙", "♙", "♙"],
            ["♖", "♘", "♗", ".", "♕", "♗", "♘", "♖"]
        ]
        
        let initMap = stringMap
            .enumerated()
            .map { y, row -> [Printable] in
                return row.enumerated()
                    .map { x, element -> Printable? in
                        return element.toChessPiece(x: x + 1, y: y + 1)
                    }
                    .compactMap({ $0 })
            }
        
        return initMap
    }
}
