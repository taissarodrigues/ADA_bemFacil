//
//  BottomButtons.swift
//  bem-facil
//
//  Created by Vitor Costa on 15/05/24.
//

import SwiftUI

struct BottomButtons: View {
    @ObservedObject var viewModel: OnBoardViewModel
    var body: some View {
        VStack {
            Text(viewModel.upButtonText)
                .foregroundStyle(.white)
                .background(
                    Rectangle()
                        .foregroundStyle(.mainBlue)
                        .frame(width: 335, height: 48)
                        .clipShape(.rect(cornerRadius: 16))
                )
                .padding(.bottom, 36)
            
            Text("Direto aos benefícios")
                .foregroundStyle(.mainBlue)
                .background(
                    Rectangle()
                        .foregroundStyle(.onBoardBackGround)
                        .frame(width: 335, height: 48)
                        .clipShape(.rect(cornerRadius: 16))
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.mainBlue, lineWidth: 1)
                        )
                )
        }
        .font(.system(size: 14, weight: .bold))
    }
}

#Preview {
    BottomButtons(viewModel: OnBoardViewModel())
}
