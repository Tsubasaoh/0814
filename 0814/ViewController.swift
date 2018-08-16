//
//  ViewController.swift
//  0814
//
//  Created by 王奕功 on 2018/8/14.
//  Copyright © 2018年 王奕功. All rights reserved.

//let's roll
import UIKit
import AVFoundation
class ViewController: UIViewController {
//outlet沒有特價
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var speedRate: UISlider!
    @IBOutlet weak var voiceType: UISlider!
    @IBOutlet weak var speedRateText: UILabel!
    @IBOutlet weak var voiceTypeText: UILabel!
//要五毛...但給不出一塊
    @IBAction func changeSlider(_ sender: Any) {
        speedRateText.text = String(format:"%.2f", speedRate.value)
        voiceTypeText.text = String(format:"%.2f", voiceType.value)
    }
    //來說點話
    @IBAction func buttomPressed(_ sender: Any) {
        let speechUtterance = AVSpeechUtterance(string:textField.text!)
    speechUtterance.voice = AVSpeechSynthesisVoice(language:"zh-TW")
        let synthesizer = AVSpeechSynthesizer()
        speechUtterance.pitchMultiplier = voiceType.value
        speechUtterance.rate = speedRate.value
        synthesizer.speak(speechUtterance)
 
}
    
}
