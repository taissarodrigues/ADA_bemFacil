//
//  OnBoardView.swift
//  bem-facil
//
//  Created by Vitor Costa on 15/05/24.
//

import SwiftUI

struct OnBoardView: View {
    @ObservedObject var viewModel = OnBoardViewModel()
    
    var body: some View {
        TabView(selection: $viewModel.currentTab) {
            ForEach(OnBoardModel.list) {
                Text($0.description)
            }
        }
    }
}

#Preview {
    OnBoardView()
}
