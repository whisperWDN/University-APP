//
//  PlaceModel.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/7.
//

import Foundation
struct Place:Codable,Identifiable{
    let id:String
    let name:String
    let headline:String
    let description:String
    let link:String
    let image:String
    let gallery:[String]
    let message:[String]
}
