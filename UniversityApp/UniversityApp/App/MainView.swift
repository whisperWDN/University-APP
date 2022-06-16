//
//  MainView.swift
//  UniversityAPP
//
//  Created by admin on 2022/5/20.
//

import SwiftUI

//主页面，底部导航栏
struct MainView: View {
    var body: some View {
        TabView{
            //浏览视图
            ContentView()
                .tabItem{
                    Image(systemName: "square.grid.2x2")
                    Text("浏览")
                }
            //分类视图
            ClassificationView()
                .tabItem{
                    Image(systemName: "circle.grid.cross")
                    Text("分类")
                }
            //地图视图
            MapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("位置")
                }
            //设置视图
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
