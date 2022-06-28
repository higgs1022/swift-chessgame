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
    
    var rankToInt: Int? {
        guard let num = Int(self), Position.Range.contains(num) else {
            return nil
        }
        
        return num
    }
    
    //file: A~H
    var fileToInt: Int? {
        guard let fileAscValue = self[self.startIndex].asciiValue else {
            return nil
        }
        
        let num = Int(fileAscValue - ("A" as Character).asciiValue!) + 1
        
        guard Position.Range.contains(num) else {
            return nil
        }
        
        return num
    }
    
    var chessPosition: Position? {
        guard self.count == 2 else { return nil }
        guard let x = String(self[self.startIndex]).fileToInt,
              let y = String(self[self.index(self.startIndex, offsetBy: 1)]).rankToInt else {
            return nil
        }
        return Position(x: x, y: y)
    }
}
