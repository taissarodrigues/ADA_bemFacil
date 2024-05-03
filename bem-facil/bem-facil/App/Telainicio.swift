//
//  ContentView.swift
//  bem-facil
//
//  Created by User on 24/04/24.
//

import SwiftUI

struct Telainicio: View {
    var body: some View {
        VStack (alignment: .leading)  {
            Text("Bem vindo ao + Ben")
                .font(.title2)
                .bold()
                .padding(.leading)
                .padding(.top, 20)
        
          Spacer()
            
            
       
        ScrollView(.horizontal) {
            HStack(spacing:20){
                ForEach(0..<10) {
                    Text("Item \($0)")
                        .foregroundStyle(.red)
                        .font(.largeTitle)
                        .frame(width: 300, height: 160)
                        .background(.red)
                        .cornerRadius(10.0)
                    
            
                }
                
                ScrollView(.horizontal) {
                    
                }
            }
            Spacer()
            
        }
            Text("Programas")
                .font(.title2)
                .bold()
                .padding(.bottom, 500)
        }
        

//        TabTela()
    }
    
}

#Preview {
    TabTela()
}
