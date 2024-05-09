//
//  TabView.swift
//  bem-facil
//
//  Created by Cauan Lopes Galdino on 07/05/24.
//

import SwiftUI

struct TabViewContent: View {
    var body: some View {
        
        TabView {
            Telainicio()
                .tabItem {
                    Label("Programas", systemImage: "house.fill" )
                }
            ChatBot()
                .tabItem {
                    Label("Dúvidas", systemImage: "questionmark")
                }
            Text("Pontos")
                .tabItem {
                    Label("Pontos", systemImage: "map.fill")
                }
        }
//        .accentColor()
    }
}

#Preview {
    TabViewContent()
}
