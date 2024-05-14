//
//  Teste.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 13/05/24.
//
import SwiftUI

struct TelaInfo: View {
    
    let title: String
    let info: [String]
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
            ForEach(info, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    TelaInfo(title: "asds", info:["ff"])
}
