//
//  TokenColor.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 08/05/24.
//

import SwiftUI

private struct BaseColor {
    static let azul = Color("Azul")
    static let myblue = Color("MyBlue")
}
enum ColorCase {
    case azul
    case myblue
}
extension Color {
    static func benUi(_ colorCase: ColorCase) -> Color {
        switch colorCase {
        case .azul:
            return BaseColor.azul
        case .myblue:
            return BaseColor.myblue
        }
    }
    
}
