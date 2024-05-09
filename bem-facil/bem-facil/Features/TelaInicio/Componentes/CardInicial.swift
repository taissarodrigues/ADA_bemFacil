//
//  CardInicial.swift
//  bem-facil
//
//  Created by Kamylly Ferreira da Paixão on 07/05/24.
//

import SwiftUI

struct CardInicial: View {
    var body: some View {
        VStack {
            Text("Programa")
                .font(.system(size:28, weight:.bold ))
                
            
            HStack {
                Text("Informações")
                Spacer().frame(width: 250)
                Image(systemName: "star.fill")
            }
            
            
        }
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


#Preview {
    CardInicial()
        .background(content: {
            Rectangle()
                .frame(width: 500, height: 500)
                .foregroundStyle(.blue)
        })
}
