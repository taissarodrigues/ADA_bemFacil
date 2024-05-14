//
//  SwiftUIView.swift
//  bem-facil
//
//  Created by Cauan Lopes Galdino on 14/05/24.
//

import SwiftUI
import MapKit

struct TelaMapa: View {
    
    let ifce = CLLocationCoordinate2D(latitude: -3.743861083195101, longitude: -38.53585185163856)
    
    var body: some View {
        
        //        Frame
        
        VStack(){
            
            Text("Pontos de Coleta")
            
        
            Map(){
                
                Marker("IFCE", coordinate: ifce)
                
            }
            .frame(width: 350, height: 350)
            Spacer()
            
        }
    }
}

#Preview {
    TelaMapa()
}
