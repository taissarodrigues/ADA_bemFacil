//
//  CardInicial.swift
//  bem-facil
//
//  Created by Kamylly Ferreira da Paixão on 07/05/24.
//

import SwiftUI

struct CardInicial: View {
    var body: some View {
            HStack {
            Rectangle()
                    .fill(Color.white)
                .frame(width: 360, height: 200)
                .cornerRadius(25.0)
                .overlay(
            Rectangle()
                .fill(Color.white)
                .frame(width: 160, height: 160)
                .cornerRadius(25.0)
                .padding(.leading, 160)
            )
                }
                .frame(width:370, height: 170)
                .shadow(color: .black.opacity(10.0) , radius: 10.0, x: 0.0, y: 0.0)
            
}
    
        }
    

#Preview {
    CardInicial()
}
