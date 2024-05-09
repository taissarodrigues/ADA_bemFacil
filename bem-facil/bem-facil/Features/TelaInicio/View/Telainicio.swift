//
//  ContentView.swift
//  bem-facil
//
//  Created by User on 24/04/24.
//

import SwiftUI

struct Telainicio: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            SearchBar(searchText: searchText)
            
            Text("Conheça as novidades")
                .font(.system(size:29, weight:.bold ))
                .padding(.trailing,50)
            CardInicial()
            
            
        }
        ScrollView {
            HStack {
                VStack(spacing:20) {
                    ForEach(0..<5) { _ in
                        Text("")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .frame(width: 150, height: 150)
                            .background(.red)
                            .cornerRadius(5.0)
                        
                                    }
                }
                VStack(spacing:20) {
                    ForEach(0..<5) { _ in
                        Text("")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .frame(width: 150, height: 150)
                           
                            .background(.red)
                            .cornerRadius(5.0)
                           
                    }
                }
                
            }
            .padding(.bottom,200 )

            }
        
        }

    }
#Preview {
    Telainicio()
}
