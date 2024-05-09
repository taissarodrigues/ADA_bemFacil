//
//  CardsInfo.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 09/05/24.
//

import Foundation
import UIKit

struct Model: Identifiable {
    var id = UUID()
    var title: String
    var subTitle: String
    var image: UIImage
}
class ViewModel: ObservableObject {
    @Published var date: [Model] = [
        Model(title: "Pé de meia", subTitle: "Educação", image:UIImage(imageLiteralResourceName: "imageCard1")),
        Model(title: "Bolsa Familia", subTitle: "Saúde", image:UIImage(imageLiteralResourceName: "imageCard1")),
        Model(title: "Bolsa Jovem", subTitle: "Educação", image:UIImage(imageLiteralResourceName: "imageCard1")),
    Model(title: "Dignidade Menstrual", subTitle: "Saúde", image:UIImage(imageLiteralResourceName: "imageCard1"))
    ]
}
