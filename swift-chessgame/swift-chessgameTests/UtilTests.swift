//
//  UtilTests.swift
//  swift-chessgame
//
//  Created by main on 2022/06/29.
//

import XCTest

class UtilTests: XCTestCase {
    func test_givenA문자열_when좌표를숫자로변환_then숫자1() throws {
        //given
        let input = "A"
        
        //when
        let output = input.fileToInt
        
        //then
        XCTAssertEqual(output, 1)
    }
    
    func test_givenH문자열_when좌표를숫자로변환_then숫자8() throws {
        //given
        let input = "H"
        
        //when
        let output = input.fileToInt
        
        //then
        XCTAssertEqual(output, 8)
    }
    
    func test_givenZ문자열_when좌표를숫자로변환_thenNil() throws {
        //given
        let input = "Z"
        
        //when
        let output = input.fileToInt
        
        //then
        XCTAssertNil(output)
    }
    
    func test_given8문자열_when좌표를숫자로변환_then숫자8() throws {
        //given
        let input = "8"
        
        //when
        let output = input.rankToInt
        
        //then
        XCTAssertEqual(output, 8)
    }
    
    func test_given9문자열_when좌표를숫자로변환_thenNil() throws {
        //given
        let input = "9"
        
        //when
        let output = input.rankToInt
        
        //then
        XCTAssertNil(output)
    }
    
    func test_givenH8문자열_when좌표를Position으로변환_thenH8좌표() throws {
        //given
        let input = "H8"
        
        //when
        let output = input.chessPosition
        
        //then
        XCTAssertEqual(output, Position(x: 8, y: 8))
    }
    
    func test_givenH9문자열_when좌표를Position으로변환_thenNil() throws {
        //given
        let input = "H9"
        
        //when
        let output = input.chessPosition
        
        //then
        XCTAssertNil(output)
    }
}
