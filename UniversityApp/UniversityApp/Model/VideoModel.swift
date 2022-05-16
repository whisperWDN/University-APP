//
//  VideoModel.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/9.
//

import Foundation
struct Video:Codable,Identifiable{
    let id:String
    let name:String
    let headline:String
    var thumbnail:String{
        get{
            return "视频封面-\(name)"
        }
    }
}
