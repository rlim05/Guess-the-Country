//
//  QuizView.swift
//  Guess the Country
//
//  Created by Student on 5/12/22.
//

import SwiftUI
 
struct QuizView: View {
    @EnvironmentObject var quizManager: QuizManager
    var body: some View {
        if quizManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Country Flag Quiz")
                    .font(.title)
                Text("Congratulations! you have completed the quiz.")
                Text("You scored \(quizManager.score) out of \(quizManager.length)")
                Button {
                    quizManager.reset()
                } label: {
                    PrimaryButton(text: "Play Again")
                }
            }
            .foregroundColor(.black)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
        }
        else {
            QuestionView()
                .environmentObject(quizManager)
        }
    }
}
 
struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
            .environmentObject(QuizManager())
    }
}
