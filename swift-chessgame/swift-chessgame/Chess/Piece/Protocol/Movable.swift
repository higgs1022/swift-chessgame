//
//  Positionable.swift
//  swift-chessgame
//
//  Created by main on 2022/06/28.
//

import Foundation

protocol Movable {
    var position: Position { get set }
    func expectedMovePoints() -> [Position]
}
