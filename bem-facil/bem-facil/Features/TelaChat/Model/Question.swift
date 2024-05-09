//
//  Question.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 08/05/24.
//

import Foundation

struct Question {
    var pattern: String
    var response: String
    
    static let mockQuestionsPatterns: [Question] = [
        Question(pattern: "bolsa jovem|como recebo o bolsa jovem",
                 response: "Você pode se cadastrar para o Bolsa Jovem em..."),
        Question(pattern: "beneficios|quais beneficios tenho direito sendo baixa renda",
                 response: "Os benefícios disponíveis para pessoas de baixa renda incluem..."),
        Question(pattern: "dignidade menstrual|como acessar dignidade menstrual",
                 response: "Para acessar a dignidade menstrual, você pode..."),
        Question(pattern: "bolsa familia|como receber bolsa familia",
                 response: "Para receber o Bolsa Família, é necessário..."),
        Question(pattern: "juventude digital|como participar juventude digital",
                 response: "Para participar da Juventude Digital, siga os passos..."),
        Question(pattern: "auxilios gas|como solicitar auxilios gas",
                 response: "Para solicitar auxílios gás, você precisa...")
    ]
}
