//
//  pointTests.swift
//  swift-chessgameTests
//
//  Created by main on 2022/06/20.
//

import XCTest

class PositionTests: XCTestCase {
    func test_given음수좌표_when생성_then생성실패() throws {
        //given
        let x = -1
        let y = 0
        
        //when
        var position: Position?
        position = Position(x: x, y: y)
        
        //then
        XCTAssertNil(position)
    }
    
    func test_given8이상의좌표_when생성_then생성실패() throws {
        //given
        let x = 9
        let y = 0
        
        //when
        var position: Position?
        position = Position(x: x, y: y)
        
        //then
        XCTAssertNil(position)
    }
    
    func test_given정상범위좌표_when생성_then생성성공() throws {
        //given
        let x = 1
        let y = 1
        
        //when
        var position: Position?
        position = Position(x: x, y: y)
        
        //then
        XCTAssertNotNil(position)
    }
}
