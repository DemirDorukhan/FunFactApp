//
//  Question.swift
//  FunFactApp
//
//  Created by Dorukhan Demir on 8.04.2024.
//

import Foundation

struct Question {
    let text : String
    let answer : String
    
    init(q: String, a: String){
        text = q
        answer = a
    }
}