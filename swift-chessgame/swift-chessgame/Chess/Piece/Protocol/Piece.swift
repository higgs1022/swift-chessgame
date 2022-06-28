//
//  Piece.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

protocol Piece: Printable, Movable {
    var shape: String { get set }
    var position: Position { get set }
}
