//
//  PageModel.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 15/05/24.
//

import Foundation
struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    let tag: Int
    
    static var samplePage = Page(name: "Title Exemple", description: "The is exemple description for the app", imageUrl: "info1", tag: 0)
    
    static var samplePages: [Page] = [
        Page(name: "Seu canal de informação", description: "bla bla bla texto cruel aqui bla bla bla texto cruelaquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla .", imageUrl: "info1", tag: 0),
        Page(name: "Sem burocracia", description: "bla bla bla texto cruel aqui bla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla .", imageUrl: "info2", tag: 1),
        Page(name: "Tudo isso em um só local", description: "bla bla bla texto cruel aqui bla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla texto cruel aquibla bla bla .", imageUrl: "info2", tag: 2)
    ]
}
