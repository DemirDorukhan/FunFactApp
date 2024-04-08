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
    
    //lets create an Question Struct Array
    let questions = [
    Question(q: "2 + 2 = 5", a: "False"),
    Question(q: "3 + 4 = 7", a: "True"),
    Question(q: "5 + 4 = 9", a: "True")
    ]
    
    var question_number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    //Either true or false button pressed
    @IBAction func aButtonPressed(_ sender: UIButton) {
        
        let user_answer = sender.currentTitle //String True or False
        let actual_answer = questions[question_number].answer
        
        if user_answer == actual_answer {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        if question_number + 1 < questions.count {
            question_number += 1
        }else{
            question_number = 0
        }
        
        //Added a timer for ui background color effect.
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    // In order keep it changing, I actually need a func so I can trigger it whenever I want.
    @objc func updateUI() {
        
        questionLabel.text = questions[question_number].text
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        //Progressbar was activated.
        progressBar.progress = Float(question_number + 1) / Float(questions.count)
    }


}

