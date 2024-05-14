//
//  CardInicial.swift
//  bem-facil
//
//  Created by Kamylly Ferreira da Paixão on 07/05/24.
//

import SwiftUI

//Aqui é so o componente, não os scr
struct CardInicial: View {
    var model: CardInfoModel
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack {
                
                ForEach(0 ..< InitialCardInfo.mockInfos.count) { card in
                    ZStack {
                        Text(InitialCardInfo.mockInfos[card].title)
                            .font(.system(size:28, weight:.bold ))
                            .padding(.trailing, 190)
                            .padding(.bottom, 100)
                        
                        Spacer()
                        HStack {
                            VStack {
                                ForEach(0 ..< InitialCardInfo.mockInfos[card].info.count) { info in
                                    Text(InitialCardInfo.mockInfos[card].info[info])
                                }
                            }
                            .padding(.leading, 50)
                            
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
                    .frame(width: .infinity, height: 200)
                    
                }
            }
        }
        .scrollIndicators(.hidden)
    }
    
}
        
            


#Preview {
    CardInicial(model: CardInfoModel(title: "", subTitle: "" , image: "star.fill"))
        .background(content: {
            Rectangle()
                .frame(width: 500, height: 500)
                .foregroundStyle(.blue)
        })
}
