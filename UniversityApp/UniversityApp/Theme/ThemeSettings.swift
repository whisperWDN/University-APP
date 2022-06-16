//
//  ThemeSettings.swift
//  UniversityApp
//
//  Created by admin on 2022/6/16.
//

import SwiftUI
class ThemeSettings:ObservableObject{
    @Published var themeSettings:Int =
    UserDefaults.standard.integer(forKey: "Theme"){
        didSet{
            UserDefaults.standard.set(self.themeSettings, forKey: "Theme")
        }
    }
    public static let shared = ThemeSettings()
}
