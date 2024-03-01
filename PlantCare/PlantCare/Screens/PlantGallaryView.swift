//
//  PlantGallaryView.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 2/29/24.
//

import SwiftUI

struct PlantGallaryView: View {
    private let plants = ["plant1", "plant2", "plant3", "plant4", "plant5"]
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(plants, id: \.self) { plant in
                        Image(plant)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 150)
                            .clipped()
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            .navigationTitle("Plant Gallery")
        }
    }
}


#Preview {
    PlantGallaryView()
}
