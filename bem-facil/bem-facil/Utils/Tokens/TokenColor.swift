//
//  TokenColor.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 08/05/24.
//

import SwiftUI

private struct BaseColor {
    static let azul = Color("Azul")
    static let azulClaro = Color("AzulClaro")
}
enum ColorCase {
    case azul
    case azulClaro
}
extension Color {
    static func benUi(_ colorCase: ColorCase) -> Color {
        _ = BaseColor()
        switch colorCase {
        case .azul:
            return BaseColor.azul
        case .azulClaro:
            return BaseColor.azulClaro
        }
    }
    
}
