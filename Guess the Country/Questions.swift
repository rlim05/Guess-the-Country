//
//  Questions.swift
//  Guess the Country
//
//  Created by Student on 5/12/22.
//

import Foundation

struct Questions {
    var data = [Question(correctAnswer: Answer(text: "Australia", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Canada", isCorrect: false),
                                            Answer(text: "New Zealand", isCorrect: false),
                                            Answer(text: "Hungary", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Japan", isCorrect: true),
                         incorrectAnswers: [Answer(text: "New Zealand", isCorrect: false),
                                            Answer(text: "Indonesia", isCorrect: false),
                                            Answer(text: "Iran", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Mexico", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Netherlands", isCorrect: false),
                                            Answer(text: "Russia", isCorrect: false),
                                            Answer(text: "Puerto Rico", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "South Korea", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Spain", isCorrect: false),
                                            Answer(text: "Romania", isCorrect: false),
                                            Answer(text: "Sweden", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "United Kingdom", isCorrect: true),
                         incorrectAnswers: [Answer(text: "United States of America", isCorrect: false),
                                            Answer(text: "Malaysia", isCorrect: false),
                                            Answer(text: "Australia", isCorrect: false),
                                            Answer(text: "Venezuela", isCorrect: false)])]
}

struct Question: Identifiable {
    var id = UUID()
    var correctAnswer: Answer
    var incorrectAnswers: [Answer]
}

struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var isCorrect: Bool
}
