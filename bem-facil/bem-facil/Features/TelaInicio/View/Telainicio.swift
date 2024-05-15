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
                        ForEach(0 ..< InitialCardInfo.mockInfos.count) { card in
//                            ZStack {
                                Text(InitialCardInfo.mockInfos[card].title)
                                    .font(.system(size:28, weight:.bold ))
                                    .padding(.trailing, 190)
                                    .padding(.bottom, 100)
                                
//                            }
                        }
                        .tabViewStyle(.page(indexDisplayMode: .always))
                        .frame(height: 200)
                    }
                    
                    Section {
                        ScrollView(.horizontal) {
                            HStack(spacing:18) {
                                ForEach(0..<3) { _ in
                                    Text("")
                                        .foregroundStyle(.white)
                                        .font(.largeTitle)
                                        .frame(height: 180)
                                        .containerRelativeFrame(.horizontal, count: 10, span: 8, spacing: 0)
                                        .background(.black)
                                        .cornerRadius(8.0)
                                }
                            }
                            .scrollTargetLayout()
                        }
                        .scrollIndicators(.hidden)
                        .scrollTargetBehavior(.viewAligned)
                        
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
                .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
            }
        }
    }
}

struct Telainicio_Previews: PreviewProvider {
    static var previews: some View {
        Telainicio()
    }
}
