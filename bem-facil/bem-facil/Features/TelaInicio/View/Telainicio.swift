//
//  ContentView.swift
//  bem-facil
//
//  Created by User on 24/04/24.
//

import SwiftUI

struct Telainicio: View {
    
    @State private var searchText: String = ""
    
    let adaptiveColumns = [
            GridItem(.adaptive(minimum: 130))
        ]
    var body: some View {
        VStack {
            SearchBar(searchText: searchText)
        }
        ScrollView(.horizontal) {
            HStack(spacing:20) {
                ForEach(0..<3) { _ in
                    Text("")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .frame(width: 343, height: 180)
                        .background(.black)
                        .cornerRadius(8.0)
                }
            }
        }
        .scrollIndicators(.hidden)
        NavigationView {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                    ForEach(CardViewModel.date) { items in
                        CustomCard(model: items)
                        
                    }
//                    .padding(.horizontal, 10)
                    .navigationTitle(Text("Programas"))
                }
            }
        }
        //            .padding(.bottom,200 )
        
    }
    
}

#Preview {
    Telainicio()
}
