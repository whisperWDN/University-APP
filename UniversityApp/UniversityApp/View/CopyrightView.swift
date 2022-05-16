//
//  CopyrightView.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/25.
//

import SwiftUI

struct CopyrightView: View {
    var body: some View {
        VStack{
            Image("launch-screen-image")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
            Copyright@whisper
            
            """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }//VStack
        .padding()
        .opacity(0.4)
    }
}

struct CopyrightView_Previews: PreviewProvider {
    static var previews: some View {
        CopyrightView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
