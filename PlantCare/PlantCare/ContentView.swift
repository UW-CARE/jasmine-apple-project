//
//  ContentView.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 2/23/24.
//

import SwiftUI

struct ContentView: View {
    // Assuming you have 10 images named plant1, plant2, ..., plant10
    private let plants = ["ExamplePlants.imageset",""]
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2) // Adjust column count as needed

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(plants, id: \.self) { plant in
                        Image(plant)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 150) // Adjust the frame as needed
                            .clipped()
                            .cornerRadius(10) // Gives rounded corners to your images
                    }
                }
                .padding()
            }
            .navigationTitle("Plant Gallery")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
