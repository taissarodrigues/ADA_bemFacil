//
//  ContentView.swift
//  bem-facil
//
//  Created by User on 24/04/24.
//

import SwiftUI

struct Telainicio: View {
    
    @State private var searchText: String = ""
    
    let adaptiveColumns = Array(repeating: GridItem(.fixed(170)), count: 2)
    
    var body: some View {
        NavigationView {
        
        
        VStack {
            SearchBar(searchText: searchText)
            
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
            
           
                            ScrollView {
                                LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                                    ForEach(CardInfoModel.date) { item in
                                        NavigationLink(destination: Text("Teste")) {
                                            CustomCard(model: item)
                                        }
                                    }
                                }
                                .navigationTitle(Text(""))
                            }
                        }
                    }
                }
            }

#Preview {
    Telainicio()
}
