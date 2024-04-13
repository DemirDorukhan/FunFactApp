//
//  Question.swift
//  FunFactApp
//
//  Created by Dorukhan Demir on 8.04.2024.
//

import Foundation

struct Question {
    let question : String
    let answers : [String]
    let rightAnswer : String
    
    init(q: String, a : [String], correctAnswer: String){
        question = q
        answers = a
        rightAnswer = correctAnswer
    }
}
