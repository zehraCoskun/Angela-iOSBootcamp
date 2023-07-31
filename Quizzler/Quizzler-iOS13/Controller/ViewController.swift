//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var otherButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var timer = Timer()
    var quizBrain = QuizBrain()

    var correctAnswer = ""
    var userAnswer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        setChoice()
    }
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        otherButton.titleLabel?.text = quizBrain.choices(choice: otherButton.currentTitle!)
        userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        
        quizBrain.nextQuestion()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
       
    }
    
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        otherButton.backgroundColor = .clear
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score : \(quizBrain.getScore())"
        setChoice()

        
    }
    
    func setChoice(){
        otherButton.setTitle(quizBrain.choices(choice: "otherButton"), for: .normal)
        trueButton.setTitle(quizBrain.choices(choice: "trueButton"), for: .normal)
        falseButton.setTitle(quizBrain.choices(choice: "falseButton"), for: .normal)
    }
}


