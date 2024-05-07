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
            Text("adasd")
                .tabItem {
                    Label ("First", systemImage: "1.circle" )
                }
        }
    }
}

#Preview {
    TabViewContent()
}

