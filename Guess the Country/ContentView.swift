//
//  ContentView.swift
//  Guess the Country
//
//  Created by Student on 5/12/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var quizManager = QuizManager()
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                Text("Guess That Flag!")
                    .font(.title)
                    .fontWeight(.heavy)
                }
            NavigationLink {
                FlagQuizView()
                    .environmentObject(quizManager)
            } label: {
            PrimaryButton(text: "Start")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
