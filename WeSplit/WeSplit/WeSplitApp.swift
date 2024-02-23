//
//  WeSplitApp.swift
//  WeSplit
//
//  Created by Jasmine Zhang on 2/16/24.
//

import SwiftUI

@main
struct WeSplitApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
