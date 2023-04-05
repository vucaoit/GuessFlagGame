//
//  QuestionView.swift
//  GuessFlagGame
//
//  Created by vdcao on 4/5/23.
//

import SwiftUI

struct QuestionView: View {
    @Binding var correctAnswer : String
    var body: some View {
        VStack(spacing: 30) {
            Text("Guess the Flag")
                .font(.largeTitle.weight(.bold))
                .foregroundColor(.white)
            Text(correctAnswer)
                .foregroundColor(.white)
                .font(.largeTitle.weight(.semibold))
        }
        .padding(.vertical, 20)
        .padding(.horizontal,20)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}
