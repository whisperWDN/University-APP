//
//  InsetGalleryView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/25.
//

//import SwiftUI
//
//struct InsetGalleryView: View {
//    let university:University
//    var body: some View {
//        ScrollView(.horizontal,showsIndicators: false){
//            HStack(alignment: .center, spacing: 15){
//                ForEach(university.gallery,id:\.self){
//                    item in
//                    Image(item)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(height:200)
//                        .cornerRadius(12)
//                }
//            }
//        }
//    }
//}
//
//struct InsetGalleryView_Previews: PreviewProvider {
//    static let universities:[University]=Bundle.main.decode("universities.json")
//    static var previews: some View {
//        InsetGalleryView(university: universities[5])
//            .previewLayout(.sizeThatFits)
//            .padding()
//    }
//}

