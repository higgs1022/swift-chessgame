//
//  gameMapTests.swift
//  swift-chessgameTests
//
//  Created by main on 2022/06/28.
//

import XCTest

class gameMapTests: XCTestCase {
    var gameMap: GameMap?
    
    override func setUpWithError() throws {
        gameMap = GameMap()
    }

    override func tearDownWithError() throws {
        gameMap = nil
    }
    
    func test_given게임맵_when생성_thenEmpty갯수정상() throws {
        //given
        guard let gameMap = gameMap else { return }
        
        //when
        let stringMap = gameMap.gameMap.flatMap {
            $0.map { element in
                element.shape
            }
        }
        let emptyCount = stringMap.filter({ $0 == "." }).count
        
        //then
        
        XCTAssertEqual(emptyCount, 34, "게임판의 Empty 초기 갯수가 잘못됨")
    }
    
    func test_given게임맵_when생성_thenBlackPawn갯수정상() throws {
        //given
        guard let gameMap = gameMap else { return }
        
        //when
        let stringMap = gameMap.gameMap.flatMap {
            $0.map { element in
                element.shape
            }
        }
        let count = stringMap.filter({ $0 == "♟" }).count
        
        //then
        
        XCTAssertEqual(count, 8, "게임판의 Black Pawn 초기 갯수가 잘못됨")
    }
    
    func test_given게임맵_when생성_thenWhitePawn갯수정상() throws {
        //given
        guard let gameMap = gameMap else { return }
        
        //when
        let stringMap = gameMap.gameMap.flatMap {
            $0.map { element in
                element.shape
            }
        }
        let count = stringMap.filter({ $0 == "♙" }).count
        
        //then
        
        XCTAssertEqual(count, 8, "게임판의 White Pawn 초기 갯수가 잘못됨")
    }
    
    func test_given게임맵_when생성_thenBlackKnight갯수정상() throws {
        //given
        guard let gameMap = gameMap else { return }
        
        //when
        let stringMap = gameMap.gameMap.flatMap {
            $0.map { element in
                element.shape
            }
        }
        let count = stringMap.filter({ $0 == "♞" }).count
        
        //then
        
        XCTAssertEqual(count, 2, "게임판의 Black Knight 초기 갯수가 잘못됨")
    }
    
    func test_given게임맵_when생성_thenWhiteKnight갯수정상() throws {
        //given
        guard let gameMap = gameMap else { return }
        
        //when
        let stringMap = gameMap.gameMap.flatMap {
            $0.map { element in
                element.shape
            }
        }
        let count = stringMap.filter({ $0 == "♘" }).count
        
        //then
        
        XCTAssertEqual(count, 2, "게임판의 White Knight 초기 갯수가 잘못됨")
    }
    
    func test_given게임맵_when생성_thenBlackBiship갯수정상() throws {
        //given
        guard let gameMap = gameMap else { return }
        
        //when
        let stringMap = gameMap.gameMap.flatMap {
            $0.map { element in
                element.shape
            }
        }
        let count = stringMap.filter({ $0 == "♝" }).count
        
        //then
        
        XCTAssertEqual(count, 2, "게임판의 Black Biship 초기 갯수가 잘못됨")
    }
    
    func test_given게임맵_when생성_thenWhiteBiship갯수정상() throws {
        //given
        guard let gameMap = gameMap else { return }
        
        //when
        let stringMap = gameMap.gameMap.flatMap {
            $0.map { element in
                element.shape
            }
        }
        let count = stringMap.filter({ $0 == "♗" }).count
        
        //then
        
        XCTAssertEqual(count, 2, "게임판의 White Biship 초기 갯수가 잘못됨")
    }
    
    func test_given게임맵_when생성_thenBlackRook갯수정상() throws {
        //given
        guard let gameMap = gameMap else { return }
        
        //when
        let stringMap = gameMap.gameMap.flatMap {
            $0.map { element in
                element.shape
            }
        }
        let count = stringMap.filter({ $0 == "♜" }).count
        
        //then
        
        XCTAssertEqual(count, 2, "게임판의 Black Rook 초기 갯수가 잘못됨")
    }
    
    func test_given게임맵_when생성_thenWhiteRook갯수정상() throws {
        //given
        guard let gameMap = gameMap else { return }
        
        //when
        let stringMap = gameMap.gameMap.flatMap {
            $0.map { element in
                element.shape
            }
        }
        let count = stringMap.filter({ $0 == "♖" }).count
        
        //then
        
        XCTAssertEqual(count, 2, "게임판의 White Rook 초기 갯수가 잘못됨")
    }
    
    func test_given게임맵_when생성_thenBlackQueen갯수정상() throws {
        //given
        guard let gameMap = gameMap else { return }
        
        //when
        let stringMap = gameMap.gameMap.flatMap {
            $0.map { element in
                element.shape
            }
        }
        let count = stringMap.filter({ $0 == "♛" }).count
        
        //then
        
        XCTAssertEqual(count, 1, "게임판의 Black Queen 초기 갯수가 잘못됨")
    }
    
    func test_given게임맵_when생성_thenWhiteQueen갯수정상() throws {
        //given
        guard let gameMap = gameMap else { return }
        
        //when
        let stringMap = gameMap.gameMap.flatMap {
            $0.map { element in
                element.shape
            }
        }
        let count = stringMap.filter({ $0 == "♕" }).count
        
        //then
        
        XCTAssertEqual(count, 1, "게임판의 White Queen 초기 갯수가 잘못됨")
    }
}
