//
//  CopyrightView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/26.
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
            

            祝大家都能实现目标，考入心仪的名校
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
