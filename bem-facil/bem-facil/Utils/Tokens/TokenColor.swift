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
    static let myblue = Color("MyBlue")
}

enum ColorCase {
    case azul
    case myblue
    case azul3
    case azulClaro
    
    
}

extension Color {
    static func benUi(_ colorCase: ColorCase) -> Color {
        switch colorCase {
        case .azul:
            return BaseColor.azul
        case .myblue:
            return BaseColor.myblue
        case .azulClaro:
            return BaseColor.azulClaro
        case .azul3:
            return BaseColor.azul3
        }
    }
    
}
