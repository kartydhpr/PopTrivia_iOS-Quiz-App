//
//  BottomTextView.swift
//  PopTrivia
//
//  Created by Karteikay Dhuper on 7/15/22.
//

import SwiftUI

struct BottomTextView: View {
    
    let str: String
    var mainColor = Color(red: 52/255, green: 182/255, blue: 113/255)
    let accentColor = Color(red: 24/255 , green: 28/255, blue: 79/255)
    
    var body: some View {
        HStack
        {
            Spacer()
            Text(str)
                .font(.title2)
                .bold()
                .padding()
            Spacer()
        }.background(accentColor)
            .foregroundColor(mainColor)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
