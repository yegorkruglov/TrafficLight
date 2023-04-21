//
//  ViewController.swift
//  TrafficLight
//
//  Created by Egor Kruglov on 21.04.2023.
//

import UIKit

class ViewController: UIViewController {
    var activeView: UIView?
    
    @IBOutlet var redView: UIView!
    @IBOutlet var orangeView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.frame.height / 2
        orangeView.layer.cornerRadius = redView.frame.height / 2
        greenView.layer.cornerRadius = redView.frame.height / 2
        startButton.layer.cornerRadius = 20
    }
    
    @IBAction func startButtonTapped() {
        startButton.setTitle("NEXT", for: .normal)
    
        switch activeView {
        case redView:
            redView.alpha = 0.3
            activeView = orangeView
            activeView?.alpha = 1
        case orangeView:
            orangeView.alpha = 0.3
            activeView = greenView
            activeView?.alpha = 1
        case greenView:
            greenView.alpha = 0.3
            activeView = redView
            activeView?.alpha = 1
        default:
            activeView = redView
            activeView?.alpha = 1
        }
    }
    
}
