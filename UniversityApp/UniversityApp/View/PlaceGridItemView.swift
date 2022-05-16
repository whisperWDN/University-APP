//
//  PlaceGridItemView.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/24.
//

import SwiftUI

struct PlaceGridItemView: View {
    let place:Place
    var body: some View {
        Image(place.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct PlaceGridItemView_Previews: PreviewProvider {
    static let places:[Place] = Bundle.main.decode("places.json")
    static var previews: some View {
        PlaceGridItemView(place: places[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
