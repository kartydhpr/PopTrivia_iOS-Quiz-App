//
//  ChoiceTextView.swift
//  PopTrivia
//
//  Created by Karteikay Dhuper on 7/9/22.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
    let accentColor = Color(red: 24/255 , green: 28/255, blue: 79/255)
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .frame(width:300)
            .border(accentColor, width: 5)
            .cornerRadius(5)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text")
    }
}
