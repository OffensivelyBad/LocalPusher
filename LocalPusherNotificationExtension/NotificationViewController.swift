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

    @IBOutlet var label: UILabel!
    @IBOutlet var coverButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.alpha = 0
    }
    
    func didReceive(_ notification: UNNotification) {
//        self.label?.text = notification.request.content.body
    }
    
    @IBAction func coverButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 2.0) {
            self.coverButton.alpha = 0
            self.label.textColor = UIColor.red
            self.label.alpha = 1
        }
    }

}
