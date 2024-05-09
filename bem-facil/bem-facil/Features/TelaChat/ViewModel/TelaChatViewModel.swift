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
            let response = getResponse(message: temporaryMessage)
                    self.messages.append(response)
        }
        self.messageText = ""
    }
    
}
#Preview {
    ChatBot()
}
