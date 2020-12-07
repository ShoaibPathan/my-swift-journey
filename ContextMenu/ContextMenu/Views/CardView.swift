//
//  CardView.swift
//  ContextMenu
//
//  Created by Luan Nguyen on 07/12/2020.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    @Binding var cardType: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            VStack {
                Text("3")
                    .font(.system(size: 44))
                    .fontWeight(.bold)
                
                Text(cardType)
                    .font(.largeTitle)
                
                Spacer()
            } //: VSTACK
            
            VStack {
                ForEach(0 ..< 3) { item in
                    Text(cardType)
                        .font(.system(size: 100))
                }
            } //: VSTACK
            .padding(.horizontal, 50)
            
            VStack {
                Text("3")
                    .font(.system(size: 44))
                    .fontWeight(.bold)
                
                Text(cardType)
                    .font(.largeTitle)
                
                Spacer()
            } //: VSTACK
            .rotationEffect(.degrees(180))
        } //: HSTACK
        .frame(height: 400)
        .padding()
        .foregroundColor(.red)
        .background(Color(.systemGray6))
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.6), radius: 4, x: 0, y: 0)
    }
}

// MARK: - PREVIEW
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardType: Binding.constant("♥️"))
    }
}
