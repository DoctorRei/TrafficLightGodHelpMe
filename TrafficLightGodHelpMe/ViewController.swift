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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficGreen.layer.cornerRadius = 50
        trafficYelow.layer.cornerRadius = 50
        trafficRed.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 25
        
        trafficGreen.alpha = 0.3
        trafficYelow.alpha = 0.3
        trafficRed.alpha = 0.3
        
    }

    @IBAction func pushNextColor() {
        
    }
    
}

