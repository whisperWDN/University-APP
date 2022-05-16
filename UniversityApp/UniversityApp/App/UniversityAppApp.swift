//
//  UniversityAppApp.swift
//  UniversityApp
//
//  Created by admin on 2022/5/5.
//

import SwiftUI

@main
struct UniversityAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
