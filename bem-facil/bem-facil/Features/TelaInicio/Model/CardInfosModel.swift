//
//  CardInfosModel.swift
//  bem-facil
//
//  Created by Vitor Costa on 10/05/24.
//

import SwiftUI

struct CardInfoModel: Hashable, Identifiable {
    var id = UUID()
    var title: String
    var subTitle: String
    var image: String
    
    static let date: [CardInfoModel] = [
        CardInfoModel(title: "Benefício Prestação Continuada", subTitle: "Assistência Social", image: "bpc"),
        CardInfoModel(title: "Bolsa Familia", subTitle: "Assistência Social", image: "bolsafamilia"),
        CardInfoModel(title: "Minha casa, Minha vida", subTitle: "Assistência Social", image: "mcmv"),
        CardInfoModel(title: "Vale Gás", subTitle: "Assistência Social", image: "valegas"),
        CardInfoModel(title: "Bolsa Atleta", subTitle: "Cultura", image: "bolsaAtleta"),
        CardInfoModel(title: "Pé de meia", subTitle: "Educação", image: "pedemeia"),
        CardInfoModel(title: "Desenrola Fies", subTitle: "Educação", image: "desenrolaFies"),
        CardInfoModel(title: "Farmácia Popular", subTitle: "Saúde", image: "farmacia")
    ]
}
