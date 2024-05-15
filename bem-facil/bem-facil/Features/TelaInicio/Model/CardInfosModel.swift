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
        CardInfoModel(title: "Pé de meia", subTitle: "Educação", image: "pedemeia"),
        CardInfoModel(title: "Bolsa Familia", subTitle: "Saúde", image: "bolsafamilia"),
        CardInfoModel(title: "Bolsa Jovem", subTitle: "Educação", image: "bolsaAtleta"),
        CardInfoModel(title: "Dignidade Menstrual", subTitle: "Saúde", image: "farmacia"),
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

struct InitialCardInfo: Identifiable {
    var id = UUID()
    var title: String
    var info: [String]
    var image: Image
    
    static let mockInfos: [InitialCardInfo] = [
        InitialCardInfo(title: "Pé de meia", info: ["ser estudante de escola publica", "ser estudante de escola publica", "ser estudante de escola publica"], image: Image(.pedemeia)),
        InitialCardInfo(title: "Bolsa Familia", info: ["ser estudante de escola publica", "ser estudante de escola publica", "ser estudante de escola publica"], image: Image(.pedemeia)),
        InitialCardInfo(title: "Bolsa Jovem", info: ["ser estudante de escola publica", "ser estudante de escola publica", "ser estudante de escola publica"], image: Image(.pedemeia))
    ]
}
