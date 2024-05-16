//
//  OnBoardViewModel.swift
//  bem-facil
//
//  Created by Vitor Costa on 15/05/24.
//

import SwiftUI

final class OnBoardViewModel: ObservableObject {
    @AppStorage("showOnBoarding") var showOnBoarding: Bool = true
    @Published var currentTab: Int = 0
    @Published var upButtonText: String = "Entendido"
    
    func changeTabIndex() {
        if currentTab < 4 {
            currentTab += 1
        }
    }
    
    func onBoardingToggle() {
        showOnBoarding.toggle()
    }
    
    func changeRightText() {
        if currentTab == 3 {
            upButtonText = "Vamos nessa"
        } else {
            upButtonText = "Entendido"
        }
    }
    
    func nextButtonAction() {
        changeTabIndex()
        changeRightText()
        if currentTab > 3 {
            onBoardingToggle()
        }
    }
}
