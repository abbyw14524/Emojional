//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 6/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["😊": "happy", "😔": "sad"]
    let customMessages = ["happy" : ["That's great! Always try to keep a positive attitude, it's more fun", "You are happy"], "sad" : ["Don't worry, it will get better. Try to stay positive and think of this as a lesson, not a failure", "It's okay to be sad sometimes"]]

    @IBAction func HappyEmoji(_ sender: UIButton) {
        customMessages["Happy"]
    }
    @IBAction func SadEmoji(_ sender: UIButton) {
        customMessages["Sad"]
    }

    @IBAction func showMessage(sender: UIButton){
        let random_num = Int.random(in: 0..<2)
        let selectedEmotion = sender.titleLabel?.text
        let message = customMessages[emojis[selectedEmotion!]!]?[random_num]
       // let realMessage = customMessages[emoji
        let alertController = UIAlertController(title: message, message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
}
    
    
    
    
    
    
}

