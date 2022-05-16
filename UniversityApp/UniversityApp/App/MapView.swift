//
//  MapView.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/7.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region:MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 30.555624412131368, longitude: 114.30381222526006)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 25.0, longitudeDelta: 25.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations:[PlaceLocation]=Bundle.main.decode("locations.json")
    var body: some View {
//        Map(coordinateRegion: $region)
        Map(coordinateRegion: $region,annotationItems: locations){
            item in
//            MapPin(coordinate: item.location, tint: .accentColor)
//            MapMarker(coordinate: item.location, tint: .accentColor)

            MapAnnotation(coordinate: item.location){
                MapAnnotationView(location: item)
            }
            
        }
        .overlay(
            HStack(alignment: .center, spacing: 12){
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment: .leading, spacing: 3){
                    HStack{
                        Text("经度：")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }//HStack
                    Divider()
                    HStack{
                        Text("纬度：")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }//HStack
                }


                
            }//HStack
                .padding(.vertical,12)
                .padding(.horizontal,16)
                .background(Color.black
                    .cornerRadius(8)
                    .opacity(0.6))
                .padding(),alignment: .top)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
