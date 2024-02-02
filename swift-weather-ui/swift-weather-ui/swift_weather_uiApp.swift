//
//  swift_weather_uiApp.swift
//  swift-weather-ui
//
//  Created by Jasmine Zhang on 2/1/24.
//

import SwiftUI

@main
struct swift_weather_uiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
