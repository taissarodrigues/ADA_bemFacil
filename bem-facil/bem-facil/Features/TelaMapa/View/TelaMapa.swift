import SwiftUI
import MapKit

class locationDelegate: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var pins: [Pin] = []
    @Published var location: CLLocation?
    @State var hasSetRegion = false
    @Published var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 38.898150, longitude: -77.034340),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    )
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        if manager.authorizationStatus == .authorizedWhenInUse {
            print("Authorized")
            manager.startUpdatingLocation()
        } else {
            print("not authorized")
            manager.requestWhenInUseAuthorization()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            self.location = location
            if hasSetRegion == false {
                region = MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001))
                hasSetRegion = true
            }
        }
    }
}

struct Pin: Identifiable {
    var id = UUID().uuidString
    var location: CLLocation
}

extension UUID: Identifiable {
    public var id: UUID { self }
}

extension String: Identifiable {
    public var id: String { self }
}

struct TelaMapa: View {
    @State private var mapSelection: String?
    @State private var cameraPosition: MapCameraPosition = .userLocation(fallback: .automatic)
    @State private var showDetais = false
    
    @State var tracking: MapUserTrackingMode = .follow
    @State var manager = CLLocationManager()
    @StateObject var managerDelegate = locationDelegate()
    
    var body: some View {
        Map(position: $cameraPosition, selection: $mapSelection) {
            
            if let location = manager.location {
                Annotation("My location", coordinate: location.coordinate) {
                    ZStack {
                        Circle()
                            .frame(width: 32, height: 32)
                            .foregroundColor(.blue.opacity(0.25))
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                        Circle()
                            .frame(width: 12, height: 12)
                            .foregroundColor(.blue)
                    }
                }
            }
            ForEach(0..<MapLocations.crasAllCases.count) { index in
                let location = MapLocations.crasAllCases[index]
                Marker(location.name, coordinate: location.coordinate)
                    .tint(.green)
                    .tag("cras_\(index)")
            }
            ForEach(0..<MapLocations.farmaciasAllCases.count) { index in
                let location = MapLocations.farmaciasAllCases[index]
                Marker(location.name, coordinate: location.coordinate)
                    .tag("f_\(index)")
            }
        }
        .sheet(item: $mapSelection) { selection in
            let split = selection.split(separator: "_")
            let type = split[0]
            let index = Int(split[1])!
            switch type {
            case "cras":
                LocationDetailsView(model: MapLocations.crasAllCases[index])
            case "f":
                LocationDetailsView(model: MapLocations.farmaciasAllCases[index])
            default:
                fatalError("AAAA")
            }
        }
        .mapControls {
            MapUserLocationButton()
            MapPitchToggle()
            MapCompass()
        }
        .onAppear {
            manager.requestWhenInUseAuthorization()
            manager.delegate = managerDelegate
        }
    }
}

