//
//  LocalPusherTests.swift
//  LocalPusherTests
//
//  Created by Shawn Roller on 7/21/20.
//  Copyright © 2020 Shawn Roller. All rights reserved.
//

import XCTest

class LocalPusherTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let util = Utilities()
        let answers = util.getAnswers(forAnswer: AnswerOne.First.rawValue)
        print(answers)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
