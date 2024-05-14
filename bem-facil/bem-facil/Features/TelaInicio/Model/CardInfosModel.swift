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
    var caregory: String
    var image: String
    
    static let all: [ProgramsModel] = [
        ProgramsModel(title: "Benefício Prestação Continuada", caregory: "Assistência Social", image: "bpc"),
        ProgramsModel(title: "Bolsa Familia", caregory: "Assistência Social", image: "bolsafamilia"),
        ProgramsModel(title: "Minha casa, Minha vida", caregory: "Assistência Social", image: "mcmv"),
        ProgramsModel(title: "Vale Gás", caregory: "Assistência Social", image: "valegas"),
        ProgramsModel(title: "Bolsa Atleta", caregory: "Cultura", image: "bolsaAtleta"),
        ProgramsModel(title: "Pé de meia", caregory: "Educação", image: "pedemeia"),
        ProgramsModel(title: "Desenrola Fies", caregory: "Educação", image: "desenrolaFies"),
        ProgramsModel(title: "Farmácia Popular", caregory: "Saúde", image: "farmacia")
    ]
}
