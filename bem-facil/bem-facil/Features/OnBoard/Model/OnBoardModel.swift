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
        OnBoardModel(id: 0, title: "Seu canal de informação", description: "Encontre tudo o que precisa saber sobre nossos programas de governo aqui, com detalhes e atualizações frequentes para mantê-lo sempre informado.", image: "info1"),
        OnBoardModel(id: 1, title: "Sem burocracia", description: "Facilitamos o acesso às informações sem complicações ou entraves, garantindo que você encontre o que precisa sem perder tempo.", image: "info2"),
        OnBoardModel(id: 2, title: "Tudo isso em um só local", description: "Acesse todos os serviços e programas de governo em um só lugar, centralizando suas necessidades de forma conveniente e organizada.", image: "info3"),
        OnBoardModel(id: 3, title: "Rápido e prático", description: "Encontre informações de forma rápida e fácil, sem perder tempo, com uma interface intuitiva que facilita sua navegação.", image: "info4")

    ]
}
