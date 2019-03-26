//
//  ViewController.swift
//  Swift5LocalPush1
//
//  Created by seijiro on 2019/03/25.
//  Copyright © 2019 norainu. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

  @IBOutlet var nameTextField: UITextField!
  @IBOutlet var textField: UITextField!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func push(_ sender: Any) {
    let content = UNMutableNotificationContent()
    content.title = nameTextField.text!
    content.body = textField.text!
    content.sound = UNNotificationSound.default

    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
    let request = UNNotificationRequest(identifier: "ID1", content: content, trigger: trigger)
    UNUserNotificationCenter.current().add(request,withCompletionHandler: nil)

  }

}

