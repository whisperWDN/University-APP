//
//  HeadingView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/25.
//

import SwiftUI

struct HeadingView: View {
    var headingImage:String
    var headingText:String
    var body: some View {
        HStack{
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }//HStack
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "中国高校")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
