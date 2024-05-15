//
//  CardInicial.swift
//  bem-facil
//
//  Created by Kamylly Ferreira da Paixão on 07/05/24.
//

import SwiftUI

//Aqui é so o componente, não os scr
struct CardInicial: View {
    var model: InitialCardInfo
    var body: some View {
        HStack {
            ZStack {
                Text(model.title)
                    .font(.system(size:28, weight:.bold ))
                    .padding(.trailing, 190)
                    .padding(.bottom, 100)
                
                Spacer()
                HStack {
                    VStack {
                        ForEach(model.info, id: \.self) { info in
                            Text(info)
                        }
                    }
                    .padding(.leading,50)
                    
                    Spacer()
                    Image(.pedemeia)
                        .resizable()
                        .frame(width: 100,height: 100)
                        .padding(.bottom)
                        .padding(.trailing, 40)
                }
            }
            .padding(.horizontal, 10)
            .background(
                Rectangle()
                    .fill(Color.white)
                    .frame(width: .infinity, height: 170)
                    .cornerRadius(25.0)
                    .frame(width: 370, height: 170)
            )
        }
        .frame(width: .infinity, height: 140)
    }
    
}




#Preview {
    CardInicial(model: InitialCardInfo(title: "Pé de Meia", info: ["asdasdsadasdasdasd", "asdasdsadsadsadadasd"] , image: Image(.pedemeia)))
        .background(content: {
            Rectangle()
                .frame(width: 500, height: 500)
                .foregroundStyle(.blue)
        })
}
