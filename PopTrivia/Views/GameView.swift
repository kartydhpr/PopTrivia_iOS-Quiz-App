//
//  ContentView.swift
//  PopTrivia
//
//  Created by Karteikay Dhuper on 7/5/22.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    let mainColor = Color(red: 52/255, green: 182/255, blue: 113/255)
    let accentColor = Color(red: 24/255 , green: 28/255, blue: 79/255)


    var body: some View {
        ZStack
        {
            mainColor.ignoresSafeArea()
            VStack
            {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .padding()
                
                QuestionView(question: viewModel.currentQuestion)

            }
            .foregroundColor(accentColor)
            .environmentObject(viewModel)
            .navigationBarHidden(true)

        }
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver), label: {EmptyView()})
        
        
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
