//
//  TabButton.swift
//  Furnitures
//
//  Created by Luan Nguyen on 08/12/2020.
//

import SwiftUI

struct TabButton: View {
    // MARK: - PROPERTIES
    var title: String
    var image: String
    
    @Binding var selected : String
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            withAnimation(.spring()){selected = title}
        }) {
            HStack(spacing: 10) {
                Image(image)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                
                if selected == title {
                    Text(title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            } //: HSTACK
            .padding(.vertical,10)
            .padding(.horizontal)
            .background(Color.white.opacity(selected == title ? 0.08 : 0))
            .clipShape(Capsule())
        }
    }
}
