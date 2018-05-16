//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Macintosh on 16/05/18.
//  Copyright © 2018 Macintosh. All rights reserved.
//

import Foundation

class Quiz{
    
    let question: String
    let options: [String]
    private let correctAnswer: String
    
    init(question: String, options: [String], correctAnswer: String) {
        self.question = question
        self.options = options
        self.correctAnswer = correctAnswer
    }
    
    func validateOption(_ index: Int) -> Bool {
        let answer  = options[index]
        return answer == correctAnswer
    }
    
    deinit {
        print("Liberou quiz de memória")
    }
}
