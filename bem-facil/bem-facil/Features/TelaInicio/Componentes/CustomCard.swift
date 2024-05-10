//
//  Card.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 09/05/24.
//

import SwiftUI

struct CustomCard: View {
    
    var model: CardInfoModel
    
    var body: some View {
        ZStack {
            model.image
                .aspectRatio(contentMode: .fill)
                .frame(width: 159, height: 123)
            LinearGradient(gradient: Gradient(colors: [(Color.benUi(.azul3)),
                                                       Color.benUi(.azul)]),
                           startPoint: .center, endPoint: .bottom)
            .opacity(0.3)
            .frame(width: 163,height: 163)
            .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(model.title)
                    .font(.system(size: 17, weight: .bold))
                    .shadow(radius: 5)
                    .foregroundStyle(.white)
                    .padding(.top,80)
                
                Text(model.subTitle)
                    .font(.system(size: 12))
                    .foregroundColor(Color.benUi(.azul))
                    .padding(0.10)
                    .background(
                        Rectangle()
                            .frame(width: 65, height: 20)
                            .cornerRadius(100)
                            .foregroundColor(Color.benUi(.azulClaro))
                    )
            }
            .offset(x: -25)
            .padding(.top,25)
            
        }
        .background(Color.benUi(.azulClaro)
            .frame(width: 163, height: 163)
            .cornerRadius(20)
                    
        )
    }
    
}

#Preview {
    CustomCard(model: CardInfoModel(title: "Pé de Meia", subTitle: "Educação", image: Image(.imageCard1)))
}
