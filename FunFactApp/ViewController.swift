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
    
    //lets create a questions 2Darray
    let questions = [
    ["2 + 2 = 5", "False"],
    ["3 + 5 = 8", "True"],
    ["4 + 3 = 7", "True"]
    ]
    
    var question_number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    //Either true or false button pressed
    @IBAction func aButtonPressed(_ sender: UIButton) {
        
        let user_answer = sender.currentTitle //String True or False
        let actual_answer = questions[question_number][1]
        if user_answer == actual_answer {
            print("Right")
        }else{
            print("Wrong")
        }
        
        if question_number + 1 < questions.count {
            question_number += 1
        }else{
            question_number = 0
        }
        
        updateUI()
    }
    
    
    // In order keep it changing, I actually need a func so I can trigger it whenever I want.
    func updateUI() {
        questionLabel.text = questions[question_number][0]
    }


}

