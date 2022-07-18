//
//  WelcomeView.swift
//  PopTrivia
//
//  Created by Karteikay Dhuper on 7/13/22.
//

import SwiftUI

struct WelcomeView: View {
    
    var mainColor = Color(red: 52/255, green: 182/255, blue: 113/255)
    let accentColor = Color(red: 24/255 , green: 28/255, blue: 79/255)

    var body: some View {
        NavigationView
        {
            ZStack{
                mainColor.ignoresSafeArea()
                VStack(alignment: .leading, spacing: 0)
                {
                    Text("Welcome to PopTrivia!")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .bold()
                        .padding()
                    
                    Text("Select the correct answers to the following general knowledge questions.")
                        .font(.title2)
                        .fontWeight(.black)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: GameView(),
                            label: {
                                HStack {
                                    Spacer()
                                    Text("Okay, let's go!")
                                        .font(.title2)
                                                .bold()
                                                .padding()
                                    Spacer()
                                }
                                .frame(height: 120)
                                .background(accentColor)
                            }
                    ).foregroundColor(mainColor)
                    
                }
            }
            .foregroundColor(accentColor)
        }
    }

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
        }
    }
}
