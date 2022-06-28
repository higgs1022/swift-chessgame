//
//  GameMap.swift
//  swift-chessgame
//
//  Created by main on 2022/06/20.
//

import Foundation

final class GameMap {
    private lazy var gameMap: [[Printable]] = createEmptyMap()
    
    private func createEmptyMap() -> [[Printable]] {
        return [[Empty]] (repeating: Array(repeating: Empty(),count: 8 ),
                          count: 8)
    }
}
