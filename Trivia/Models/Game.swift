//
//  Game.swift
//  Trivia
//
//  Created by Kaan Uzun on 6.07.2024.
//

import Foundation

struct Game {
    private(set) var guesses = [Question: Int]() //Answered questions
    private(set) var currentQuestionIndex = 0 //to track questions
    private(set) var isOver = false //To track game ended or not
    private let questions = Question.allQuestions.shuffled()
    
    
    //Will update the guessed index for a spesific question
    mutating func makeGuessForCurrentQuestion(atIndex index: Int){
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus(){
        if currentQuestionIndex < questions.count - 1{
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
    
    var numberOfQuestions: Int {
        questions.count
    }
    
    var currentQuestion: Question{
        questions[currentQuestionIndex]
    }
    
}
