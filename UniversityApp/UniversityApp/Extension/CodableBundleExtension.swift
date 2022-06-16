//
//  CodableBundleExtension.swift
//  UniversityApp
//
//  Created by admin on 2022/5/25.
//

import Foundation

//解析json文件
extension Bundle{
    func decode<T:Codable>(_ file:String)->T{
        guard let url=self.url(forResource: file, withExtension: nil)
        else{
            fatalError("载入本地文件\(file)失败!")
        }
        
        guard let data=try?Data(contentsOf: url)
        else{
            fatalError("从Bundle中读取\(file)文件的数据失败")
        }
        let decode = JSONDecoder()
        guard let loaded = try?decode.decode(T.self, from: data)
        else{
            fatalError("从Bundle中解析\(file)文件的数据失败")
        }
        
        return loaded
    }
}
