//
//  OnBoardModel.swift
//  bem-facil
//
//  Created by Vitor Costa on 15/05/24.
//

import Foundation
struct OnBoardModel: Identifiable, Hashable {
    let id: Int
    let title: String
    let description: String
    let image: String
    
    static let list: [OnBoardModel] = [
        OnBoardModel(id: 0, title: "Seu canal de informação", description: "bla bla bla texto cruel aqui bla bla bla texto cruelaquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla .", image: "info1"),
        OnBoardModel(id: 1, title: "Sem burocracia", description: "bla bla bla texto cruel aqui bla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla .", image: "info2"),
        OnBoardModel(id: 2, title: "Tudo isso em um só local", description: "bla bla bla texto cruel aqui bla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla .", image: "info2")
    ]
}
