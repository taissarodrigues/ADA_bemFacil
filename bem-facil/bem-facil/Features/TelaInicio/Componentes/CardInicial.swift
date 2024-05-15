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
                    .font(.system(size: 28, weight: .bold ))
                    .padding(.trailing, 190)
                    .padding(.bottom, 100)
                
                Spacer()
                HStack {
                    VStack(alignment: .leading) {
                        ForEach(model.info, id: \.self) { info in
                            Text(info)
                                .padding(.leading, 30)
                                .offset(CGSize(width: 10.0, height: 10.0))
                        }
                    }
                    .padding(.leading, 50)
                    
                    Spacer()
                    Image(.pedemeia)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.bottom)
                        .padding(.trailing, 60)
                }
            }
            .padding(.horizontal, 10)
            .background(
                Rectangle()
                    .fill(Color.white)
                    .frame(height: 170)
                    .cornerRadius(25.0)
                    .frame(width: 350, height: 140)
            )
        }
        .frame(maxWidth: .infinity)
        .frame(height: 140)
    }
    
}

#Preview {
    TabView {
        ForEach(0..<InitialCardInfo.mockInfos.count) {
            CardInicial(model: InitialCardInfo.mockInfos[$0])
                .cornerRadius(8.0)
                .frame(width: 530)
                .padding(.trailing)
                .border(.black)
        }
    }
    .tabViewStyle(.page(indexDisplayMode: .always))
    .frame(height: 200)
}
