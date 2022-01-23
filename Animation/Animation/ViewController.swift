//
//  ViewController.swift
//  Animation
//
//  Created by user on 12.01.2022.
//


import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }


    @IBAction func runAnimation(_ sender: SpringButton) {
        springAnimationView.animation
        
    }
}

