//
//  FormRowStaticView.swift
//  UniversityApp
//
//  Created by admin on 2022/6/16.
//

import SwiftUI

struct FormRowStaticView: View {
    var icon:String
    var firstText:String
    var secondText:String
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(.gray)
                Image(systemName: icon)
                    .foregroundColor(.white)
            }//ZStack
            .frame(width: 36, height: 36, alignment: .center)
            Text(firstText).foregroundStyle(.gray)
            Spacer()
            Text(secondText)
        }//HStack
    }
}

struct FormRowStaticView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowStaticView(icon: "gear", firstText: "应用程序", secondText: "待办事项")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
