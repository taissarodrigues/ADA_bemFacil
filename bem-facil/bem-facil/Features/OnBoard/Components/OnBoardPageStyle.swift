//
//  OnBoardPageStyle.swift
//  bem-facil
//
//  Created by Vitor Costa on 15/05/24.
//

import SwiftUI

struct OnBoardPageStyle: View {
    let onBoardInfos: OnBoardModel
    
    var body: some View {
        VStack(alignment: .center) {
            Image(.logo)
                .padding(.top, 50)
                .padding(.bottom, 50)
            
            Image(onBoardInfos.image)
            
            Text(onBoardInfos.title)
                .font(.system(size: 28, weight: .semibold))
                .foregroundStyle(.mainBlue)
                .padding(.top, 35)
            
            Text(onBoardInfos.description)
                .font(.system(size: 13, weight: .regular))
                .foregroundStyle(.mainBlue)
                .multilineTextAlignment(.center)
                .padding(.top, -10)
            
            Spacer()
        }
        .padding(.horizontal, 35)
    }
}

#Preview {
    OnBoardPageStyle(onBoardInfos: OnBoardModel.list[0])
}
