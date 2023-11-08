//
//  ViewController.swift
//  Traffic Light
//
//  Created by Le Thanh Son on 07/11/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setRedBulb()
        setGreenBulb()
        setYellowBulb()
    }
    
//biến lưu trữ trạng thái
    var isRedOn = false
    var isYellowOn = false
    var isGreenOn = false
    
    @IBOutlet weak var redBulb: UIView!
    
//thiết lập ban đầu
    func setRedBulb() {
        redBulb.layer.cornerRadius = 39
        redBulb.layer.opacity = 0.2
    }
    func setYellowBulb() {
        yellowBulb.layer.cornerRadius = 39
        yellowBulb.layer.opacity = 0.2
    }
    func setGreenBulb() {
        greenBulb.layer.cornerRadius = 39
        greenBulb.layer.opacity = 0.2
       
    }
    @IBOutlet weak var yellowBulb: UIView!
    @IBOutlet weak var greenBulb: UIView!
    @IBOutlet weak var timerLabel: UILabel!
    
//trạng thái đèn
    func updateLightState() {
        redBulb.layer.opacity = isRedOn ? 1 : 0.2
        yellowBulb.layer.opacity = isYellowOn ? 1 : 0.2
        greenBulb.layer.opacity = isGreenOn ? 1 : 0.2
    }
    
    func updateTimerLabel() {
//        timerLabel.text = String()
        if isRedOn {
            timerLabel.textColor = .red
        }
        if isYellowOn {
            timerLabel.textColor = .yellow
        }
        if isGreenOn {
            timerLabel.textColor = .green
        }
    }
    
    
    @IBAction func onPressRed(_ sender: Any) {
        isRedOn = true
        isYellowOn = false
        isGreenOn = false
        
        updateLightState()
        updateTimerLabel()
    }
    
    @IBAction func onPressYellow(_ sender: Any) {
        isRedOn = false
        isYellowOn = true
        isGreenOn = false
        updateLightState()
        updateTimerLabel()
    }
    
    @IBAction func onPressGreen(_ sender: Any) {
        isRedOn = false
        isYellowOn = false
        isGreenOn = true
        updateLightState()
        updateTimerLabel()
    }
    
    
}