struct MapLocations: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    
    init(_ name: String, coordinate: CLLocationCoordinate2D) {
        self.name = name
        self.coordinate = coordinate
    }
    
    static var crasAllCases: [MapLocations] {
        return CrasLocation.allCases.map { location in
            switch location {
            case .crasDende:
                return MapLocations("CRAS Dendê", coordinate: location.coordinate)
            case .crasLuciano:
                return MapLocations("CRAS Luciano Cavalcante", coordinate: location.coordinate)
            case .crasJardimOliveiras:
                return MapLocations("CRAS Jardim das Oliveiras", coordinate: location.coordinate)
            case .crasLagamar:
                return MapLocations("CRAS Lagamar", coordinate: location.coordinate)
            case .crasMucuripe:
                return MapLocations("CRAS Mucuripe", coordinate: location.coordinate)
            case .crasServiluz:
                return MapLocations("CRAS Serviluz", coordinate: location.coordinate)
            case .crasVilaUniao:
                return MapLocations("CRAS Vila União", coordinate: location.coordinate)
            case .crasCastelao:
                return MapLocations("CRAS Castelão", coordinate: location.coordinate)
            case .crasMessejana:
                return MapLocations("CRAS Messejana", coordinate: location.coordinate)
            case .crasJoaoPessoa:
                return MapLocations("CRAS João Pessoa", coordinate: location.coordinate)
            case .crasJoaoXXIII:
                return MapLocations("CRAS João XXIII", coordinate: location.coordinate)
            case .crasConjPalmeiras:
                return MapLocations("CRAS Conjunto Palmeiras", coordinate: location.coordinate)
            case .crasBomJardim:
                return MapLocations("CRAS - Bom Jardim", coordinate: location.coordinate)
            case .crasPresidenteKennedy:
                return MapLocations("CRAS Presidente Kennedy", coordinate: location.coordinate)
            case .crasBelaVista:
                return MapLocations("CRAS Bela Vista", coordinate: location.coordinate)
            case .crasConjEsperanca:
                return MapLocations("CRAS Conjunto Esperança", coordinate: location.coordinate)
            case .crasAntonioBezerra:
                return MapLocations("CRAS Antônio Bezerra", coordinate: location.coordinate)
            case .crasGranjaPortugal:
                return MapLocations("CRAS Granja Portugal", coordinate: location.coordinate)
            case .crasBarraCeara:
                return MapLocations("CRAS Barra do Ceará", coordinate: location.coordinate)
            }
        }
    }
    
    static var farmaciasAllCases: [MapLocations] {
        return FarmaciaLocation.allCases.map { location in
            switch location {
            case .farmaciaConviva:
                return MapLocations("Farmácia Conviva", coordinate: location.coordinate)
            case .integralFarma:
                return MapLocations("Integral Farma", coordinate: location.coordinate)
            case .farmaciaLocal:
                return MapLocations("Farmácia Local", coordinate: location.coordinate)
            case .farmaciaPharmaline:
                return MapLocations("Farmacia Pharmaline", coordinate: location.coordinate)
            case .farmaciaAnaFarma:
                return MapLocations("Farmácia Ana Farma", coordinate: location.coordinate)
            case .farmaciaPagueMenos1:
                return MapLocations("Farmácia Pague Menos 1", coordinate: location.coordinate)
            case .farmaciaPagueMenos2:
                return MapLocations("Farmácia Pague Menos 2", coordinate: location.coordinate)
            case .redeSuperPharma:
                return MapLocations("Rede Super Pharma", coordinate: location.coordinate)
            case .drogariaGarciaLtda:
                return MapLocations("Drogaria Garcia Ltda", coordinate: location.coordinate)
            case .farmaciaConviva2:
                return MapLocations("Farmácia Conviva 2", coordinate: location.coordinate)
            case .farmaciaPagueMenos3:
                return MapLocations("Farmácia Pague Menos 3", coordinate: location.coordinate)
            case .farmaciaPagueMenos4:
                return MapLocations("Farmácia Pague Menos 4", coordinate: location.coordinate)
            case .farmaciaPagueMenos5:
                return MapLocations("Farmácia Pague Menos 5", coordinate: location.coordinate)
            case .farmaciaPagueMenos6:
                return MapLocations("Farmácia Pague Menos 6", coordinate: location.coordinate)
            case .farmaciaPagueMenos7:
                return MapLocations("Farmácia Pague Menos 7", coordinate: location.coordinate)
            case .farmaciaPagueMenos8:
                return MapLocations("Farmácia Pague Menos 8", coordinate: location.coordinate)
            case .farmaciaPagueMenos9:
                return MapLocations("Farmácia Pague Menos 9", coordinate: location.coordinate)
            case .farmaciaPagueMenos10:
                return MapLocations("Farmácia Pague Menos 10", coordinate: location.coordinate)
            case .farmaciaPagueMenos11:
                return MapLocations("Farmácia Pague Menos 11", coordinate: location.coordinate)
            case .farmaciaPagueMenos12:
                return MapLocations("Farmácia Pague Menos 12", coordinate: location.coordinate)
            case .farmaciaPagueMenos13:
                return MapLocations("Farmácia Pague Menos 13", coordinate: location.coordinate)
            case .farmaciaEufrazina:
                return MapLocations("Farmácia Eufrazina", coordinate: location.coordinate)
            }
        }
    }
    
}

