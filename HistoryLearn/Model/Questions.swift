//
//  Questions.swift
//  HistoryLearn
//
//  Created by A LINA on 12/5/24.
//

import UIKit

struct Question {
    let text: String
    let options: [String]
    let correctAnswerIndex: Int
}


extension Question {
    static var testQuestions: [Question] {
        return [
            Question(text: "Кыргызстандын аймагында табылган алгачкы адамдардын издери  ... таандык.",
                     options: ["палеолитке", "мезолитке", "неолитке","энеолитке"],
                     correctAnswerIndex: 0),
            
            Question(text: "Окумуштуулар ыйгарымдуу чарбадан өндүрүштүк чарбага өтүүнү ... деп аташкан.",
                     options: ["неолиттик революция", " илимий-техникалык революция", "сооданын өнүгүшү","кол өнөрчүлүк өнүгүшү"],
                     correctAnswerIndex: 0),
            
            Question(text: "Алгачкы эмгек куралы жасалган металл:", options: ["жез", "калай", "коло","темир"],
                     correctAnswerIndex: 0)
        ]
    }
}
