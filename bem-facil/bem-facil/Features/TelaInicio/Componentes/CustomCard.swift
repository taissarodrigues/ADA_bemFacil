//
//  Card.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 09/05/24.
//

import SwiftUI

struct CustomCard: View {
    
    var model: ProgramsModel
    
    var body: some View {
           ZStack {
               RoundedRectangle(cornerRadius: 20)
                   .foregroundColor(Color.benUi(.azulClaro))
                   .frame(width: 163, height: 163)
               Image(model.image)
               
               LinearGradient(gradient: Gradient(colors: [(
                   Color.benUi(.azul3)),
                   Color.benUi(.azul)
               ]),
               startPoint: .center, endPoint: .bottom)
               .opacity(0.3)
               .frame(width: 163,height: 163)
               .mask(RoundedRectangle(cornerRadius: 20))
               
               VStack(alignment: .leading, spacing: -25) {
                   Text(model.title)
                       .font(.system(size: 17, weight: .bold))
                       .foregroundStyle(.white)
                       .shadow(radius: 5)
                       .padding()

                   Text(model.category)
                       .padding(5)
                       .font(.system(size: 12))
                       .foregroundColor(Color.benUi(.azul))
                       .background(
                           Rectangle()
                                .cornerRadius(20)
                               .foregroundColor(Color.benUi(.azulClaro))
                       ).padding()

               }.frame(maxWidth: 163, alignment: .leading)
                   .frame(maxHeight: 163, alignment: .bottom)
           
           }
           
       }
   }

#Preview {
    CustomCard(model: ProgramsModel(title: "Pé de Meia", category: "Educação", image: "pedemeia"))
}
