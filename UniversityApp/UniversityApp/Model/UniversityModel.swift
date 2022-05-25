//
//  UniversityModel.swift
//  UniversityApp
//
//  Created by admin on 2022/5/25.
//

import Foundation

struct University:Codable,Identifiable{
    
    let id:Int
    let name:String
//    标题
    let headline:String
//    简介
    let description:String
//    链接
    let link:String
//    主景图
    let image:String
//    信息
    let message:[String]
//    是否被收藏
    let hearted:Bool
//    学生评价
    let comments:[String]
//    地理分区
    let region:String
//    学科能力
    let ability:[Int]
//    排名
    let rank:Int
//
    let logo:String
}
