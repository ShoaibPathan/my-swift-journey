//
//  ResultCard.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct ResultCard: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: CalorieModel
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            CardBackground()
            VStack {
                CardLabel(title: "Result", caption: "Your Basal Metabolic Rate is")
                VStack {
                    Text(String(format: "%0.0f", model.resultBMR))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemBlue))
                    Text("Calories / Day")
                        .font(.caption)
                        .padding(.top, 20)
                        .foregroundColor(Color(.systemGray))
                } //: VSTACK
            } //: VSTACK
        } //: ZSTACK
        .frame(width: 300, height: 500)
    }
}
