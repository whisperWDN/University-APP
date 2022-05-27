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
    var name:String
    var image:String
    var latitude:Double
    var longitude:Double
    var location:CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
