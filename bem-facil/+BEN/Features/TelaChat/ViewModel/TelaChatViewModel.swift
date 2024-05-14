//
//  ChatBotViewModel.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 08/05/24.
//

import SwiftUI

class ChatBotViewModel: ObservableObject {
    @Published var messages: [String] = ["Bem vindo ao Faq do +Ben"]
    @Published var messageText: String = ""
    
    func sendMessage() {
        let temporaryMessage = messageText
        withAnimation {
            messages.append("[USER]" + messageText)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let response = self.getResponse(message: temporaryMessage)
                    self.messages.append(response)
        }
        self.messageText = ""
    }
    
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
    
}
