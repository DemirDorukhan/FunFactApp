//
//  ViewController.swift
//  FunFactApp
//
//  Created by Dorukhan Demir on 7.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    
    var questionBox = QuestionBox()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    //Either true or false button pressed
    @IBAction func aButtonPressed(_ sender: UIButton) {
        
        
        if questionBox.checkAnswer(sender.currentTitle!) {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        questionBox.nextQuestion()
        
        //Added a timer for ui background color effect.
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    // In order keep it changing, I actually need a func so I can trigger it whenever I want.
    @objc func updateUI() {
        
        let answers = questionBox.getAnswers()
        choice1.setTitle(answers[0], for: .normal)
        choice2.setTitle(answers[1], for: .normal)
        choice3.setTitle(answers[2], for: .normal)
        
        questionLabel.text = questionBox.getText()
        progressBar.progress = questionBox.getProgress()
        scoreLabel.text = "Score: \(questionBox.getScore())"
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        
    }


}

