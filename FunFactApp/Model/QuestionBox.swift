//
//  QuestionBox.swift
//  FunFactApp
//
//  Created by Dorukhan Demir on 9.04.2024.
//

import Foundation


struct QuestionBox{
    
    let questions = [
        Question(q: "Which animal's heart serves as a heater to regulate its body temperature?", a: ["Penguin","Polar bear","Shark"], correctAnswer: "Polar bear"),
        Question(q: "Which famous author spent the last 12 years of his life in bed, preferring to write while only sitting upright?", a: ["Mark Twain","Marcel Proust","Agatha Christie"], correctAnswer: "Agatha Christie"),
        Question(q: "Which city conducts the world's shortest commercial flight, lasting only 8 minutes?", a: ["Singapore","Hong Kong","Dubai"], correctAnswer: "Singapore"),
        Question(q: "Which planet has a day longer than its year?", a: ["Mars","Venus","Jupiter"], correctAnswer: "Venus"),
        Question(q: "Which animal's blood is blue in color?", a: ["Bat","Crap","Scorpion"], correctAnswer: "Bat"),
        Question(q: "Which country's flag features a dragon standing upright?", a: ["Wales","Scotland","Ireland"], correctAnswer: "Wales"),
        Question(q: "Which animal can jump up to 50 times its own height in a single leap?", a: ["Grasshopper","Kangaroo","Cat"], correctAnswer: "Grasshopper"),
        Question(q: "Which city hosts a massive pillow fight event every year?", a: ["Los Angeles","Tokyo","Amsterdam"], correctAnswer: "True"),
        Question(q: "Which fruit is the most consumed fruit in the world?", a: ["Banana","Apple","Orange"], correctAnswer: "Banana"),
        Question(q: "Which country's currency has the highest unofficial value recognized in the world?", a: ["Kuwait","Bahrain","Oman"], correctAnswer: "Kuwait"),
    ]
    
    var question_number = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer : String) -> Bool {
        if userAnswer == questions[question_number].rightAnswer{
            score += 1
            return true
        }else{
            return false
        }
    }
    
    func getAnswers() -> [String] {
        return questions[question_number].answers
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getText() -> String {
        return questions[question_number].question
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
