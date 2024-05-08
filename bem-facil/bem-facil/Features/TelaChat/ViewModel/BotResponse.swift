//
//  BotResponse.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 07/05/24.
//

import Foundation

func getResponse(message: String) -> String {
    let tempMessage = message.lowercased().folding(options: .diacriticInsensitive, locale: nil)
    
    let questionPatterns: [Question] = Question.mockQuestionsPatterns
    
    for question in questionPatterns {
        if tempMessage.range(of: ".*\\b(\(question.pattern))\\b.*", options: .regularExpression) != nil {
            return question.response
        }
    }
    
    if tempMessage.range(of: ".*\\b(ola|hola|oi)\\b.*", options: .regularExpression) != nil {
        return "Olá! Bem-vindo mais bem."
    } else if tempMessage.range(of: ".*\\b(tchau|adeus|bye)\\b.*", options: .regularExpression) != nil {
        return "Obrigado pelo contato. Até mais!"
    }
    
    return "Desculpe, não entendi. Por favor, tente novamente ou entre em contato conosco para obter mais ajuda."
}
