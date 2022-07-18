//
//  ScoreView.swift
//  PopTrivia
//
//  Created by Karteikay Dhuper on 7/15/22.
//

import SwiftUI

struct ScoreView: View {
    
    let viewModel: ScoreViewModel
    
    let mainColor = Color(red: 52/255, green: 182/255, blue: 113/255)
    let accentColor = Color(red: 24/255 , green: 28/255, blue: 79/255)
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Final Score:")
                    .font(.title2)
                    .bold()
                    .padding()
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .fontWeight(.heavy)
                    .padding()
                
                Spacer()
                Text("\(viewModel.correctGuesses)  ✔️")
                    .font(.system(size: 30))
                    .bold()
                Text("\(viewModel.incorrectGuesses)  ❌")
                    .font(.system(size: 30))
                    .bold()
                Spacer()
                NavigationLink(destination: GameView(), label:{
                    BottomTextView(str: "Re-take Quiz")
                })
            }.foregroundColor(accentColor)
                .navigationBarHidden(true)
            
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
