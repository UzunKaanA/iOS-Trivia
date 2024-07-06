//
//  Question.swift
//  Trivia
//
//  Created by Kaan Uzun on 2.07.2024.
//

import Foundation

//Hashable structure is a structure that produces a hash value if it's passed through a hashing algorithm
struct Question: Hashable {
    let questionText: String //Store the question
    let possibleAnswers: [String] //Will store an Array of the strings that the view will display answers
    let correctAnswerIndex: Int //Store the correct answer's index of possibleAnswers array
    
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?",
                 possibleAnswers: [
                    "Steve Jobs",
                    "Linus Torvalds",
                    "Bill Gates",
                    "Tim Berners-Lee"
                    ],
                 correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming language?",
                 possibleAnswers: [
                    "Simula",
                    "Python",
                    "Swift",
                    "C"
                 ], correctAnswerIndex: 0)
    
    ]
}
