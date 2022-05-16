//
//  GalleryView.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/7.
//

import SwiftUI

struct GalleryView: View {
//    let gridLayout:[GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
//    let gridLayout:[GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    @State private var gridLayout:[GridItem] = [GridItem(.flexible())]
    @State private var gridColumn:Double = 3.0
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    let places:[Place]=Bundle.main.decode("places.json")
    @State private var selectedPlace : String="万里长城"
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){

            
            VStack(alignment: .center, spacing: 30){
                Image(selectedPlace)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 8))
                
                Slider(value:$gridColumn,in:2...4,step:1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn){
                        value in gridSwitch()
                    }

                
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10){
                    ForEach(places){
                        item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,lineWidth: 1))
                            .onTapGesture {
                                selectedPlace=item.image
                                haptics.impactOccurred()
                            }
                    }
                }//Grid
                .onAppear{
                    gridSwitch()
                }
                .animation(.easeIn)
            }
            .padding(.horizontal,10)
            .padding(.vertical,50)


        }
        .frame( maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
