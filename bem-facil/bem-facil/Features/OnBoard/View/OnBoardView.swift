//
//  OnBoardView.swift
//  bem-facil
//
//  Created by Vitor Costa on 15/05/24.
//

import SwiftUI

struct OnBoardView: View {
    @StateObject var viewModel = OnBoardViewModel()
    @State private var animate: Bool = true
    
    var body: some View {
        ZStack {
            Color.onBoardBackGround.ignoresSafeArea()
            VStack {
                TabView(selection: $viewModel.currentTab) {
                    ForEach(OnBoardModel.list) {
                        OnBoardPageStyle(onBoardInfos: $0)
                            .tag($0.id)
                            .offset(y: animate ? 20 : 0)
                            .onAppear {
                                withAnimation(.easeOut(duration: 0.5)) {
                                    animate = false
                                }
                            }
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(.page)
                .transition(.slide)
            }
        }
        .onChange(of: viewModel.currentTab, {
            viewModel.changeRightText()
        })
    }
}

#Preview {
    OnBoardView()
}
