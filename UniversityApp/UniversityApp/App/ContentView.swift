//
//  ContentView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/25.
//

import SwiftUI

struct ContentView: View {
  //MARK: - Properties

  let universities :[University]=Bundle.main.decode("universities.json")
    let themes:[Theme]=themeData
    @ObservedObject var theme = ThemeSettings()
  
  //MARK: - Body
  var body: some View {
    NavigationView {
          List {
            CoverImageView()
              .frame(height: 200)
              .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
              ForEach(universities,id:\.rank) { university in
              NavigationLink(destination: UniversityDetailView(university: university)) {
                UniversityListItemView(university: university)
              } //: Link
            } //: Loop
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

