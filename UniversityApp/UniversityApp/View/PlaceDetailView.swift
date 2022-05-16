//
//  PlaceDetailView.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/7.
//

import SwiftUI

struct PlaceDetailView: View {
    let place:Place
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                Image(place.image)
                    .resizable()
                    .scaledToFit()
                
                Text(place.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor
                                    .frame(height:6)
                                    .offset(y:24)
                    )

                
                Text(place.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "中国的名胜古迹")
                        .padding(.horizontal)
                    InsetGalleryView(place: place)
                }
                
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "你知道吗？")
                    InsertMessageView(place: place)
                }
                .padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "关于\(place.name)")
                    
                    Text(place.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "map", headingText: "名胜古迹")
                    InsertMapView()
                }
                .padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "了解更多")
                    ExternalWebLinkView(place: place)
                }
                .padding(.horizontal)
            }
        }//Scroll
        .navigationBarTitle("了解关于\(place.name)",displayMode: .inline)
        

    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static let places:[Place]=Bundle.main.decode("places.json")
    static var previews: some View {
        PlaceDetailView(place: places[3])
    }
}
