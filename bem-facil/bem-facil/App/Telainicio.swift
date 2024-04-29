//
//  ContentView.swift
//  bem-facil
//
//  Created by User on 24/04/24.
//

import SwiftUI

struct Telainicio: View {
    var body: some View {
        VStack {
            Image(systemName: "globesdsd")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            
            //Teste
            Text("Hello, world!")
        }
        .background(Color("azulPrincipal"))
        .padding()
    }
}

#Preview {
    Telainicio()
}
