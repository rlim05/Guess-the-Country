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
                Question(correctAnswer: Answer(text: "Hungary", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Iceland", isCorrect: false),
                                            Answer(text: "Romania", isCorrect: false),
                                            Answer(text: "Ireland", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Ireland", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Iceland", isCorrect: false),
                                            Answer(text: "Saudi Arabia", isCorrect: false),
                                            Answer(text: "Switzerland", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Venezuela", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Uruguay", isCorrect: false),
                                            Answer(text: "Thailand", isCorrect: false),
                                            Answer(text: "Spain", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Turkey", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Russia", isCorrect: false),
                                            Answer(text: "Poland", isCorrect: false),
                                            Answer(text: "Netherlands", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Ukraine", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Vietnam", isCorrect: false),
                                            Answer(text: "Indonesia", isCorrect: false),
                                            Answer(text: "Greece", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Russia", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Sweden", isCorrect: false),
                                            Answer(text: "Mexico", isCorrect: false),
                                            Answer(text: "Iran", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Netherlands", isCorrect: true),
                         incorrectAnswers: [Answer(text: "India", isCorrect: false),
                                            Answer(text: "Guatemala", isCorrect: false),
                                            Answer(text: "France", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Cuba", isCorrect: true),
                         incorrectAnswers: [Answer(text: "New Zealand", isCorrect: false),
                                            Answer(text: "Taiwan", isCorrect: false),
                                            Answer(text: "Italy", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Italy", isCorrect: true),
                         incorrectAnswers: [Answer(text: "France", isCorrect: false),
                                            Answer(text: "Germany", isCorrect: false),
                                            Answer(text: "Poland", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Poland", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Brazil", isCorrect: false),
                                            Answer(text: "Sweden", isCorrect: false),
                                            Answer(text: "Spain", isCorrect: false)]),
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
                                            Answer(text: "Australia", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "France", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Spain", isCorrect: false),
                                            Answer(text: "Italy", isCorrect: false),
                                            Answer(text: "Germany", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Germany", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Hungary", isCorrect: false),
                                            Answer(text: "Italy", isCorrect: false),
                                            Answer(text: "United Kingdom", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "China", isCorrect: true),
                         incorrectAnswers: [Answer(text: "South Korea", isCorrect: false),
                                            Answer(text: "Japan", isCorrect: false),
                                            Answer(text: "Vietnam", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "Brazil", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Mexico", isCorrect: false),
                                            Answer(text: "United States of America", isCorrect: false),
                                            Answer(text: "Canada", isCorrect: false)]),
                Question(correctAnswer: Answer(text: "United States of America", isCorrect: true),
                         incorrectAnswers: [Answer(text: "Canada", isCorrect: false),
                                            Answer(text: "United Kingdom", isCorrect: false),
                                            Answer(text: "Australia", isCorrect: false)])]
    
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
