//
//  CalculateButton.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct CalculateButton: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: CalorieModel
    
    @Binding var index: Int
    
    // MARK: - BODY
    var body: some View {
        Text("CALCULATE")
            .font(.caption2)
            .fontWeight(.bold)
            .padding(.all, 8)
            .foregroundColor(Color(.white))
            .background(Color(.systemBlue))
            .cornerRadius(20)
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture {
                model.calculateBMR()
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
