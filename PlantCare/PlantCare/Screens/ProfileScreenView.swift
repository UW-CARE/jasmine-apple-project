//
//  ProfileScreenView.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 3/1/24.
//

import SwiftUI

struct ProfileScreenView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading){
                Text("Profile")
                    .font(.title)
                    .fontWeight(.semibold)
            }
            .foregroundColor(Color("Primary"))
            Spacer()
        }
        .padding()
        
        Image("profile-image")
            .resizable()
            .frame(width: 100, height: 100)
        
        Spacer()
        
    }
}

#Preview {
    ProfileScreenView()
}
