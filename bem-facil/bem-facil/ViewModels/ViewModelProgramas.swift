//
//  Programas.swift
//  bem-facil
//
//  Created by Cauan  Galdino on 03/05/24.
//

import Foundation

import SwiftUI

class ViewModelProgramas: ObservableObject {
    @Published var programs: [Programa] = []
    @Published var filteredPrograms: [Programa] = []
    @Published var searchText = ""
    @Published var selectedCategory: String?
    
    func loadPrograms() {
        
        programs = [
            Programa(name: "Programa A", category: "Saúde", description: "...", targetAudience: "...", howItWorks: "...", managingAgency: "...", legislation: "...", registrationSteps: "...", websiteURL: URL(string: "https://www.example.com")!),
            Programa(name: "Programa B", category: "Educação", description: "...", targetAudience: "...", howItWorks: "...", managingAgency: "...", legislation: "...", registrationSteps: "...", websiteURL: URL(string: "https://www.example.com")!),
            Programa(name: "Programa C", category: "Habitação", description: "...", targetAudience: "...", howItWorks: "...", managingAgency: "...", legislation: "...", registrationSteps: "...", websiteURL: URL(string: "https://www.example.com")!)
            // Adicione mais programas conforme necessário
        ]
        
        filteredPrograms = programs
    }
    
    func filterPrograms() {
        if let selectedCategory = selectedCategory, !selectedCategory.isEmpty {
            filteredPrograms = programs.filter { $0.category == selectedCategory }
        } else {
            filteredPrograms = programs
        }
        
        if !searchText.isEmpty {
            filteredPrograms = filteredPrograms.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    func toggleFavorite(for program: Programa) {
        if let index = programs.firstIndex(where: { $0.id == program.id }) {
            programs[index].isFavorite.toggle()
            filteredPrograms = programs
        }
    }
}
