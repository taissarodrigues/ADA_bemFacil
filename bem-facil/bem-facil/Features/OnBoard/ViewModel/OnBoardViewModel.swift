//
//  OnBoardViewModel.swift
//  bem-facil
//
//  Created by Vitor Costa on 15/05/24.
//

import Foundation

final class OnBoardViewModel: ObservableObject {
    @Published var currentTab: Int = 0
    @Published var upButtonText: String = "Entendido"
    
    func changeTabIndex() {
        if currentTab < 3 {
            currentTab += 1
        }
    }
    
    func changeRightText() {
        if currentTab == 2 {
            upButtonText = "Vamos nessa"
        } else {
            upButtonText = "Entendido"
        }
    }
}
