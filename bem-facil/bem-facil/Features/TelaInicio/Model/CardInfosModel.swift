//
//  CardInfosModel.swift
//  bem-facil
//
//  Created by Vitor Costa on 10/05/24.
//

import SwiftUI

struct CardInfoModel: Identifiable {
    var id = UUID()
    var title: String
    var subTitle: String
    var image: Image
    
    static let date: [CardInfoModel] = [
        CardInfoModel(title: "Pé de meia", subTitle: "Educação", image: Image(.pedemeia)),
        CardInfoModel(title: "Bolsa Familia", subTitle: "Saúde", image: Image(.bolsafamilia)),
        CardInfoModel(title: "Bolsa Jovem", subTitle: "Educação", image: Image(.bolsaAtleta)),
        CardInfoModel(title: "Fies", subTitle: "Educação", image: Image(.desenrolaFies)),
        CardInfoModel(title: "Farmacia Popular", subTitle: "Saúde", image: Image(.farmacia)),
        CardInfoModel(title: "Minha Casa,Minha Vida", subTitle: "Educação", image: Image(.mcmv)),
        CardInfoModel(title: "Dignidade Menstrual", subTitle: "Saúde", image: Image(.pedemeia)),
    ]
}
