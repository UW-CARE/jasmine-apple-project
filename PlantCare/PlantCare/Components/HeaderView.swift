//
//  HeaderView.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 2/29/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading){
                Text("Exlusive Plants")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("for your hobby")
                    .font(.title)
            }
            .foregroundColor(Color("Primary"))
            Spacer()
            Image("profile-image")
                .resizable()
                .frame(width: 70, height: 70)
        }
        .accessibilityElement(children: .combine)
    }
}
