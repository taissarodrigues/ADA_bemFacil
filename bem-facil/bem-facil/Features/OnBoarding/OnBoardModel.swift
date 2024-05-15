//
//  OnBoardModel.swift
//  bem-facil
//
//  Created by Vitor Costa on 15/05/24.
//

import Foundation
struct OnBoardModel: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let description: String
    let imageUrl: String
    
    static var samplePages: [OnBoardModel] = [
        OnBoardModel(name: "Seu canal de informação", description: "bla bla bla texto cruel aqui bla bla bla texto cruelaquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla .", imageUrl: "info1"),
        OnBoardModel(name: "Sem burocracia", description: "bla bla bla texto cruel aqui bla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla .", imageUrl: "info2"),
        OnBoardModel(name: "Tudo isso em um só local", description: "bla bla bla texto cruel aqui bla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla .", imageUrl: "info2")
    ]
}
