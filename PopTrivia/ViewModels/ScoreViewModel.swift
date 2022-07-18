//
//  ScoreViewModel.swift
//  PopTrivia
//
//  Created by Karteikay Dhuper on 7/15/22.
//

import Foundation

struct ScoreViewModel {
    
    let correctGuesses: Int
    let incorrectGuesses: Int
        
    var percentage: Int{
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}

