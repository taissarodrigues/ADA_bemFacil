//
//  BotResponse.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 07/05/24.
//

import Foundation

func getResponse(message: String) -> String {
    let tempMessage = message.lowercased().folding(options: .diacriticInsensitive, locale: nil)
    
    let questionPatterns: [(pattern: String, response: String)] = [
        ("bolsa jovem|como recebo o bolsa jovem", "Você pode se cadastrar para o Bolsa Jovem em..."),
        ("beneficios|quais beneficios tenho direito sendo baixa renda", "Os benefícios disponíveis para pessoas de baixa renda incluem..."),
        ("dignidade menstrual|como acessar dignidade menstrual", "Para acessar a dignidade menstrual, você pode..."),
        ("bolsa familia|como receber bolsa familia", "Para receber o Bolsa Família, é necessário..."),
        ("juventude digital|como participar juventude digital", "Para participar da Juventude Digital, siga os passos..."),
        ("auxilios gas|como solicitar auxilios gas", "Para solicitar auxílios gás, você precisa...")
    ]
    
    for (pattern, response) in questionPatterns {
        if tempMessage.range(of: ".*\\b(\(pattern))\\b.*", options: .regularExpression) != nil {
            return response
    }
    }
    
    if tempMessage.range(of: ".*\\b(ola|hola|oi)\\b.*", options: .regularExpression) != nil {
        return "Olá! Bem-vindo mais bem."
    } else if tempMessage.range(of: ".*\\b(tchau|adeus|bye)\\b.*", options: .regularExpression) != nil {
        return "Obrigado pelo contato. Até mais!"
    }
    
    return "Desculpe, não entendi. Por favor, tente novamente ou entre em contato conosco para obter mais ajuda."
}
