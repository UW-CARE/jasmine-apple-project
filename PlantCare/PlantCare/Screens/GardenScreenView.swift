//
//  GardenScreenView.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 3/1/24.
//

import SwiftUI

struct GardenScreenView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading){
                Text("Docorate")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("your garden")
                    .font(.title)
            }
            .foregroundColor(Color("Primary"))
            Spacer()
        }
        .padding()
        
        Spacer()
        
    }
}

#Preview {
    GardenScreenView()
}
