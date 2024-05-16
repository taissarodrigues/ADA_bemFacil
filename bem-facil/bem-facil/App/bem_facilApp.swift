//
//  bem_facilApp.swift
//  bem-facil
//
//  Created by User on 24/04/24.
//

import SwiftUI

@main
struct MaisBEN: App {
    @AppStorage("showOnBoarding") var showOnBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if showOnBoarding {
                OnBoardView()
            } else {
                MainView()
            }
        }
    }
}
