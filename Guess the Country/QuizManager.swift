//
//  QuizManager.swift
//  Guess the Country
//
//  Created by Student on 5/12/22.
//

import Foundation
import SwiftUI

class QuizManager: ObservableObject {
    var questions = Questions().data
    @Published private(set) var length = 0
    @Published private(set) var index = 0
    @Published private(set) var reachedEnd = false
    @Published private(set) var answerSelected = false
    @Published private(set) var flag = ""
    @Published private(set) var answerChoices = [Answer]()
    @Published private(set) var progress: CGFloat = 0.0
    @Published private(set) var score = 0
    
    init() {
        reset()
    }
    func reset() {
        questions = questions.shuffled()
        length = questions.count
        index = -1
        score = 0
        progress = 0.0
        reachedEnd = false
        goToNextQuestion()
    }
    
    func goToNextQuestion() {
        if index + 1 < length {
            index += 1
            setQuestion()
        }
        else {
            reachedEnd = true
        }
    }
    func setQuestion() {
        answerSelected = false
        progress = CGFloat((index + 1) / length * 350)
        if index < length {
            let currentQuizQuestion = questions[index]
            flag = currentQuizQuestion.correctAnswer.text
            answerChoices = ([currentQuizQuestion.correctAnswer] + currentQuizQuestion.incorrectAnswers).shuffled()
        }
    }
    
    func selectAnswer(answer: Answer) {
        answerSelected = true
        if answer.isCorrect {
            score += 1
        }
    }
}
