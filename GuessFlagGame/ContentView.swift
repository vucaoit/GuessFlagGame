//
//  ContentView.swift
//  GuessFlagGame
//
//  Created by vdcao on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                Text("Score : \(score)")
                    .foregroundColor(.white)
                    .font(.largeTitle.weight(.semibold))
               QuestionView(correctAnswer: $countries[correctAnswer])
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Score: \(score)")
                .foregroundColor(.secondary)
                .font(.title.bold())
        }
        FlagImageView(correctAnswer: $correctAnswer, countries: $countries, scoreTitle: $scoreTitle, showingScore: $showingScore, score: $score)
    }
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}
