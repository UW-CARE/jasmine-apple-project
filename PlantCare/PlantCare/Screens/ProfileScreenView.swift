//
//  ProfileScreenView.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 3/1/24.
//

import SwiftUI

struct ProfileScreenView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Profile")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Primary"))
                            .accessibilityAddTraits(.isHeader)
                    }
                    Spacer()
                }
                .padding(.horizontal)
                
                Image("profile-image")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .padding(.top)
                    .accessibilityLabel("User profile image")
                
                Text("Jasmine Zhang")
                    .font(.headline)
                    .padding(.top, 2)
                    .accessibilityLabel("Username")
                
                Text("User Email: jzhang59@uw.edu")
                    .padding(.top, 1)
                    .foregroundColor(.gray)
                    .accessibilityElement(children: .combine)
                
                Text("Other information...")
                    .padding(.top, 1)
                    .foregroundColor(.gray)
                    .accessibilityElement(children: .combine)
                
                Spacer()
            }
        }
        .accessibilityIgnoresInvertColors(true)
    }
}

struct ProfileScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreenView()
            .environment(\.sizeCategory, .extraExtraLarge)
    }
}
