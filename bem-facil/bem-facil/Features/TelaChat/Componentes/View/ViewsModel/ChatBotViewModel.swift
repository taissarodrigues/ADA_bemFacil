//
//  ChatBotViewModel.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 08/05/24.
//

import SwiftUI

class ChatBotViewModel: ObservableObject {
    @Published var messages: [String] = ["Bem vindo ao Faq do +Ben"]
    
    func sendMessage(message: String) {
        withAnimation {
            messages.append("[USER]" + message)
//            self.messageText = ""
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let response = getResponse(message: message)
                    self.messages.append(response) 
                }
    }
    
}
#Preview {
    ChatBot()
}
