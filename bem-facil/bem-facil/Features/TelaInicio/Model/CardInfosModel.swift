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
        CardInfoModel(title: "Bolsa Familia", subTitle: "Saúde", image: Image(.pedemeia)),
        CardInfoModel(title: "Bolsa Jovem", subTitle: "Educação", image: Image(.pedemeia)),
        CardInfoModel(title: "Dignidade Menstrual", subTitle: "Saúde", image: Image(.pedemeia))
    ]
}

struct InitialCardInfo: Identifiable {
    var id = UUID()
    var title: String
    var info: [String]
    var image: Image
    
    static let mockInfos: [InitialCardInfo] = [
        InitialCardInfo(title: "Pé de meia", info: ["Educação", "huhshbhbhbhbjjnnjnhbhahy,"], image: Image(.pedemeia)),
        InitialCardInfo(title: "Bolsa Familia", info: ["Saúde", "jsinjnjnjnjjnjjjjnjnjjnnwhd"], image: Image(.pedemeia)),
        InitialCardInfo(title: "Bolsa Jovem", info: ["Educação", "ifhyhyyttybbhhbtvhvhuieh"], image: Image(.pedemeia))
    ]
}
