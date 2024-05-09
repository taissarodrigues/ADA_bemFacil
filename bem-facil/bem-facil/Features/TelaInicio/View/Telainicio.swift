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
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50,height: 50)
            
            SearchBar(searchText: searchText)
            CardInicial()
            
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
