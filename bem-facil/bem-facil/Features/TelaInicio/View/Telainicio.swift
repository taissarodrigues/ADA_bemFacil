import SwiftUI


struct Telainicio: View {
    @State private var searchText: String = ""
    @State private var isShowingFilter: Bool = false // Variável para mostrar/ocultar o Picker
    @State private var selectedCategory: String = "Todos" // Inicia com "Todos"
    @State private var selection: CardInfoModel?
    
    let adaptiveColumns = Array(repeating: GridItem(.fixed(170)), count: 2)
    
    var filteredData: [CardInfoModel] {
        if selectedCategory == "Todos" {
            return CardInfoModel.date
        } else {
            return CardInfoModel.date.filter { $0.subTitle == selectedCategory }
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
                        if let selectedItem = selectedItem {
                            if let info = ProgramInfos.mockProgrmasInfos[selectedItem.title] {
                                TelaInfo(title: selectedItem.title, info: info)
                            }
                        }
                    }

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
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        }
    }

struct Telainicio_Previews: PreviewProvider {
    static var previews: some View {
        Telainicio()
    }
}
