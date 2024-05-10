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
}
