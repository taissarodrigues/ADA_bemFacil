//
//  ContentView.swift
//  bem-facil
//
//  Created by User on 24/04/24.
//

import SwiftUI

struct ContentView: View {
    // Lista de categorias
    let categories = ["Roupas", "Calçados", "Acessórios", "Eletrônicos", "Livros", "Jogos", "Beleza", "Casa"]
    
    // Estado para controlar a visibilidade dos filtros
    @State private var showFilters = false
    
    // Estado para controlar a categoria selecionada
    @State private var selectedCategory: String?
    
    var body: some View {
        NavigationStack {
            VStack {
                    HStack {
                        // Botão Filtros
                        Button(action: {
                            self.showFilters.toggle()
                        }) {
                            Image(systemName: "slider.horizontal.3")
                                .padding()
                                .foregroundColor(.black)
                                .background(Color.clear)
                                .clipShape(Circle())
                        }
                        
                        if selectedCategory != nil && showFilters == false {
                            Text(selectedCategory ?? "")
                                .foregroundColor(.white)
                                .padding(16)
                                .background(Color.blue)
                                .cornerRadius(8)
                                .onTapGesture {
                                    selectedCategory = nil
                                }
                        }
                        Spacer()
                        
                        if showFilters {
                            filter
                                .padding()
                        }
                    }
                    
                    // Exibe os produtos filtrados de acordo com a categoria selecionada
                    List {
                        ForEach(Programas.allCases, id: \.self) { product in
                            NavigationLink(product.rawValue) {
                                Text(product.rawValue)
                            }
                        }
                    }
                    .listStyle(PlainListStyle())
                }
            .padding()
        }
    }
    
    // Função para filtrar os produtos de acordo com a categoria selecionada
    func filteredProducts() -> [String] {
        // Aqui você substitui com a lógica de filtragem dos produtos de acordo com a categoria
        // Por enquanto, estou retornando uma lista de produtos de exemplo
        let productsByCategory: [String: [String]] = [
            "Roupas": ["Camiseta", "Calça", "Casaco"],
            "Calçados": ["Tênis", "Sapato", "Chinelo"],
            "Acessórios": ["Relógio", "Bolsa", "Óculos"]
        ]
        
        if let selectedCategory = selectedCategory {
            return productsByCategory[selectedCategory] ?? []
        } else {
            // Se nenhuma categoria estiver selecionada, retornamos todos os produtos
            return productsByCategory.values.flatMap { $0 }
        }
    }
    
    private var filter: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(categories, id: \.self) { category in
                    Button(action: {
                        // Define a categoria selecionada
                        
                        if selectedCategory == nil {
                            self.selectedCategory = category
                        } else {
                            if selectedCategory == category {
                                selectedCategory = nil
                            } else {
                                selectedCategory = category
                            }
                        }
                        showFilters = false
                    }) {
                        Text(category)
                            .foregroundColor(self.selectedCategory == category ? .white : .blue)
                            .padding(16)
                            .background(self.selectedCategory == category ? Color.blue : Color.white)
                            .cornerRadius(8)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Programas: String, CaseIterable {
    case peMeia = "Pé de meia"
    case bolsaFamilia = "Bolsa familia"
}
