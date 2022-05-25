//
//  CoverImageView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/25.


import SwiftUI

struct CoverImageView: View {
    let coverImages:[CoverImage]=Bundle.main.decode("covers.json")
    var body: some View {
        TabView{
            ForEach(coverImages){
                item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 300)
            }
        }//TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
