//
//  PlantCareApp.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 2/23/24.
//

import SwiftUI

@main
struct PlantCareApp: App {
    let persistenceController = PersistenceController.shared
    @State private var showContentView = false

    var body: some Scene {
        WindowGroup {
//            if showContentView {
//                ContentView()
//                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
//            } else {
//                WelcomeScreenView {
//                    showContentView = true;
//                }
//            }
            WelcomeScreenView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
