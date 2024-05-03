//
//  TabTela.swift
//  bem-facil
//
//  Created by User on 03/05/24.
//

import SwiftUI

struct TabTela: View {
    var body: some View {
        TabView {
            Telainicio()
                .tabItem {
                    Image( systemName: "house")
                    Text("Inicio ")
                }
            FaqTela()
                .tabItem {
                    Image( systemName: "questionmark.bubble")
                    Text("Inicio ")
                }
        }
    }
}



#Preview {
    TabTela()
}
