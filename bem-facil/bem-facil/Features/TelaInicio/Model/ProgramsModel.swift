//
//  CardInfosModel.swift
//  bem-facil
//
//  Created by Vitor Costa on 10/05/24.
//

import SwiftUI

struct ProgramsModel: Hashable, Identifiable {
    var id = UUID()
    var title: String
    var category: String
    var image: String
    
    static let all: [ProgramsModel] = [
        ProgramsModel(title: "Benefício Prestação Continuada", category: "Assistência Social", image: "bpc"),
        ProgramsModel(title: "Bolsa Familia", category: "Assistência Social", image: "bolsafamilia"),
        ProgramsModel(title: "Minha casa, Minha vida", category: "Assistência Social", image: "mcmv"),
        ProgramsModel(title: "Vale Gás", category: "Assistência Social", image: "valegas"),
        ProgramsModel(title: "Bolsa Atleta", category: "Cultura", image: "bolsaAtleta"),
        ProgramsModel(title: "Pé de meia", category: "Educação", image: "pedemeia"),
        ProgramsModel(title: "Desenrola Fies", category: "Educação", image: "desenrolaFies"),
        ProgramsModel(title: "Farmácia Popular", category: "Saúde", image: "farmacia")
    ]
}
