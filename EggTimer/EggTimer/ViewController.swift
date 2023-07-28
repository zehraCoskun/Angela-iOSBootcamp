//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTime = ["Soft": 5, "Medium": 8, "Hard": 12]
    var hardness = ""
    var timer = Timer()
    var totalTime = 0
    var passedTime = 0
    
    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        hardness = sender.currentTitle!
        totalTime = eggTime[hardness]!*60
        
        progressBar.progress = 0.0
        passedTime = 0
        header.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }

    @objc func updateCounter(){
        progressBar.progress = Float(passedTime/totalTime)
        if  passedTime < totalTime {
            
            let percentageProgress = Float(passedTime)/Float(totalTime)
            progressBar.progress = percentageProgress
            
            passedTime += 1
            
        } else {
            header.text = "DONE!"
            playSound()
        }
        
    }
    
    func playSound(){
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
