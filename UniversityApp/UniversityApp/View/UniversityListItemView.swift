//
//  UniversityListItemView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/25.
//

import SwiftUI

struct UniversityListItemView: View {
    let university:University
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Image(university.logo)
                .resizable()
                .scaledToFill()
                .frame(width: 75, height: 75)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 8){
                Text(university.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(university.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
            }//VStack
            
        }//HStack
    }
}

struct UniversityListItemView_Previews: PreviewProvider {
    static let universities:[University]=Bundle.main.decode("universities.json")
    static var previews: some View {
        UniversityListItemView(university: universities[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
