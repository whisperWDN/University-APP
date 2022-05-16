//
//  InsetGalleryView.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/8.
//

import SwiftUI

struct InsetGalleryView: View {
    let place:Place
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(alignment: .center, spacing: 15){
                ForEach(place.gallery,id:\.self){
                    item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height:200)
                        .cornerRadius(12)
                }
            }
        }
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let places:[Place]=Bundle.main.decode("places.json")
    static var previews: some View {
        InsetGalleryView(place: places[5])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
