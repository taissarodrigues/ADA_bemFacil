//
//  BotResponse.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 07/05/24.
//

import Foundation

func getResponse(message: String) -> String {

    let tempMessage = message.lowercased()
    
    let bolsaJovemPattern = ".*\\b(bolsa jovem|como recebo o bolsa jovem)\\b.*"
    let beneficiosBaixaRendaPattern = ".*\\b(beneficios|quais beneficios tenho direito sendo baixa renda)\\b.*"
    let olaPattern = ".*\\b(ola|hola|oi)\\b.*"
    let tchauPattern = ".*\\b(tchau|adeus|bye)\\b.*"
    
    if tempMessage.range(of: bolsaJovemPattern, options: .regularExpression) != nil {
        return "Você pode se cadastrar para o Bolsa Jovem em..."
    } else if tempMessage.range(of: beneficiosBaixaRendaPattern, options: .regularExpression) != nil {
        return "Os benefícios disponíveis para pessoas de baixa renda incluem..."
    } else if tempMessage.range(of: olaPattern, options: .regularExpression) != nil {
        return "Olá! Bem-vindo mais bem."
    } else if tempMessage.range(of: tchauPattern, options: .regularExpression) != nil {
        return "Obrigado pelo contato. Até mais!"
    }
    
    return "Desculpe, não entendi. Por favor, tente novamente ou entre em contato conosco para obter mais ajuda."
}
