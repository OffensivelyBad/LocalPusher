//
//  ViewController.swift
//  LocalPusher
//
//  Created by Shawn Roller on 6/5/20.
//  Copyright © 2020 Shawn Roller. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let debitOverdraftNotificationCategory = UNNotificationCategory(identifier: Constants.NotificationID, actions: [], intentIdentifiers: [], options: [])
        UNUserNotificationCenter.current().setNotificationCategories([debitOverdraftNotificationCategory])
    }
    
    @IBAction func sendNoficationButtonTapped(_ sender: Any) {
        UNUserNotificationCenter.current().getNotificationSettings { (settings) in
            guard settings.authorizationStatus == .authorized else { return }
            
            let content = UNMutableNotificationContent()
            content.categoryIdentifier = Constants.NotificationID
            content.title = "Check in with yourself"
            content.body = "Take a deep breath. How do you feel?"
            content.sound = UNNotificationSound.default
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
            
            let uuidString = UUID().uuidString
            let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        }
    }


}