enum CrasLocation: CaseIterable {
    case crasDende
    case crasLuciano
    case crasJardimOliveiras
    case crasLagamar
    case crasMucuripe
    case crasServiluz
    case crasVilaUniao
    case crasCastelao
    case crasMessejana
    case crasJoaoPessoa
    case crasJoaoXXIII
    case crasConjPalmeiras
    case crasBomJardim
    case crasPresidenteKennedy
    case crasBelaVista
    case crasConjEsperanca
    case crasAntonioBezerra
    case crasGranjaPortugal
    case crasBarraCeara
    
    var coordinate: CLLocationCoordinate2D {
        switch self {
        case .crasDende: return CLLocationCoordinate2D(latitude: -3.7731065673918454, longitude: -38.47732134440219)
        case .crasLuciano: return CLLocationCoordinate2D(latitude: -3.7676269265597817, longitude: -38.49670114417816)
        case .crasJardimOliveiras: return CLLocationCoordinate2D(latitude: -3.782378893229445, longitude: -38.505059503334806)
        case .crasLagamar: return CLLocationCoordinate2D(latitude: -3.754685825457037, longitude: -38.508755309170105)
        case .crasMucuripe: return CLLocationCoordinate2D(latitude: -3.721101843491234, longitude: -38.47785149994851)
        case .crasServiluz: return CLLocationCoordinate2D(latitude: -3.7097908460686146, longitude: -38.464458117022936)
        case .crasVilaUniao: return CLLocationCoordinate2D(latitude: -3.7635975426020627, longitude: -38.533478944386296)
        case .crasCastelao: return CLLocationCoordinate2D(latitude: -3.7865501498063727, longitude: -38.516991752029625)
        case .crasMessejana: return CLLocationCoordinate2D(latitude: -3.823205547341223, longitude: -38.4675239290284)
        case .crasJoaoPessoa: return CLLocationCoordinate2D(latitude: -3.746126876719535, longitude: -38.54858978133058)
        case .crasJoaoXXIII: return CLLocationCoordinate2D(latitude: -3.7658206408188786, longitude: -38.57999865670574)
        case .crasConjPalmeiras: return CLLocationCoordinate2D(latitude: -3.8337420301932346, longitude: -38.530431657665126)
        case .crasBomJardim: return CLLocationCoordinate2D(latitude: -3.7768368195128015, longitude: -38.612213337148106)
        case .crasPresidenteKennedy: return CLLocationCoordinate2D(latitude: -3.7192562761181107, longitude: -38.57375854124694)
        case .crasBelaVista: return CLLocationCoordinate2D(latitude: -3.7425542131148473, longitude: -38.56138063069751)
        case .crasConjEsperanca: return CLLocationCoordinate2D(latitude: -3.8035596747978926, longitude: -38.58746556931277)
        case .crasAntonioBezerra: return CLLocationCoordinate2D(latitude: -3.7261145854787308, longitude: -38.5874981108155)
        case .crasGranjaPortugal: return CLLocationCoordinate2D(latitude: -3.7713510816054674, longitude: -38.600535225709734)
        case .crasBarraCeara: return CLLocationCoordinate2D(latitude: -3.695957137884512, longitude: -38.581324793888484)
        }
    }
}

