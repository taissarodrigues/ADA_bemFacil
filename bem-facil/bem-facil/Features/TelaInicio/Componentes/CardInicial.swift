//
//  CardInicial.swift
//  bem-facil
//
//  Created by Kamylly Ferreira da Paixão on 07/05/24.
//

import SwiftUI

struct CardInicial: View {
    var body: some View {
        
        ScrollView(.horizontal) {
            
            HStack {
                ForEach(0..<5) { _ in
                    VStack {
                        Text("Programa")
                            .font(.system(size:28, weight:.bold ))
                            .padding(.trailing, 200)
                            .padding(.top, 30)
                        
                        Spacer()
                        HStack {
                            Text("Informações")
                            Spacer().frame(width: 220)
                        }
                        
                        .padding(.top,-76)
                        HStack {
                            Text("Informações")
                            Spacer().frame(width: 200)
                            Image(systemName: "star.fill")
                        }
                        .padding(.top, -120)
                        
                        HStack {
                            Text("Informações")
                            Spacer().frame(width: 220)
                        }
                        .padding(.top, -63)
                        
                        
                    }
                    .padding(.horizontal, 30)
                    
                    .frame(width: .infinity, height: 200)
                    .background(
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: .infinity, height: 170)
                            .cornerRadius(25.0)
                            .frame(width: 370, height: 170)
                    )
                    
                }
            }
        }
        .scrollIndicators(.hidden)
    }
    
}
        
            


#Preview {
    CardInicial()
        .background(content: {
            Rectangle()
                .frame(width: 500, height: 500)
                .foregroundStyle(.blue)
        })
}
