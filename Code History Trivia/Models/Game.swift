//
//  Game.swift
//  Code History Trivia
//
//  Created by Ricardo Guerrero on 09/03/23.
//

import Foundation

struct Game {
    
    // Private properties
    private let questions = Question.allQuestions.shuffled()
    private(set) var guesses = [Question:Int]()
    private(set) var currentQuestionIndex = 0
    private(set) var isOver = false
    
    // Computed properties
    var guessCount: (correct: Int, incorrect: Int) {
            var count: (correct: Int, incorrect: Int) = (0, 0)
            for (question, guessedIndex) in guesses {
                if question.correctAnswerIndex == guessedIndex {
                    count.correct += 1
                } else {
                    count.incorrect += 1
                }
            }
            return count
        }
     
    var numberOfQuestions: Int {
        questions.count
    }
     
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    // Mutating methods
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count-1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
