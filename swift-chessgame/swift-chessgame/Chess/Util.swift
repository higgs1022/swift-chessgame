//
//  Util.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

extension String {
    func toChessPiece(x: Int, y: Int) -> Printable? {
        guard let position = Position(x: x, y: y) else { return nil }
        switch self {
        case "♟":
            return Pawn(color: .black, position: position)
        case "♙":
            return Pawn(color: .white, position: position)
        case "♞":
            return Knight(color: .black, position: position)
        case "♘":
            return Knight(color: .white, position: position)
        case "♝":
            return Biship(color: .black, position: position)
        case "♗":
            return Biship(color: .white, position: position)
        case "♜":
            return Rook(color: .black, position: position)
        case "♖":
            return Rook(color: .white, position: position)
        case "♛":
            return Queen(color: .black, position: position)
        case "♕":
            return Queen(color: .white, position: position)
        case ".":
            return Empty()
        default:
            return nil
        }
    }
}
