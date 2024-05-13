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
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.benUi(.azulClaro))
                .frame(width: 163, height: 163)
            model.image
            
            LinearGradient(gradient: Gradient(colors: [(
                Color.benUi(.azul3)),
                Color.benUi(.azul)
            ]),
            startPoint: .center, endPoint: .bottom)
            .opacity(0.3)
            .frame(width: 163,height: 163)
            .mask(RoundedRectangle(cornerRadius: 20))
            
            VStack(alignment: .leading, spacing: -25){
                Text(model.title)
                    .font(.system(size: 17, weight: .bold))
                    .foregroundStyle(.white)
                    .shadow(radius: 5)
                    .padding()

                Text(model.subTitle)
                    .padding(5)
                    .font(.system(size: 12))
                    .foregroundColor(Color.benUi(.azul))
                    .background(
                        Rectangle()
                            .foregroundStyle(Color.azulClaro)
                            .cornerRadius(20)
                    ).padding()

            }
            .frame(maxWidth: 163, alignment: .leading)
                .frame(maxHeight: 163, alignment: .bottom)
        
        }
        
    }
}

#Preview {
    CustomCard(model: CardInfoModel(title: "Pé de Meia", subTitle: "Saúde", image: Image(.imageCard1)))
}
