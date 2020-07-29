//
//  Constants.swift
//  LocalPusher
//
//  Created by Shawn Roller on 6/6/20.
//  Copyright © 2020 Shawn Roller. All rights reserved.
//

import Foundation

struct Constants {
    static let NotificationID = "checkInNotification"
}

enum QuestionStrings: String {
    case Overall = "How are you feeling?"
    case Activity = "What have you been up to?"
    case Eating = "Thanks! What went down your gullet?"
    case Exercise = "Thanks! What self-care were you doing?"
    case Screens = "Thanks! What were you looking at?"
    case Social = "Thanks! What were you doing with peeps?"
}

struct Answer {
    var answer: String
    var nextQuestion: String?
}

struct Question: Equatable {
    var question: String
    var answerOne: Answer
    var answerTwo: Answer
    var answerThree: Answer
    var answerFour: Answer
    
    static func ==(lhs: Question, rhs: Question) -> Bool {
        return lhs.question == rhs.question
    }
}

struct Questions {
    var Overall: Question {
        let answerOne = Answer(answer: "😟", nextQuestion: QuestionStrings.Activity.rawValue)
        let answerTwo = Answer(answer: "😬", nextQuestion: QuestionStrings.Activity.rawValue)
        let answerThree = Answer(answer: "🙂", nextQuestion: QuestionStrings.Activity.rawValue)
        let answerFour = Answer(answer: "😀", nextQuestion: QuestionStrings.Activity.rawValue)
        let question = Question(question: QuestionStrings.Overall.rawValue, answerOne: answerOne, answerTwo: answerTwo, answerThree: answerThree, answerFour: answerFour)
        return question
    }
    var Activity: Question {
        let answerOne = Answer(answer: "🍗", nextQuestion: QuestionStrings.Eating.rawValue)
        let answerTwo = Answer(answer: "🏃‍♂️", nextQuestion: QuestionStrings.Exercise.rawValue)
        let answerThree = Answer(answer: "👩‍💻", nextQuestion: QuestionStrings.Screens.rawValue)
        let answerFour = Answer(answer: "👫", nextQuestion: QuestionStrings.Social.rawValue)
        let question = Question(question: QuestionStrings.Activity.rawValue, answerOne: answerOne, answerTwo: answerTwo, answerThree: answerThree, answerFour: answerFour)
        return question
    }
    var Eating: Question {
        let answerOne = Answer(answer: "🍸")
        let answerTwo = Answer(answer: "🥬")
        let answerThree = Answer(answer: "🍔")
        let answerFour = Answer(answer: "☕️")
        let question = Question(question: QuestionStrings.Eating.rawValue, answerOne: answerOne, answerTwo: answerTwo, answerThree: answerThree, answerFour: answerFour)
        return question
    }
    var Exercise: Question {
        let answerOne = Answer(answer: "🤸‍♂️")
        let answerTwo = Answer(answer: "🏋️‍♀️")
        let answerThree = Answer(answer: "🧘‍♀️")
        let answerFour = Answer(answer: "⛹️‍♀️")
        let question = Question(question: QuestionStrings.Exercise.rawValue, answerOne: answerOne, answerTwo: answerTwo, answerThree: answerThree, answerFour: answerFour)
        return question
    }
    var Screens: Question {
        let answerOne = Answer(answer: "📺")
        let answerTwo = Answer(answer: "📱")
        let answerThree = Answer(answer: "👩‍💻")
        let answerFour = Answer(answer: "🎮")
        let question = Question(question: QuestionStrings.Screens.rawValue, answerOne: answerOne, answerTwo: answerTwo, answerThree: answerThree, answerFour: answerFour)
        return question
    }
    var Social: Question {
        let answerOne = Answer(answer: "👨‍👩‍👧‍👦")
        let answerTwo = Answer(answer: "🎸")
        let answerThree = Answer(answer: "🎳")
        let answerFour = Answer(answer: "🎉")
        let question = Question(question: QuestionStrings.Social.rawValue, answerOne: answerOne, answerTwo: answerTwo, answerThree: answerThree, answerFour: answerFour)
        return question
    }
}
