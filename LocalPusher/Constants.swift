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
