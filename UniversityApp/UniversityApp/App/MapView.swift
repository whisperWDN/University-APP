//
//  MapView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/25.
//

import SwiftUI
import MapKit

//地图视图
struct MapView: View {
    //默认地图焦点
    @State private var region:MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 30.555624412131368, longitude: 114.30381222526006)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 25.0, longitudeDelta: 25.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    //学校坐标信息
    let locations:[UniversityLocation]=Bundle.main.decode("locations.json")
    var body: some View {
        Map(coordinateRegion: $region,annotationItems: locations){
            item in

            MapAnnotation(coordinate: item.location){
                MapAnnotationView(location: item)
            }
            
        }
        .overlay(
            HStack(alignment: .center, spacing: 12){
                //校徽
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                //经纬度
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
