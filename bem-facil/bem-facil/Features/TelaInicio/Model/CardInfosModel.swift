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
        CardInfoModel(title: "Bolsa Familia", subTitle: "Assistência Social", image: Image(.bolsafamilia)),
        CardInfoModel(title: "Minha casa, Minha vida", subTitle: "Assistência Social", image: Image(.mcmv)),
        CardInfoModel(title: "Desenrola Fies", subTitle: "Educação", image: Image(.desenrolaFies)),
        CardInfoModel(title: "Vale Gás", subTitle: "Assistência Social", image: Image(.valegas)),
        CardInfoModel(title: "Benefício Prestação Continuada", subTitle: "Assistência Social", image: Image(.bpc)),
        CardInfoModel(title: "Bolsa Atleta", subTitle: "Cultura", image: Image(.bolsaAtleta)),
        CardInfoModel(title: "Farmácia Popular", subTitle: "Saúde", image: Image(.farmacia))
    ]
}
