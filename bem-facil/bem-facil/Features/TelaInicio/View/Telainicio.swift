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
            HStack(spacing:18) {
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
                LazyVGrid(columns: adaptiveColumns, spacing: 5) {
                    ForEach(CardInfoModel.date) { items in
                        CustomCard(model: items)
                        
                    }
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
