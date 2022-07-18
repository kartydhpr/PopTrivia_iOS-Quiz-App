//
//  QuestionView.swift
//  PopTrivia
//
//  Created by Karteikay Dhuper on 7/15/22.
//

import SwiftUI

struct QuestionView: View {

    @EnvironmentObject var viewModel: GameViewModel
    let question: Question

    var body: some View {
        
        VStack{
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .frame(width: 350)
                .multilineTextAlignment(.leading)
                .padding()
            Spacer()

            VStack
            {
                ForEach(0..<question.possibleAnswers.count)
                {
                    answerIndex in
                    Button(action:
                        {
                            print("Tapped on \(question.possibleAnswers[answerIndex])")
                        viewModel.makeGuess(atIndex: answerIndex)
//                            mainColor = answerIndex == question.correctAnswerIndex ? Color(red: 124/255, green: 252/255, blue: 0/255) : .red
                        },
                        label:
                        {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                    }).disabled(viewModel.guessWasMade)
                }

            }
            Spacer()
            
            if viewModel.guessWasMade{
                Button(action: { viewModel.displayNextScreen() }){
                    BottomTextView(str: "Next")
                }
            }
        }
        
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
