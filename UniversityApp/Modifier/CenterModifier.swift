//
//  CenterModifier.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/25.
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
