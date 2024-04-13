//
//  ViewController.swift
//  FunFactApp
//
//  Created by Dorukhan Demir on 7.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
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
        
        questionLabel.text = questionBox.getText()
        progressBar.progress = questionBox.getProgress()
        scoreLabel.text = "Score: \(questionBox.getScore())"
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }


}

