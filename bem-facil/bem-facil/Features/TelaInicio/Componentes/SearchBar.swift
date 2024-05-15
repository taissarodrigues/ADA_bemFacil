//
//  SearchBar.swift
//  bem-facil
//
//  Created by User on 06/05/24.
//

import SwiftUI

struct SearchBar: View {
    @State var searchText: String = ""
    var body: some View {
        
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
            
            TextField("Pesquise aqui...", text: $searchText)
                .foregroundColor(.black)
                .overlay(
                    Image(systemName: "mic")
                        .padding()
                        .offset(x: 10)
                        .foregroundColor(.black)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                    ,alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0))
        .padding()
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
