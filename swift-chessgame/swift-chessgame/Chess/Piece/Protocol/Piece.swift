//
//  Piece.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

enum PieceColor {
    case white
    case black
}

protocol Piece: Printable, Movable {
    var color: PieceColor { get set }
    var shape: String { get }
    var position: Position { get set }
}
