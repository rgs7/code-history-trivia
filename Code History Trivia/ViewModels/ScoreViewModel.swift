//
//  ScoreViewModel.swift
//  Code History Trivia
//
//  Created by Ricardo Guerrero on 15/03/23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
