//
//  ViewController2.swift
//  Swift5LocalPush1
//
//  Created by seijiro on 2019/03/25.
//  Copyright © 2019 norainu. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController2: UIViewController {


  @IBOutlet var nameTextField: UITextField!
  @IBOutlet var textField1: UITextField!
  @IBOutlet var textField2: UITextField!
  @IBOutlet var textField3: UITextField!
  @IBOutlet var textField4: UITextField!

  var timer:Timer?

  var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  @IBAction func push(_ sender: Any) {
    timerUpdate()
  }

  func timerUpdate(){
    let content = UNMutableNotificationContent()
    let content2 = UNMutableNotificationContent()
    let content3 = UNMutableNotificationContent()
    let content4 = UNMutableNotificationContent()

    content.title = nameTextField.text!
    content.body = textField1.text!
    content.sound = UNNotificationSound.default
    let trigger1 = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
    let request1 = UNNotificationRequest(identifier: "ID2", content: content, trigger: trigger1); UNUserNotificationCenter.current().add(request1,withCompletionHandler: nil)

    content2.title = nameTextField.text!
    content2.body = textField2.text!
    content2.sound = UNNotificationSound.default
    let trigger2 = UNTimeIntervalNotificationTrigger(timeInterval: 8, repeats: false)
    let request2 = UNNotificationRequest(identifier: "ID3", content: content2, trigger: trigger2)
    UNUserNotificationCenter.current().add(request2,withCompletionHandler: nil)

    content3.title = nameTextField.text!
    content3.body = textField3.text!
    content3.sound = UNNotificationSound.default
    let trigger3 = UNTimeIntervalNotificationTrigger(timeInterval: 11, repeats: false)
    let request3 = UNNotificationRequest(identifier: "ID4", content: content3, trigger: trigger3)
    UNUserNotificationCenter.current().add(request3,withCompletionHandler: nil)

    content4.title = nameTextField.text!
    content4.body = textField4.text!

    if let path = Bundle.main.path(forResource: "bird", ofType: "jpg"){
      content4.attachments = [try! UNNotificationAttachment(identifier: "ID5", url: URL(fileURLWithPath: path), options: nil)]
    }

    content4.sound = UNNotificationSound.default
    let trigger4 = UNTimeIntervalNotificationTrigger(timeInterval: 14, repeats: false)
    let request4 = UNNotificationRequest(identifier: "ID5", content: content4, trigger: trigger4)
    UNUserNotificationCenter.current().add(request4,withCompletionHandler: nil)


  }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
