//
//  CenterModifier.swift
//  UniversityApp
//
//  Created by admin on 2022/5/26.
//

import SwiftUI
struct CenterModifier:ViewModifier{
    func body(content:Content)->some View{
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
