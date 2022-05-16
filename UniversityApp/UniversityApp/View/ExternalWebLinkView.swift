//
//  ExternalWebLinkView.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/9.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let place:Place
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("百度百科")
                Spacer()
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(place.name,destination: (URL(string: place.link) ?? URL(string: "https://baike.baidu.com/"))!)
                }//Group
                .foregroundColor(.accentColor)
            }//HStack
        }
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let places:[Place]=Bundle.main.decode("places.json")
    static var previews: some View {
        ExternalWebLinkView(place: places[6])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
