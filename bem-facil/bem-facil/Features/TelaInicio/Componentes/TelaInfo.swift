//
//  Teste.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 13/05/24.
//

import SwiftUI

struct TelaInfo: View {
    
    let title: String
    
    var body: some View {
        Text(title)
    }
}

#Preview {
    TelaInfo(title: "Farmacia")
}
