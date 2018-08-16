//
//  ViewController.swift
//  0814
//
//  Created by 王奕功 on 2018/8/14.
//  Copyright © 2018年 王奕功. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!

    @IBAction func bottomPressed(_ sender: Any) {
        
        let speechUtterance = AVSpeechUtterance(string:textField.text!)
        speechUtterance.voice = AVSpeechSynthesisVoice(language:"zh-TW")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speechUtterance)
}
}
