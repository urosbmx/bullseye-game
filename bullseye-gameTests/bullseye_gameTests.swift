//
//  bullseye_gameTests.swift
//  bullseye-gameTests
//
//  Created by Uroš Katanić on 17.3.22..
//

import XCTest
@testable import bullseye_game

class bullseye_gameTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
      game = Game()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testScorePositiv(){
        let guess = game.targer + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative(){
        let guess = game.targer - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }

}
