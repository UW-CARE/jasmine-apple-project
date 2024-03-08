//
//  WelcomeScreenView.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 2/29/24.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("welcomeImg")
                    .resizable()
                    .accessibilityHidden(true)
                    .overlay(LinearGradient(colors: [Color.black.opacity(0.45), Color.black.opacity(0.95)], startPoint: .topLeading, endPoint: .bottomLeading))
                    .ignoresSafeArea()
                VStack(alignment: .leading){
                    Image("logo")
                        .accessibilityLabel("Plant Care logo")
                    Spacer()
                    
                    Text("Create Your")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.light)
                        .foregroundStyle(.white)
                        .accessibilityAddTraits(.isHeader)
                    
                    Text("Plant Garden")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("green-text"))
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                        .accessibilityAddTraits(.isHeader)
                    
                    Text("Docorate your house to make it greener!")
                        .foregroundStyle(Color.white.opacity(0.7))
                        .padding(.vertical, 8)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        NextBtn()
                    }
                }
                .padding()
            }
        }
        .accessibilityElement(children: .combine)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}

struct NextBtn: View {
    var body: some View {
        NavigationLink(destination: ContentView()) {
            HStack {
                Text("Next")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                Image(systemName: "chevron.forward")
            }
            .foregroundColor(Color("Primary"))
            .padding()
            .frame(maxWidth: 100, maxHeight: 50)
            .background(Color.white)
            .cornerRadius(50)
            .accessibilityLabel("Go to the next page")
            .accessibilityHint("Double-tap to navigate to the next page")
        }
    }
}



#Preview {
    WelcomeScreenView()
}
