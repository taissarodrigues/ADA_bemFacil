import SwiftUI
import Foundation

struct Telainicio: View {
    @State private var searchText: String = ""
    @State private var isShowingFilter: Bool = false // Variável para mostrar/ocultar o Picker
    @State private var selectedCategory: String = "Todos" // Inicia com "Todos"
    
    let adaptiveColumns = Array(repeating: GridItem(.fixed(170)), count: 2)
    
    @State private var selection: Program?
    
    var searchedData: [ProgramsModel] {
        guard !searchText.isEmpty else {return ProgramsModel.all }
        return ProgramsModel.all.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
    }
    
    var filteredData: [Program] {
        if selectedCategory == "Todos" {
            return ProgramsData.programs
        } else {
            return ProgramsData.programs.filter { $0.category == selectedCategory }
        }
    }
    
    init () {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(.mainBlue)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TabView {
                        ForEach(0 ..< InitialCardInfo.mockInfos.count) {
                            CardInicial(model: InitialCardInfo.mockInfos[$0])
                                .cornerRadius(8.0)
                                .frame(width: 520)
                                .padding(.trailing)
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .frame(height: searchText.isEmpty ? 200 : 0)
                    .frame(width: 520)
                    .opacity(searchText.isEmpty ? 1 : 0)
                    .animation(.linear, value: searchText)
                }
                .navigationTitle("Programas")
                .navigationBarTitleDisplayMode(.inline)
                
                Section {
                    LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                        ForEach(filteredData) { item in
                            Button {
                                selection = item
                            } label: {
                                CustomCard(model: item)
                                    .compositingGroup()
                            }
                        }
                    }
                    .buttonStyle(.plain)
                    .navigationDestination(item: $selection) { selectedItem in
                        TelaInfo(
                            title: selectedItem.name,
                            image: Image(selectedItem.image),
                            requirements: selectedItem.requirements,
                            documents: selectedItem.documents,
                            links: selectedItem.urls
                        )
                    }
                    
                } header: {
                    HStack {
                        Text("Lista de Programas")
                        Spacer()
                        Picker("", selection: $selectedCategory) {
                            ForEach(["Todos", "Assistência Social", "Cultura", "Educação", "Saúde"], id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    .headerProminence(.increased)
                    
                }
                .listStyle(.plain)
                .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
            }
            .listStyle(.plain)
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always)
            )
            .searchSuggestions {
                ForEach(searchedData) { data in
                    NavigationLink(data.title) {
                        let program = ProgramsData.programs.first { $0.image == data.image }!
                        TelaInfo(
                            title: program.name,
                            image: Image(program.image),
                            requirements: program.requirements,
                            documents: program.documents,
                            links: program.urls
                        )
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: {
                        ChatBot()
                    }) {
                        Image(systemName: "questionmark.bubble")
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
        .listStyle(.plain)
        .searchable(
            text: $searchText,
            placement: .navigationBarDrawer(displayMode: .always)
        )
    }
}

#Preview {
    Telainicio()
}
