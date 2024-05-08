//
//  ChatBot.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 07/05/24.
//

import SwiftUI

struct ChatBot: View {
    @State private var messageText = ""
    @ObservedObject var viewModel = ChatBotViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text("FAQ +Ben")
                    .font(.title)
                    .bold()
                Image(systemName: "bubble.left.fill")
                    .font(.system(size: 26))
                    .foregroundColor(Color("azul"))
            }
            ScrollView {
                ForEach(viewModel.messages, id: \.self) { messsage in
                    if messsage.contains("[USER]") {
                        let newMessage = messsage.replacingOccurrences(of: "[USER]", with: "")
                        HStack {
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(.white)
                                .background(.blue.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal,16)
                                .padding(.bottom,10)
                        }
                    } else {
                        HStack {
                            Text(messsage)
                                .padding()
                                .background(.gray.opacity(0.15))
                                .cornerRadius(10)
                                .padding(.horizontal,16)
                                .padding(.bottom,10)
                            Spacer()
                        }
                    }
                }.rotationEffect(.degrees(180))
            }.rotationEffect(.degrees(180))
                .background(Color.gray.opacity(0.10))
            HStack {
                TextField("Digite sua dúvida", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        sendMessage()
                    }
                Button(action: sendMessage) {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(Color("azul"))
                }
                .font(.system(size: 26))
                .padding(.horizontal, 10)
            }
            .padding()
            
        }
    }
    func sendMessage() {
        viewModel.sendMessage(message: messageText)
        messageText = "
    }
    
    
}
#Preview {
    ChatBot()
}
