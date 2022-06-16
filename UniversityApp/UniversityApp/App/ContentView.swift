//
//  ContentView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/25.
//

import SwiftUI
//浏览视图
struct ContentView: View {
  //MARK: - Properties

  let universities :[University]=Bundle.main.decode("universities.json")
    let themes:[Theme]=themeData
    @ObservedObject var theme = ThemeSettings()
  
  //MARK: - Body
  var body: some View {
    NavigationView {
          List {
              //图集
            CoverImageView()
              .frame(height: 200)
              .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            //大学列表
              ForEach(universities,id:\.rank) { university in
              NavigationLink(destination: UniversityDetailView(university: university)) {
                UniversityListItemView(university: university)
              } //: Link
            } //: Loop
              
              //项目开发信息
            CopyrightView()
              .modifier(CenterModifier())
          } //: List
      .navigationBarTitle("中国高校", displayMode: .large)

    } //: NavigationView
    .accentColor(themes[self.theme.themeSettings].themeColor)
  }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

