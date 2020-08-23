//
//  NotificationViewController.swift
//  LocalPusherNotificationExtension
//
//  Created by Shawn Roller on 6/5/20.
//  Copyright © 2020 Shawn Roller. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var buttonOne: UIButton!
    @IBOutlet var buttonTwo: UIButton!
    @IBOutlet var buttonThree: UIButton!
    @IBOutlet var buttonFour: UIButton!
    @IBOutlet var buttonStack: UIStackView!
    
    let util = Utilities()
    let questions = Questions()
    var currentQuestion: Question?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setup(forQuestion: self.questions.Overall)
        self.preferredContentSize = CGSize(width: 320, height: 140)
    }
    
    func setup(forQuestion question: Question) {
        self.currentQuestion = question
        self.questionLabel.text = question.question
        self.buttonOne.setTitle(question.answerOne.answer, for: .normal)
        self.buttonTwo.setTitle(question.answerTwo.answer, for: .normal)
        self.buttonThree.setTitle(question.answerThree.answer, for: .normal)
        self.buttonFour.setTitle(question.answerFour.answer, for: .normal)
    }
    
    func didReceive(_ notification: UNNotification) {
        
    }
    
    @IBAction func coverButtonTapped(_ sender: UIButton?) {
        guard let button = sender, let label = button.titleLabel, let buttonTitle = label.text, let currentQuestion = self.currentQuestion else { return }
        
        print("Answer '\(buttonTitle)' selected")
        
        let nextQuestion = self.util.getNextQuestion(forAnswer: buttonTitle, andQuestion: currentQuestion)
        self.util.save(answer: buttonTitle, forQuestion: currentQuestion)
        
        if let nextQuestion = nextQuestion {
            self.animateToQuestion(nextQuestion)
        } else {
            self.animateToEnd()
        }
    }

    func animateToQuestion(_ question: Question) {
        UIView.animate(withDuration: 0.25, animations: {
            self.buttonStack.alpha = 0
            self.questionLabel.alpha = 0
        }) { (done) in
            self.setup(forQuestion: question)
            UIView.animate(withDuration: 0.25, animations: {
                self.buttonStack.alpha = 1
                self.questionLabel.alpha = 1
            })
        }
    }

    func animateToEnd() {
        UIView.animate(withDuration: 0.25, animations: {
            self.buttonStack.alpha = 0
            self.questionLabel.alpha = 0
        }) { (done) in
            self.questionLabel.text = "Thanks!"
            UIView.animate(withDuration: 0.25, animations: {
                self.questionLabel.alpha = 1
            })
        }
    }

}
