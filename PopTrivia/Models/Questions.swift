//
//  Questions.swift
//  PopTrivia
//
//  Created by Karteikay Dhuper on 7/9/22.
//

import Foundation

struct Question: Hashable
{
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
//    static var allQuestions = [allQuestions1, allQuestions2, allQuestions3, allQuestions4]
    
    static var allQuestions = [
        Question(questionText: "What was the first computer bug?", possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2),
        Question(questionText: "How many Harry Potter movies are there?", possibleAnswers: ["5", "6", "7", "8"], correctAnswerIndex: 3),
        Question(questionText: "Which Avenger other than Captain America was able to pick up Thor's hammer in Avengers?", possibleAnswers: ["Hulk", "Vision", "Scarlet Witch", "Iron-Man"], correctAnswerIndex: 1),
        Question(questionText: "What was the first non-English-language film to win Best Picture at the Oscars?", possibleAnswers: ["Slumdog Millionare", "Persepolis", "Parasite", "La vita è bella"], correctAnswerIndex: 2),
        Question(questionText: "What is the longest-running animated television show in the United States??", possibleAnswers: ["Phineas & Ferb", "Courage", "Spongebob", "The Simpsons"], correctAnswerIndex: 3),
        Question(questionText: "How many faces does a Dodecahedron have??", possibleAnswers: ["9", "12", "14", "16"], correctAnswerIndex: 1),
        Question(questionText: "What car manufacturer had the highest revenue in 2020?", possibleAnswers: ["Volkswagen", "Toyota", "Tesla", "Hyundai"], correctAnswerIndex: 0),
        Question(questionText: "What country has won the most World Cups?", possibleAnswers: ["England", "Germany", "Brazil", "France"], correctAnswerIndex: 2),
        Question(questionText: "How many bones do we have in an ear?", possibleAnswers: ["0", "1", "3", "4"], correctAnswerIndex: 2),
        Question(questionText: "A group of pandas is known as a/n?", possibleAnswers: ["Murder", "Embarassment", "Team", "School"], correctAnswerIndex: 1),
    
    ]
    
//    static var allQuestions2 = [
//        Question(questionText: "What was the first computer bug?", possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2),
//        Question(questionText: "How many Harry Potter movies are there?", possibleAnswers: ["5", "6", "7", "8"], correctAnswerIndex: 3),
//        
//    ]
//    static var allQuestions3 = [
//        Question(questionText: "What was the first computer bug?", possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2),
//        Question(questionText: "How many Harry Potter movies are there?", possibleAnswers: ["5", "6", "7", "8"], correctAnswerIndex: 3),
//        Question(questionText: "Which Avenger other than Captain America was able to pick up Thor's hammer in Avengers?", possibleAnswers: ["Hulk", "Vision", "Scarlet Witch", "Iron-Man"], correctAnswerIndex: 1),
//        
//    ]
//    static var allQuestions4 = [
//        Question(questionText: "What was the first computer bug?", possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2),
//        Question(questionText: "How many Harry Potter movies are there?", possibleAnswers: ["5", "6", "7", "8"], correctAnswerIndex: 3),
//        Question(questionText: "Which Avenger other than Captain America was able to pick up Thor's hammer in Avengers?", possibleAnswers: ["Hulk", "Vision", "Scarlet Witch", "Iron-Man"], correctAnswerIndex: 1),
//        Question(questionText: "What was the first non-English-language film to win Best Picture at the Oscars?", possibleAnswers: ["Slumdog Millionare", "Persepolis", "Parasite", "La vita è bella"], correctAnswerIndex: 2)
//    ]
//    

    
}
