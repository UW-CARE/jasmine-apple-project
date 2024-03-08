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
                .accessibilityLabel("Home Tab")
            
            
            GardenScreenView()
                .tabItem {
                    Label("Garden", systemImage: "leaf.fill")
                }
                .accessibilityLabel("Garden Tab")
            
            ProfileScreenView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                .accessibilityLabel("Profile Tab")
        }
    }

}

#Preview {
    ContentView()
}
