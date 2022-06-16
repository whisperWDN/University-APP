//
//  ContrastView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/25.
//

import SwiftUI

//设置视图
struct SettingsView: View {
    let themes:[Theme]=themeData
    @ObservedObject var theme = ThemeSettings()
    var body: some View {

        VStack(alignment: .center, spacing: 0){
            Form{
                //切换主题颜色
                //切换后需关闭应用后重启
                Section(
                    header:
                        HStack{
                            Text("选择应用程序的配色主题")
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .foregroundColor(themes[self.theme.themeSettings].themeColor)
                } ){
                    List(themes){item in
                        Button(action: {
                            self.theme.themeSettings = item.id
                        }){
                            HStack{
                                Image(systemName: "circle.fill")
                                    .foregroundColor(item.themeColor)
                                Text(item.themeName)
                            }//HStack
                        }
                        .accentColor(.primary)
                    }//Loop
                    
                }//Section
                .padding(.vertical,3)
                
                //开发者相关信息
                Section(header:Text("关于应用程序")){
                    FormRowStaticView(icon: "gear", firstText: "应用程序", secondText: "大学汇")
                    FormRowStaticView(icon: "checkmark.seal", firstText: "兼容性", secondText: "iPhone,iPad")
                    FormRowStaticView(icon: "keyboard", firstText: "开发人员", secondText: "李昊/曾明杰/刘乐为")
                    FormRowStaticView(icon: "paintbrush", firstText: "设计人员", secondText: "whisper")
                    FormRowStaticView(icon: "flag", firstText: "版本", secondText: "1.0.0")
                }
                .padding(.vertical,3)
            }
            
        }//VStack
        .background(Color("ColorBackground"))
        .edgesIgnoringSafeArea(.all)
            

    }
}

struct ContrastView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
