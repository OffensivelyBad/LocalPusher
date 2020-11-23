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

    func testOverallQuestion() throws {
        let util = Utilities()
        let questions = Questions()
        let question = questions.Overall
        let answer = question.answerTwo.answer
        let nextQuestion = util.getNextQuestion(forAnswer: answer, andQuestion: question)
        
        let expectedQuestion = questions.Activity
        
        XCTAssert(nextQuestion == expectedQuestion)
    }

    func testActivityQuestion() throws {
        let util = Utilities()
        let questions = Questions()
        let question = questions.Activity
        let answer = question.answerOne.answer
        let nextQuestion = util.getNextQuestion(forAnswer: answer, andQuestion: question)
        
        let expectedQuestion = questions.Eating
        
        XCTAssert(nextQuestion == expectedQuestion)
    }

    func testEatingQuestion() throws {
        let util = Utilities()
        let questions = Questions()
        let question = questions.Eating
        let answer = question.answerThree.answer
        let nextQuestion = util.getNextQuestion(forAnswer: answer, andQuestion: question)
        
        let expectedQuestion: Question? = nil
        
        XCTAssert(nextQuestion == expectedQuestion)
    }

    func testExerciseQuestion() throws {
        let util = Utilities()
        let questions = Questions()
        let question = questions.Exercise
        let answer = question.answerFour.answer
        let nextQuestion = util.getNextQuestion(forAnswer: answer, andQuestion: question)
        
        XCTAssertNil(nextQuestion)
    }

    func testScreensQuestion() throws {
        let util = Utilities()
        let questions = Questions()
        let question = questions.Screens
        let answer = question.answerOne.answer
        let nextQuestion = util.getNextQuestion(forAnswer: answer, andQuestion: question)
        
        XCTAssertNil(nextQuestion)
    }

    func testSocialQuestion() throws {
        let util = Utilities()
        let questions = Questions()
        let question = questions.Social
        let answer = question.answerTwo.answer
        let nextQuestion = util.getNextQuestion(forAnswer: answer, andQuestion: question)
        
        XCTAssertNil(nextQuestion)
    }
    
    func testGetAnswer() throws {
        let util = Utilities()
        let questions = Questions()
        let question = questions.Activity
        let answer = question.answerTwo.answer
        let expectedAnswer = question.answerTwo
        
        let actualAnswer = util.getAnswer(fromAnswerString: answer, forQuestion: question)
        XCTAssertEqual(actualAnswer, expectedAnswer)
    }
    
    func testGetAnswerFour() throws {
        let util = Utilities()
        let questions = Questions()
        let question = questions.Activity
        let answer = question.answerFour.answer
        let expectedAnswer = question.answerFour
        
        let actualAnswer = util.getAnswer(fromAnswerString: answer, forQuestion: question)
        XCTAssertEqual(actualAnswer, expectedAnswer)
    }

}
