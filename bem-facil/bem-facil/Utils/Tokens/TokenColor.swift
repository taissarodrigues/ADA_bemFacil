//
//  TokenColor.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 08/05/24.
//

import SwiftUI

private struct BaseColor {
    static let azul = Color("Azul")
}
enum ColorCase {
    case azul
}
extension Color {
    static func benUi(_ colorCase: ColorCase) -> Color {
        let baseColor = BaseColor()
        switch colorCase {
        case .azul:
            return BaseColor.azul
        }
    }
    
}
