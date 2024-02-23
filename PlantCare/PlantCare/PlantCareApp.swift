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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
