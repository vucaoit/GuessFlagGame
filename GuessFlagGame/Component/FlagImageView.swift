//
//  FlagImageView.swift
//  GuessFlagGame
//
//  Created by vdcao on 4/5/23.
//

import SwiftUI

struct FlagImageView: View {
    @Binding var correctAnswer : Int
    @Binding var countries : [String]
    @Binding var scoreTitle : String
    @Binding var showingScore : Bool
    @Binding var score : Int
    var body: some View {
        ForEach(0..<3) { number in
            Button {
                flagTapped(number)
            } label: {
                Image(countries[number].lowercased())
                    .renderingMode(.original)
                    .shadow(radius: 5)
            }
        }
    }
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
}
