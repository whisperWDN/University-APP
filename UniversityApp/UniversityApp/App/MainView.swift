//
//  MainView.swift
//  UniversityAPP
//
//  Created by admin on 2022/5/20.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Image(systemName: "square.grid.2x2")
                    Text("浏览")
                }
            ClassificationView()
                .tabItem{
                    Image(systemName: "circle.grid.cross")
                    Text("分类")
                }
            MapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("位置")
                }
            SettingsView()
                .tabItem{
                    Image(systemName: "gear")
                    Text("设置")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
