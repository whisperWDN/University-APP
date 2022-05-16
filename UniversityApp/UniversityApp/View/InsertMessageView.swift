//
//  InsertMessageView.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/8.
//

import SwiftUI

struct InsertMessageView: View {
    let place:Place
    var body: some View {
        GroupBox{
            TabView{
                ForEach(place.message,id:\.self){
                    item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight:148,idealHeight: 168,maxHeight: 180)
        }
    }
}

struct InsertMessageView_Previews: PreviewProvider {
    static let places:[Place]=Bundle.main.decode("places.json")
    static var previews: some View {
        InsertMessageView(place: places[5])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
