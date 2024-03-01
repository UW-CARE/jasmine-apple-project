//
//  CategoriesView.swift
//  PlantCare
//
//  Created by Jasmine Zhang on 2/29/24.
//

import SwiftUI

var tabs = ["All","Indoor", "Outdoor", "Garden" ]


struct CategoryBtn: View {
    var text: String
    @Binding var selected: String
    var animation: Namespace.ID
    var body: some View {
        Button(action: {
            withAnimation(.spring(), {
                selected = text
            })
        }){
            Text(text)
                .fontWeight(.medium)
                .foregroundStyle(selected == text ? .white : .black)
                .padding()
                .padding(.horizontal)
                .background(ZStack {
                    if(selected == text) {
                        Color("Primary")
                            .matchedGeometryEffect(id: "Tab", in: animation)
                        
                    }
                })
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.16), radius: 16, x:4, y:4)
        }
    }
}

struct CategoriesView: View {
    @State var selectedTab = tabs[0]
    @Namespace var animation
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    CategoryBtn(text: tab, selected: $selectedTab, animation: animation)
                }
            }
            .padding(.vertical, 24)
        }
    }
}

#Preview {
    CategoriesView()
}
