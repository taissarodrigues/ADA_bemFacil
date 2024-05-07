//
//  CardInicial.swift
//  bem-facil
//
//  Created by Kamylly Ferreira da Paixão on 07/05/24.
//

import SwiftUI

struct CardInicial: View {
    var body: some View {
        Text("Card inicial")
            .background(Color.white)
            .frame(width:350, height:180, alignment:.leading,)
            .background(Color.black)
            .cornerRadius(27)
    }
}

#Preview {
    CardInicial()
}
