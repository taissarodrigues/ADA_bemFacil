//
//  CardVielModel.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 10/05/24.
//
import SwiftUI

class CardViewModel: ObservableObject {
    
    static let date: [CardInfoModel] = [
        CardInfoModel(title: "Pé de meia", subTitle: "Educação", image: Image(.imageCard1)),
        CardInfoModel(title: "Bolsa Familia", subTitle: "Saúde", image: Image(.imageCard1)),
        CardInfoModel(title: "Bolsa Jovem", subTitle: "Educação", image: Image(.imageCard1)),
        CardInfoModel(title: "Dignidade Menstrual", subTitle: "Saúde", image: Image(.imageCard1)),
        CardInfoModel(title: "Teste", subTitle: "Saúde", image: Image(.imageCard1)),
        CardInfoModel(title: "Teste1", subTitle: "Saúde", image: Image(.imageCard1))
    ]
}
