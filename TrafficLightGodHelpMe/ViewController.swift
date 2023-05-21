//
//  ViewController.swift
//  TrafficLightGodHelpMe
//
//  Created by Акира on 20.05.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var trafficGreen: UIView!
    @IBOutlet var trafficYelow: UIView!
    @IBOutlet var trafficRed: UIView!
    @IBOutlet var startButton: UIButton!
    var countTaps = 0
    
    override func viewDidLoad() {  // изначально сделал как = 50, пока в разборе Алексей не сказал о том, что нужно просто делить на 2
        super.viewDidLoad()
        
        trafficGreen.layer.cornerRadius =
        trafficGreen.frame.width / 2
        trafficYelow.layer.cornerRadius =
        trafficYelow.frame.width / 2
        trafficRed.layer.cornerRadius =
        trafficRed.frame.width / 2
        
        startButton.layer.cornerRadius = 25
        
        trafficGreen.alpha = 0.3
        trafficYelow.alpha = 0.3
        trafficRed.alpha = 0.3
        
    }

    @IBAction func pushNextColor() {
        startButton.setTitle("Next!", for: .normal)
        
        switch countTaps {
        case 0:
            trafficYelow.alpha = 0.3
            trafficRed.alpha = 1
            countTaps += 1
        case 1:
            trafficRed.alpha = 0.3
            trafficGreen.alpha = 1
            countTaps += 1
        case 2:
            trafficGreen.alpha = 0.3
            trafficYelow.alpha = 1
            countTaps = 0
        default:
            break
        }
    }
    
}

