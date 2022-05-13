//
//  CountryQuizView.swift
//  Guess the Country
//
//  Created by Student on 5/13/22.
//

import SwiftUI

struct CountryQuizView: View {
    @EnvironmentObject var quizManager: QuizManager
    var body: some View {
        if quizManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Country Quiz")
                    .font(.title)
                Text("Congratulations! you have completed the quiz.")
                Text("You scored \(quizManager.score) out of \(quizManager.length)")
                Button {
                    quizManager.reset()
                } label: {
                    PrimaryButton(text: "Play Again")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
        }// QuestionView
        else {
            QuestionView()
                .environmentObject(quizManager)
        }
    }
}

struct CountryQuizView_Previews: PreviewProvider {
    static var previews: some View {
        CountryQuizView()
            .environmentObject(QuizManager())
    }
}


