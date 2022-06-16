//
//  PlaceLocation.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/9.
//

import Foundation
import MapKit

struct UniversityLocation:Codable,Identifiable{
    var id:Int
    //名称
    var name:String
    //校徽
    var image:String
    //纬度
    var latitude:Double
    //经度
    var longitude:Double
    var location:CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
