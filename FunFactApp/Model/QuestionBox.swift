//
//  QuestionBox.swift
//  FunFactApp
//
//  Created by Dorukhan Demir on 9.04.2024.
//

import Foundation


struct QuestionBox{
    
    let questions = [
        Question(q: "2 + 2 = 5", a: "False"),
        Question(q: "3 + 4 = 7", a: "True"),
        Question(q: "5 + 4 = 9", a: "True")
    ]
    
    var question_number = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer : String) -> Bool {
        if userAnswer == questions[question_number].answer{
            score += 1
            return true
        }else{
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getText() -> String {
        return questions[question_number].text
    }
    
    func getProgress() -> Float {
        let progress = Float(question_number) / Float(questions.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if question_number + 1 < questions.count {
            question_number += 1
        }else{
            question_number = 0
            score = 0
        }
    }
}
