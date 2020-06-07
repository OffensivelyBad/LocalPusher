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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setQuestionAndAnswer(forQuestion: CheckInQuestion.One)
        self.preferredContentSize = CGSize(width: 320, height: 140)
    }
    
    func setQuestionAndAnswer(forQuestion question: CheckInQuestion) {
        var newQuestion = ""
        var titleOne = ""
        var titleTwo = ""
        var titleThree = ""
        var titleFour = ""
        
        switch question {
        case CheckInQuestion.One:
            newQuestion = CheckInQuestion.One.rawValue
            titleOne = AnswerOne.First.rawValue
            titleTwo = AnswerOne.Second.rawValue
            titleThree = AnswerOne.Third.rawValue
            titleFour = AnswerOne.Fourth.rawValue
        case CheckInQuestion.Two:
            newQuestion = CheckInQuestion.Two.rawValue
            titleOne = AnswerTwo.First.rawValue
            titleTwo = AnswerTwo.Second.rawValue
            titleThree = AnswerTwo.Third.rawValue
            titleFour = AnswerTwo.Fourth.rawValue
        default:
            break
        }
        
        self.questionLabel.text = newQuestion
        self.buttonOne.setTitle(titleOne, for: .normal)
        self.buttonTwo.setTitle(titleTwo, for: .normal)
        self.buttonThree.setTitle(titleThree, for: .normal)
        self.buttonFour.setTitle(titleFour, for: .normal)
    }
    
    func didReceive(_ notification: UNNotification) {
//        self.label?.text = notification.request.content.body
    }
    
    @IBAction func coverButtonTapped(_ sender: UIButton?) {
        guard let button = sender, let label = button.titleLabel, let buttonTitle = label.text, let question = self.questionLabel.text else { return }
        
        if question == CheckInQuestion.One.rawValue {
            self.animateToQuestion(CheckInQuestion.Two)
        } else if question == CheckInQuestion.Two.rawValue {
//            self.animateToQuestion(CheckInQuestion.Three)
            self.animateToEnd()
        } else {
            self.animateToEnd()
        }
    }
    
    func animateToQuestion(_ question: CheckInQuestion) {
        UIView.animate(withDuration: 0.25, animations: {
            self.buttonStack.alpha = 0
            self.questionLabel.alpha = 0
        }) { (done) in
            self.setQuestionAndAnswer(forQuestion: question)
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
            self.questionLabel.text = CheckInQuestion.Done.rawValue
            UIView.animate(withDuration: 0.25, animations: {
                self.questionLabel.alpha = 1
            })
        }
    }

}
