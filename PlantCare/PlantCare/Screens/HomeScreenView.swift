//
//  HomeScreenView.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 2/29/24.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack {
            Color("bg_color")
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                HeaderView()
                CategoriesView()
                SectionTitleView(title: "Recommended")
                RecommendedPlantsView()
                
            }
            .padding()
        }
        .navigationBarTitle("Home", displayMode: .inline)
    }
}



#Preview {
    HomeScreenView()
}
