//
//  CountryQuestionView.swift
//  Guess the Country
//
//  Created by Student on 5/13/22.
//

import SwiftUI

struct CountryQuestionView: View {
    @EnvironmentObject var quizManager: QuizManager
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Guess That Country!")
                    .foregroundColor(Color("AccentColor"))
                    .font(.title)
                    .fontWeight(.heavy)
                Text("\(quizManager.index + 1) out of (\(quizManager.length)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: quizManager.progress)
            VStack(spacing: 20) {
                Text("Which Country Is This?")
                    .font(.title)
                Image(quizManager.country)
                    .resizable()
                    .frame(width: 300, height: 200)
                ForEach(quizManager.answerChoices) { answer in
                    AnswerRow(answer: answer)
                        .environmentObject(quizManager)
                }
            }
            Button{
                quizManager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Next", background: quizManager.answerSelected ? Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
            }
            .disabled(!quizManager.answerSelected)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
        .navigationBarHidden(true)
    }
}

struct CountryQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        CountryQuestionView()
            .environmentObject(QuizManager())
    }
}

