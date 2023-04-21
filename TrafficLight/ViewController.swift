//
//  ViewController.swift
//  TrafficLight
//
//  Created by Egor Kruglov on 21.04.2023.
//

import UIKit

class ViewController: UIViewController {
    var activeView: UIView?
    
    @IBOutlet var views: [UIView]!
    @IBOutlet var startButton: UIButton!
        
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        views.forEach { $0.layer.cornerRadius = $0.frame.height / 2 }
        startButton.layer.cornerRadius = 20
    }
    
    @IBAction func startButtonTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        if activeView == nil {
            activeView = views.first
            activeView?.alpha = 1
        } else {
            activeView?.alpha = 0.3
            activeView = views[(views.firstIndex(of: activeView!)! + 1) % views.count]
            activeView?.alpha = 1
        }
    }
    
}
