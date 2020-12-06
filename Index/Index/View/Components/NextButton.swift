//
//  NextButton.swift
//  Index
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct NextButton: View {
    // MARK: - PROPERTIES
    @Binding var activeCardIndex: Int
    
    // MARK: - BODY
    var body: some View {
        Image(systemName: "chevron.right.circle.fill")
            .font(.largeTitle)
            .foregroundColor(Color(.systemGreen))
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture(perform: moveToNextCard)
    }
    
    func moveToNextCard() {
        withAnimation {
            if activeCardIndex < 4 {
                activeCardIndex += 1
            } else {
                activeCardIndex = 0
            }
        }
    }
}
