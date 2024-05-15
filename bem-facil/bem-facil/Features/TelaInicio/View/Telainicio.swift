import SwiftUI

struct Telainicio: View {
    @State private var searchText: String = ""
    @State private var isShowingFilter: Bool = false // Variável para mostrar/ocultar o Picker
    @State private var selectedCategory: String = "Todos" // Inicia com "Todos"
    
    @State private var selection: ProgramsModel?
    
    let adaptiveColumns = Array(repeating: GridItem(.fixed(170)), count: 2)
    
    var searchedData: [ProgramsModel] {
        guard !searchText.isEmpty else {return ProgramsModel.all }
        return ProgramsModel.all.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
    }
    
    var filteredData: [ProgramsModel] {
        if selectedCategory == "Todos" {
            return ProgramsModel.all
        } else {
            return ProgramsModel.all.filter { $0.category == selectedCategory }
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TabView {
                        ForEach(0..<3) { _ in
                            Text("")
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(.black)
                                .cornerRadius(8.0)
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .frame(height: 200)
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
                    .navigationDestination(item: $selection) { selection in
                        TelaInfo(title: selection.title)
                    }
                } header: {
                    HStack {
                        Text("Programas")
                        Spacer()
                        Picker("Categoria", selection: $selectedCategory) {
                            ForEach(["Todos", "Assistência Social", "Cultura", "Educação", "Saúde"], id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                    }
                    .headerProminence(.increased)

                }
            }
            .listStyle(.plain)
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .automatic)
            )
            .searchSuggestions {
                ForEach(searchedData) { data in
                    NavigationLink(data.title) {
                
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
    }
}

struct Telainicio_Previews: PreviewProvider {
    static var previews: some View {
        Telainicio()
    }
}
