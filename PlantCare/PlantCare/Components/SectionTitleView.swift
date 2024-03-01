//
//  SectionTitleView.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 2/29/24.
//

import SwiftUI

struct SectionTitleView: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(Color("Primary"))
            Spacer()
            Text("See All")
                .fontWeight(.medium)
                .foregroundColor(Color("Primary").opacity(0.5))
            
        }
    }
}

