//
//  InsertMapView.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/8.
//

import SwiftUI
import MapKit

struct InsertMapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 31.574565, longitude: 108.884720),                       span:MKCoordinateSpan(latitudeDelta: 60, longitudeDelta: 60))

    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
            NavigationLink(destination: MapView())
            {
                HStack{
                    Image(systemName: "mappin.circle")
                        .foregroundColor(.white)
                        .imageScale(.large)
                    
                    Text("所在位置")
                        .foregroundColor(.accentColor)
                        .fontWeight(.bold)
                }//HStack
                .padding(.vertical,10)
                .padding(.horizontal,14)
                .background(
                    Color.black
                        .opacity(0.4)
                        .cornerRadius(8)
                )
            }
                .padding(12),alignment: .topTrailing
            )
            .frame(height:256)
            .cornerRadius(12)
    }
}

struct InsertMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsertMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
