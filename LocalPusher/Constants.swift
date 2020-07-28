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
    case Exercise = "Thanks! What were you doing?"
    case Screens = "Thanks! What were you looking at?"
    case Social = "Thanks! What were you doing with peeps?"
}

struct Answer {
    var answer: String
    var nextQuestion: String?
}

struct Question {
    var question: String
    var answerOne: Answer
    var answerTwo: Answer
    var answerThree: Answer
    var answerFour: Answer
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
    
    
    
//    var activity: Question {
//        var answerOne: Answer
//        answerOne.answer = "🍗"
////        answerOne.nextQuestion = Questions.eating
//
//        var answerTwo: Answer
//        answerTwo.answer = "🏃‍♂️"
////        answerTwo.nextQuestion = Questions.exercise
//
//        var answerThree: Answer
//        answerThree.answer = "👩‍💻"
////        answerThree.nextQuestion = Questions.screens
//
//        var answerFour: Answer
//        answerFour.answer = "👫"
////        answerFour.nextQuestion = Questions.social
//
//        var question: Question
//        question.question = "What have you been up to?"
//        question.answerOne = answerOne
//        question.answerTwo = answerTwo
//        question.answerThree = answerThree
//        question.answerFour = answerFour
//
//        return question
//    }
//
//    static var eating: Question {
//        var answerOne: Answer
//        answerOne.answer = "🍸"
//
//        var answerTwo: Answer
//        answerTwo.answer = "🥬"
//
//        var answerThree: Answer
//        answerThree.answer = "🍔"
//
//        var answerFour: Answer
//        answerFour.answer = "☕️"
//
//        var question: Question
//        question.question = "Thanks! Do you want to tell me more?"
//        question.answerOne = answerOne
//        question.answerTwo = answerTwo
//        question.answerThree = answerThree
//        question.answerFour = answerFour
//    }
//
//    static var exercise: Question {
//        var answerOne: Answer
//        answerOne.answer = "🤸‍♂️"
//
//        var answerTwo: Answer
//        answerTwo.answer = "🏋️‍♀️"
//
//        var answerThree: Answer
//        answerThree.answer = "🧘‍♀️"
//
//        var answerFour: Answer
//        answerFour.answer = "⛹️‍♀️"
//
//        var question: Question
//        question.question = "What have you been up to?"
//        question.answerOne = answerOne
//        question.answerTwo = answerTwo
//        question.answerThree = answerThree
//        question.answerFour = answerFour
//    }
//
//    static var screens: Question {
//        var answerOne: Answer
//        answerOne.answer = "📺"
//
//        var answerTwo: Answer
//        answerTwo.answer = "📱"
//
//        var answerThree: Answer
//        answerThree.answer = "👩‍💻"
//
//        var answerFour: Answer
//        answerFour.answer = "🎮"
//
//        var question: Question
//        question.question = "What have you been up to?"
//        question.answerOne = answerOne
//        question.answerTwo = answerTwo
//        question.answerThree = answerThree
//        question.answerFour = answerFour
//    }
//
//    static var social: Question {
//        var answerOne: Answer
//        answerOne.answer = "👨‍👩‍👧‍👦"
//
//        var answerTwo: Answer
//        answerTwo.answer = "🎸"
//
//        var answerThree: Answer
//        answerThree.answer = "🎳"
//
//        var answerFour: Answer
//        answerFour.answer = "🎉"
//
//        var question: Question
//        question.question = "What have you been up to?"
//        question.answerOne = answerOne
//        question.answerTwo = answerTwo
//        question.answerThree = answerThree
//        question.answerFour = answerFour
//    }
}

//struct QuestionOne: Question {
//    var question = "How are you feeling?"
//    var answerOne = Answer(answer: "😟", nextQuestion: QuestionTwo)
//    var answerTwo = "😬"
//    var answerThree = "🙂"
//    var answerFour = "😀"
//}
//
//struct QuestionTwo: Question {
//    var question = "What have you been up to?"
//    var answerOne = Answer(answer: "😟", nextQuestion: QuestionOne)
//    var answerTwo = "🏃‍♂️"
//    var answerThree = "👩‍💻"
//    var answerFour = "👫"
//}
//
//enum CheckInQuestion: String {
//    case One = "How are you feeling?"
//    case Two = "What have you been up to?"
//    case Three = "Thanks! Do you want to tell me more?"
//    case Done = "Got it! Have a great day!"
//}
//
//enum AnswerOne: String {
//    case First = "😟"
//    case Second = "😬"
//    case Third = "🙂"
//    case Fourth = "😀"
//}
//
//enum AnswerTwo: String {
//    case First = "🍗"
//    case Second = "🏃‍♂️"
//    case Third = "👩‍💻"
//    case Fourth = "👫"
//}
//
////struct AnswerTwoA: Answer {
////    var First = "🍸"
////    var Second = "🥬"
////    var Third = "🍔"
////    var Fourth = "☕️"
////}
////
////struct AnswerTwoB: Answer {
////    var First = "🤸‍♂️"
////    var Second = "🏋️‍♀️"
////    var Third = "🧘‍♀️"
////    var Fourth = "⛹️‍♀️"
////}
////
////struct AnswerTwoC: Answer {
////    var First = "📺"
////    var Second = "📱"
////    var Third = "👩‍💻"
////    var Fourth = "🎮"
////}
////
////struct AnswerTwoD: Answer {
////    var First = "👨‍👩‍👧‍👦"
////    var Second = "🎸"
////    var Third = "🎳"
////    var Fourth = "🎉"
////}
