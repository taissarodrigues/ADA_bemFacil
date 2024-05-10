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
    static let azul3 = Color("Azul3")
}
enum ColorCase {
    case azul
    case azulClaro
    case azul3
}
extension Color {
    static func benUi(_ colorCase: ColorCase) -> Color {
        _ = BaseColor()
        switch colorCase {
        case .azul:
            return BaseColor.azul
        case .azulClaro:
            return BaseColor.azulClaro
        case .azul3:
            return BaseColor.azul3
        }
    }
    
}
