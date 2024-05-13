import SwiftUI

struct Telainicio: View {
    @State private var searchText: String = ""
    @State private var isShowingFilter: Bool = false // Variável para mostrar/ocultar o Picker
    @State private var selectedCategory: String = "Todos" // Inicia com "Todos"

    let adaptiveColumns = Array(repeating: GridItem(.fixed(170)), count: 2)
    
    var filteredData: [CardInfoModel] {
        if selectedCategory == "Todos" {
            return CardInfoModel.date
        } else {
            return CardInfoModel.date.filter { $0.subTitle == selectedCategory }
        }
    }
    
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
                
                HStack {
                    Text("Programas")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    
                    Picker(selection: $selectedCategory, label: Text("Categoria")) {
                        ForEach(["Todos", "Assistência Social", "Cultura", "Educação", "Saúde"], id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(DefaultPickerStyle())
                    .padding()
                    
                        Image(systemName: "line.horizontal.3.decrease.circle")
                            .foregroundColor(.blue)
                            .padding(.trailing)
                    }
                
                
                ScrollView {
                    LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                        ForEach(filteredData) { item in
                            NavigationLink(destination: TelaInfo()) {
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

struct Telainicio_Previews: PreviewProvider {
    static var previews: some View {
        Telainicio()
    }
}
