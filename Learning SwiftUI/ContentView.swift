import SwiftUI
import MapKit
import TabularData

struct ProgramDetailView: View {
    // Exemplo de dados para a lista de textos
    let textos = [
        "Título do Programa",
        "Descrição do Programa",
        "Condições para Receber",
        "Lista de condições para receber o benefício",
        "Condições para Continuar Recebendo",
        "Lista de condições para continuar recebendo o benefício",
        "Etapas para Solicitar a Participação",
        "Lista de etapas para solicitar a participação no programa"
    ]
    
    // Coordenadas para o marcador (exemplo)
    let coordenadaMarcador = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(textos, id: \.self) { texto in
                        Text(texto)
                            .font(texto.contains("Título") || texto.contains("Condições") || texto.contains("Etapas") ? .headline : .body)
                    }
                    
                    Divider()
                    
                    Button("Solicitar Participação") {
                        // Ação ao pressionar o botão
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    // Mapa incorporado com marcador
                    MapView(coordenadaMarcador: coordenadaMarcador)
                        .frame(height: 200)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("Detalhes do Programa")
        }
    }
}

struct ProgramDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramDetailView()
    }
}

// Mapa personalizado com marcador
struct MapView: UIViewRepresentable {
    let coordenadaMarcador: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        // Configurações do mapa (latitude, longitude, zoom, etc.)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: coordenadaMarcador, span: span)
        uiView.setRegion(region, animated: true)
        
        // Adicione o marcador
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordenadaMarcador
        annotation.title = "Local do Programa"
        uiView.addAnnotation(annotation)
    }
}
