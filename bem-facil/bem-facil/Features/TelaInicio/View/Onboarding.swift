//
//  Onboading.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 15/05/24.
//

import SwiftUI

struct Onboarding: View {
    var page: Page
    
    var body: some View {
        VStack(spacing: 20) {
            Image("Logo")
            Image("\(page.imageUrl)")
                .scaledToFit()
            Text(page.name)
                .font(.title)
            Text(page.description)
            
            
        }
    }
       
}

#Preview {
    Onboarding(page:Page.samplePage)
}
