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
        CardInfoModel(title: "Pé de meia", subTitle: "Educação", image: Image(.imageCard1)),
        CardInfoModel(title: "Bolsa Familia", subTitle: "Saúde", image: Image(.imageCard1)),
        CardInfoModel(title: "Bolsa Jovem", subTitle: "Educação", image: Image(.imageCard1)),
        CardInfoModel(title: "Dignidade Menstrual", subTitle: "Saúde", image: Image(.imageCard1))
    ]
}
