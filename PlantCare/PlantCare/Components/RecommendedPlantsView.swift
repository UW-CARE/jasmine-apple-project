//
//  RecommendedPlantsView.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 2/29/24.
//

import SwiftUI


struct  RecommendedPlantCardView: View {
    var title: String
    var image: String
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                Image(image)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
            }
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Primary"))
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.8")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Primary").opacity(0.5))
                }
                
                HStack(alignment: .top) {
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding(.all, 8)
                        .background(Color("Primary"))
                        .cornerRadius(30)
                        .onTapGesture {
                            
                        }
                }
                
            }
            .padding()
        }
        .frame(width: 200)
        .background(Color.white)
        .cornerRadius(20.0)
        .shadow(color: Color.black.opacity(0.02), radius: 16, x:6, y:6)
    }
}

struct RecommendedPlantsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                RecommendedPlantCardView(title: "Plane Name", image: "plant1")
                RecommendedPlantCardView(title: "Plane Name", image: "plant2")
                RecommendedPlantCardView(title: "Plane Name", image: "plant3")
                RecommendedPlantCardView(title: "Plane Name", image: "plant4")
                RecommendedPlantCardView(title: "Plane Name", image: "plant5")
            }
        }
    }
}


#Preview {
    RecommendedPlantsView()
}
