//
//  UniversityDetailView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/25.
//

import SwiftUI
//详情视图
struct UniversityDetailView: View {
    let university:University
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                //主景图
                Image(university.image)
                    .resizable()
                    .scaledToFit()
                //大学名称
                Text(university.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor
                                    .frame(height:6)
                                    .offset(y:24)
                    )

                //主标题
                Text(university.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //大学的图集，共三张
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "中国高校")
                        .padding(.horizontal)
                    InsetGalleryView(university: university)
                }
                //小知识
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "你知道吗？")
                    InsetMessageView(university: university)
                }
                .padding(.horizontal)
                
                //相关信息
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "关于\(university.name)")

                    Text(university.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                //地图
                Group{
                    HeadingView(headingImage: "map", headingText: "中国名校")
                    InsetMapView()
                }
                .padding(.horizontal)
                //学校官网
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "了解更多")
                    ExternalWebLinkView(university: university)
                }
                .padding(.horizontal)
                //学生评价
                Group{
                    HeadingView(headingImage: "message.circle", headingText: "学生评价")
                    InsetCommentView(university: university)
                }
                .padding(.horizontal)
            }
        }//Scroll
        .navigationBarTitle("了解关于\(university.name)",displayMode: .inline)
        

    }
}

struct UniversityDetailView_Previews: PreviewProvider {
    static let universities:[University]=Bundle.main.decode("universities.json")
    static var previews: some View {
        UniversityDetailView(university: universities[0])
    }
}
