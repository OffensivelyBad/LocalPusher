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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setQuestionAndAnswer(forQuestion: CheckInQuestion.One)
    }
    
    func setQuestionAndAnswer(forQuestion question: CheckInQuestion) {
        switch question {
        case CheckInQuestion.One:
            self.buttonOne.titleLabel?.text = AnswerOne.First.rawValue
            self.buttonTwo.titleLabel?.text = AnswerOne.Second.rawValue
            self.buttonThree.titleLabel?.text = AnswerOne.Third.rawValue
            self.buttonFour.titleLabel?.text = AnswerOne.Fourth.rawValue
        case CheckInQuestion.Two:
            self.buttonOne.titleLabel?.text = AnswerTwo.First.rawValue
            self.buttonTwo.titleLabel?.text = AnswerTwo.Second.rawValue
            self.buttonThree.titleLabel?.text = AnswerTwo.Third.rawValue
            self.buttonFour.titleLabel?.text = AnswerTwo.Fourth.rawValue
        case CheckInQuestion.Three:
            break
        }
    }
    
    func didReceive(_ notification: UNNotification) {
//        self.label?.text = notification.request.content.body
    }
    
    @IBAction func coverButtonTapped(_ sender: UIButton?) {
        guard let button = sender, let label = button.titleLabel, let title = label.text else { return }
        
        print(title)
        
        UIView.animate(withDuration: 1.0) {
            self.setQuestionAndAnswer(forQuestion: CheckInQuestion.Two)
        }
    }

}
