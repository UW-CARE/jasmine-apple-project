//
//  ContentView.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 2/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            GardenScreenView()
                .tabItem {
                    Label("Garden", systemImage: "leaf.fill")
                }

            ProfileScreenView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }

}

#Preview {
    ContentView()
}
