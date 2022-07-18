//
//  GameViewModel.swift
//  PopTrivia
//
//  Created by Karteikay Dhuper on 7/15/22.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject{
    
    @Published private var game = Game()
    
    var currentQuestion: Question{
        game.currentQuestion
    }
    
    var questionProgressText: String{
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMade: Bool{
        if let _ = game.guesses[currentQuestion]{
            return true
        }
        else{
            return false
        }
    }
    
    var correctGuesses: Int{
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int{
        game.guessCount.incorrect
    }
    
    
    var gameIsOver: Bool{
        game.isOver
    }
    
    func makeGuess(atIndex index: Int){
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen(){
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
             if let guessedIndex = game.guesses[currentQuestion] {
                 if guessedIndex != optionIndex {
                     return Color(red: 52/255, green: 182/255, blue: 113/255)
                 } else if guessedIndex == currentQuestion.correctAnswerIndex {
                     return Color(red: 124/255, green: 252/255, blue: 0/255)
                 } else {
                     return Color.red
                 }
             } else {
                 return Color(red: 52/255, green: 182/255, blue: 113/255)
             }
         }
}
