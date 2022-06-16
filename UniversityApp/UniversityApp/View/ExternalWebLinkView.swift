//
//  ExternalWebLinkView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/26.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let university:University
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("学校官网")
                Spacer()
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(university.name,destination: (URL(string: university.link) ?? URL(string: "https://baike.baidu.com/"))!)
                }//Group
                .foregroundColor(.accentColor)
            }//HStack
        }
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let universities:[University]=Bundle.main.decode("universities.json")
    static var previews: some View {
        ExternalWebLinkView(university: universities[6])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
