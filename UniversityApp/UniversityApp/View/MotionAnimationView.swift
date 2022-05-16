//
//  MotionAnimationView.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/9.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle=Int.random(in: 12...16)
    @State private var isAnimating=false
    func randomCoordnate(max:CGFloat)->CGFloat{
        return CGFloat.random(in: 0...max)
    }
    func randomSize()->CGFloat{
        return CGFloat(Int.random(in: 10...300))
    }
    func randomScale()->CGFloat{
        CGFloat(Double.random(in: 0.1...2.0))
    }
    func randomSpeed()->Double{
        Double.random(in: 0.025...1.0)
    }
    func randomDelay()->Double{
        Double.random(in: 0...2)
    }
    var body: some View {
        GeometryReader{
            geometry in
            ZStack{
                ForEach(0 ..< randomCircle,id:\.self){
                    item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale():1)
                        .position(x: randomCoordnate(max: geometry.size.width), y: randomCoordnate(max: geometry.size.height))
                        .animation(Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        )
                        .onAppear{
                            isAnimating=true
                        }
                }


            }//ZStack
            .drawingGroup()
        }//Geometry
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
            .previewDevice("iPhone 11 Pro")
    }
}
