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
//                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 159, height: 123)
            
            
            Text(model.title)
                .font(.system(size: 17, weight: .bold))
                .padding(.top, 40)
            
            VStack {
                Text(model.subTitle)
                    .font(.system(size: 16))
                    .padding(8)
                    .background(
                        Rectangle()
                            .frame(width: 90, height: 30)
                            .cornerRadius(100)
                            .foregroundColor(Color.gray)
                    )
            }
            .padding(.top, 120)
            
        }
        .background(Color.red
            .frame(width: 163, height: 163)
            .cornerRadius(10)
        )
        .frame(width: 163, height: 163)
    }
    
}
#if DEBUG
#Preview {
    CustomCard(model: Model(title: "Pé de Meia", subTitle: "Educação", image: UIImage(imageLiteralResourceName: "imageCard1")))
}
#endif
