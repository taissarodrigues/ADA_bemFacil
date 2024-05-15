//
//  ContentView.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 15/05/24.
//
import SwiftUI

struct ContentView: View {
    @State private var pageIndex = 0
    @State private var isSignUpClicked = false // Estado para controlar o clique do botão "Sign up"
    private let pages: [Page] = Page.samplePages
    private let dotApperance = UIPageControl.appearance()
    
    var body: some View {
        NavigationView {
            TabView(selection: $pageIndex) {
                ForEach(pages) { page in
                    VStack {
                        Spacer()
                        Onboarding(page: page)
                        Spacer()
                        if page == pages.last {
                            Button("Sign up") {
                                // Definir a ação para ir para a tela inicial
                                self.isSignUpClicked = true
                            }
                            .buttonStyle(.bordered)
                        } else {
                            Button("Next", action: incrementPage)
                        }
                    }
                    .tag(page.tag)
                }
                .tabViewStyle(.page)
            }
            // Navegação para a tela inicial quando o botão "Sign up" é clicado
            .background(NavigationLink("", destination: Telainicio(), isActive: $isSignUpClicked))
        }
    }
    func incrementPage() {
        pageIndex += 1
    }
}
#Preview {
    ContentView()
}
