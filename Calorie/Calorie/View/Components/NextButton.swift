//
//  NextButton.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct NextButton: View {
    // MARK: - PROPERTIES
    @Binding var index: Int
    
    // MARK: - BODY
    var body: some View {
        Image(systemName: "chevron.right.circle.fill")
            .font(.largeTitle)
            .foregroundColor(Color(.systemBlue))
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture {
                moveToNextCard()
            }
    }
    
    func moveToNextCard() {
        withAnimation {
            if index < 5 {
                index += 1
            } else {
                index = 0
            }
        }
    }
}
