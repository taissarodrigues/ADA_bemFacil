//
//  Card.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 09/05/24.
//

import SwiftUI

struct CustomCard: View {
    
    var model: Model
    
    var body: some View {
        ZStack {
            Image(uiImage: model.image)
                .aspectRatio(contentMode: .fill)
                .frame(width: 159, height: 123)
            
            
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
        .background(Color.white.opacity(0)
            .frame(width: 163, height: 163)
            .cornerRadius(20)
            .overlay(
                LinearGradient(gradient: Gradient(colors: [(Color.benUi(.azulClaro)).opacity(3), Color.benUi(.azul).opacity(0.5)]),
                               startPoint: .center, endPoint: .bottom)
                            )
        )
    }
    
}
#if DEBUG
#Preview {
    CustomCard(model: Model(title: "Pé de Meia", subTitle: "Educação", image: UIImage(imageLiteralResourceName: "imageCard1")))
}
#endif
