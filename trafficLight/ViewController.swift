//
//  ViewController.swift
//  trafficLight
//
//  Created by user192060 on 5/21/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView! 
    @IBOutlet weak var greenColorView: UIView!
    @IBOutlet weak var changeStatusButton: UIButton!
    
    private let lightIsOff: CGFloat = 0.3
    private let lightIsOn: CGFloat = 1.0
    
    private var currentStatus: Status = .off

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorView.alpha = lightIsOff
        yellowColorView.alpha = lightIsOff
        greenColorView.alpha = lightIsOff
        
        redColorView.layer.masksToBounds = true
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        
        yellowColorView.layer.masksToBounds = true
        yellowColorView.layer.cornerRadius = redColorView.frame.width / 2
        
        greenColorView.layer.masksToBounds = true
        greenColorView.layer.cornerRadius = redColorView.frame.width / 2    }
    
    @IBAction func changeStatus() {
        switch currentStatus {
        case .red:
            greenColorView.alpha = lightIsOff
            redColorView.alpha = lightIsOn
            currentStatus = .yellow
        case .yellow:
            redColorView.alpha = lightIsOff
            yellowColorView.alpha = lightIsOn
            currentStatus = .green
        case .green:
            yellowColorView.alpha = lightIsOff
            greenColorView.alpha = lightIsOn
            currentStatus = .red
        case .off:
            greenColorView.alpha = lightIsOff
            redColorView.alpha = lightIsOn
            changeStatusButton.setTitle("Next", for: .normal)
            currentStatus = .yellow
        }
    }
}

