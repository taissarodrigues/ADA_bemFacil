//
//  TabView.swift
//  bem-facil
//
//  Created by Cauan Lopes Galdino on 07/05/24.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var chatBotViewModel = ChatBotViewModel()
    
    var body: some View {
        
        TabView {
            Telainicio()
                .tabItem {
                    Label("Programas", systemImage: "house.fill" )
                }
            ChatBot()
                .environmentObject(chatBotViewModel)
                .tabItem {
                    Label("Dúvidas", systemImage: "questionmark")
                }
            TelaMapa()
                .tabItem {
                    Label("Pontos", systemImage: "map.fill")
                }
        }
    }
}

#Preview {
    MainView()
}
