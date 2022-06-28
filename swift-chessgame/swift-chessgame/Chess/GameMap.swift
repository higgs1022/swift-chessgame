//
//  GameMap.swift
//  swift-chessgame
//
//  Created by main on 2022/06/20.
//

import Foundation

final class GameMap {
    private(set) lazy var gameMap: [[Printable]] = resetMap()
    private(set) var tomb: [Piece] = []
    
    func reset() {
        self.gameMap = resetMap()
        self.tomb = []
    }
    
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
    
    func printMapToConsole() {
        print("  ABCDEFGH")
        for y in Position.Range {
            print("\(y) ", terminator: "")
            for x in Position.Range {
                print(gameMap[y-1][x-1].shape, terminator: "")
            }
            print()
        }
        print("  ABCDEFGH")
    }
    
    func canMove(from: Position, to: Position) -> Bool {
        guard let from = gameMap[from.y-1][from.x-1] as? Piece else {
            return false
        }
        
        if let to = gameMap[to.y-1][to.x-1] as? Piece {
            guard from.color != to.color else { return false }
        }
        
        guard from.expectedMovePoints().contains(to) else { return false }
        
        switch from {
        case is Knight:
            return true
        default:
            return true
        }
        
        return false
    }
    
    func calculateTurn(from: Position, to: Position) {
        guard var fromPiece = from as? Piece else { return }
        
        switch to {
        case is Empty:
            break
        case is Piece:
            if let toPiece = to as? Piece {
                tomb.append(toPiece)
                gameMap[to.y-1][to.x-1] = Empty()
            }
        default:
            break
        }
        
        fromPiece.position = to
        gameMap[to.y-1][to.x-1] = fromPiece
        gameMap[from.y-1][from.x-1] = Empty()
    }
}
