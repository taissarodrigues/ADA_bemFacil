//
//  LocationDetailsView.swift
//  +BEN
//
//  Created by Cauan Lopes Galdino on 15/05/24.
//

import SwiftUI
import MapKit

struct LocationDetailsView: View {
    
    let model: MapLocations
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(model.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("\(model.coordinate.latitude)")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .padding(.trailing)
                }
                
                Spacer()
                
                Button("Open in Maps") {
                    let placemark = MKPlacemark(coordinate: model.coordinate)
                    let mapItem = MKMapItem(placemark: placemark)
                    let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
                    mapItem.openInMaps(launchOptions: launchOptions)
                }
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.gray, Color(.systemGray6))
                    
                }
            }
        }
        
    }
}

#Preview {
    LocationDetailsView(model: MapLocations("AAAA", coordinate: .init(latitude: -3, longitude: 12)))
}