enum FarmaciaLocation: CaseIterable {
    case farmaciaConviva
    case integralFarma
    case farmaciaLocal
    case farmaciaPharmaline
    case farmaciaAnaFarma
    case farmaciaPagueMenos1
    case farmaciaPagueMenos2
    case redeSuperPharma
    case drogariaGarciaLtda
    case farmaciaConviva2
    case farmaciaPagueMenos3
    case farmaciaPagueMenos4
    case farmaciaPagueMenos5
    case farmaciaPagueMenos6
    case farmaciaPagueMenos7
    case farmaciaPagueMenos8
    case farmaciaPagueMenos9
    case farmaciaPagueMenos10
    case farmaciaPagueMenos11
    case farmaciaPagueMenos12
    case farmaciaPagueMenos13
    case farmaciaEufrazina
    
    var coordinate: CLLocationCoordinate2D {
        switch self {
        case .farmaciaConviva: return CLLocationCoordinate2D(latitude: -3.830907825814421, longitude: -38.5708072616228)
        case .integralFarma: return CLLocationCoordinate2D(latitude: -3.716451145990014, longitude: -38.55863137913073)
        case .farmaciaLocal: return CLLocationCoordinate2D(latitude: -3.7683472083615412, longitude: -38.533962768229415)
        case .farmaciaPharmaline: return CLLocationCoordinate2D(latitude: -3.740045504715627, longitude: -38.58627279932848)
        case .farmaciaAnaFarma: return CLLocationCoordinate2D(latitude: -3.7944689673833696, longitude: -38.4676682631758)
        case .farmaciaPagueMenos1: return CLLocationCoordinate2D(latitude: -3.754952645933857, longitude: -38.488298343331365)
        case .farmaciaPagueMenos2: return CLLocationCoordinate2D(latitude: -3.7393461777004946, longitude: -38.59351192333127)
        case .redeSuperPharma: return CLLocationCoordinate2D(latitude: -3.7233944067531417, longitude: -38.5129721105829)
        case .drogariaGarciaLtda: return CLLocationCoordinate2D(latitude: -3.7705411439935452, longitude: -38.55579943021307)
        case .farmaciaConviva2: return CLLocationCoordinate2D(latitude: -3.746144895533102, longitude: -38.555374697090656)
        case .farmaciaPagueMenos3: return CLLocationCoordinate2D(latitude: -3.757677456568638, longitude: -38.53200140636102)
        case .farmaciaPagueMenos4: return CLLocationCoordinate2D(latitude: -3.7349357399228182, longitude: -38.565234297687525)
        case .farmaciaPagueMenos5: return CLLocationCoordinate2D(latitude: -3.7343638123232625, longitude: -38.50533396879675)
        case .farmaciaPagueMenos6: return CLLocationCoordinate2D(latitude: -3.7148484013939056, longitude: -38.56415258423385)
        case .farmaciaPagueMenos7: return CLLocationCoordinate2D(latitude: -3.74687230142268, longitude: -38.535259581535726)
        case .farmaciaPagueMenos8: return CLLocationCoordinate2D(latitude: -3.726093733966005, longitude: -38.52925748194295)
        case .farmaciaPagueMenos9: return CLLocationCoordinate2D(latitude: -3.788693017153759, longitude: -38.46998159573027)
        case .farmaciaPagueMenos10: return CLLocationCoordinate2D(latitude: -3.7593529863579596, longitude: -38.585927152767084)
        case .farmaciaPagueMenos11: return CLLocationCoordinate2D(latitude: -3.7900702720249937, longitude: -38.54063957060979)
        case .farmaciaPagueMenos12: return CLLocationCoordinate2D(latitude: -3.835146107815398, longitude: -38.5210895949647)
        case .farmaciaPagueMenos13: return CLLocationCoordinate2D(latitude: -3.7208506972528155, longitude: -38.58664115698887)
        case .farmaciaEufrazina: return CLLocationCoordinate2D(latitude: -3.773717237751777, longitude: -38.511999899872094)
        }
    }
}

#Preview {
    TelaMapa()
}
