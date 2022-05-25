//
//  InsetMessageView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/26.
//

import SwiftUI

struct InsetMessageView: View {
    let university:University
    var body: some View {
        GroupBox{
            TabView{
                ForEach(university.message,id:\.self){
                    item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight:148,idealHeight: 168,maxHeight: 180)
        }
    }
}

struct InsetMessageView_Previews: PreviewProvider {
    static let universities:[University]=Bundle.main.decode("universities.json")
    static var previews: some View {
        InsetMessageView(university:universities[5])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
