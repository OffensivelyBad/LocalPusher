//
//  Constants.swift
//  LocalPusher
//
//  Created by Shawn Roller on 6/6/20.
//  Copyright © 2020 Shawn Roller. All rights reserved.
//

import Foundation

protocol Answer {
    var First: String { get }
    var Second: String { get }
    var Third: String { get }
    var Fourth: String { get }
}

struct Constants {
    static let NotificationID = "checkInNotification"
}

enum CheckInQuestion: String {
    case One = "How are you feeling?"
    case Two = "What have you been up to?"
    case Three = "Thanks! Do you want to tell me more?"
    case Done = "Got it! Have a great day!"
}

enum AnswerOne: String {
    case First = "😟"
    case Second = "😬"
    case Third = "🙂"
    case Fourth = "😀"
}

enum AnswerTwo: String {
    case First = "🍗"
    case Second = "🏃‍♂️"
    case Third = "👩‍💻"
    case Fourth = "👫"
}

struct AnswerTwoA: Answer {
    var First = "🍸"
    var Second = "🥬"
    var Third = "🍔"
    var Fourth = "☕️"
}

struct AnswerTwoB: Answer {
    var First = "🤸‍♂️"
    var Second = "🏋️‍♀️"
    var Third = "🧘‍♀️"
    var Fourth = "⛹️‍♀️"
}

struct AnswerTwoC: Answer {
    var First = "📺"
    var Second = "📱"
    var Third = "👩‍💻"
    var Fourth = "🎮"
}

struct AnswerTwoD: Answer {
    var First = "👨‍👩‍👧‍👦"
    var Second = "🎸"
    var Third = "🎳"
    var Fourth = "🎉"
}
