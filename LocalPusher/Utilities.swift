//
//  Utilities.swift
//  LocalPusher
//
//  Created by Shawn Roller on 7/21/20.
//  Copyright © 2020 Shawn Roller. All rights reserved.
//

import Foundation

struct Utilities {
    
    func getNextQuestion(forAnswer answer: String, andQuestion question: Question) -> Question? {
        var nextQuestionString: String?
        
        if answer == question.answerOne.answer {
            nextQuestionString = question.answerOne.nextQuestion
        } else if answer == question.answerTwo.answer {
            nextQuestionString = question.answerTwo.nextQuestion
        } else if answer == question.answerThree.answer {
            nextQuestionString = question.answerThree.nextQuestion
        } else if answer == question.answerFour.answer {
            nextQuestionString = question.answerFour.nextQuestion
        }
        
        return getQuestionFromString(nextQuestionString)
    }
    
    func getQuestionFromString(_ questionString: String?) -> Question? {
        guard let question = questionString else { return nil }
        let questions = Questions()
        
        if question == questions.Overall.question {
            return questions.Overall
        }
        
        if question == questions.Activity.question {
            return questions.Activity
        }
        
        if question == questions.Eating.question {
            return questions.Eating
        }
        
        if question == questions.Exercise.question {
            return questions.Exercise
        }
        
        if question == questions.Screens.question {
            return questions.Screens
        }
        
        if question == questions.Social.question {
            return questions.Social
        }
        
        return nil
    }
    
    func save(answer answerString: String, forQuestion question: Question) {
        let answer = getAnswer(fromAnswerString: answerString, forQuestion: question)
        
        print("Saving question: '\(question)'\nand Answer: '\(answer)'")
        /// TODO: save the question and answer in a local DB
    }
    
    func getAnswer(fromAnswerString answerString: String, forQuestion question: Question) -> Answer {
        var answer = question.answerOne
        
        if answerString == question.answerOne.answer {
            answer = question.answerOne
        } else if answerString == question.answerTwo.answer {
            answer = question.answerTwo
        } else if answerString == question.answerThree.answer {
            answer = question.answerThree
        } else if answerString == question.answerFour.answer {
            answer = question.answerFour
        }
        
        return answer
    }
    
}
