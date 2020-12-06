//
//  AgeCard.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct AgeCard: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: CalorieModel
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            CardBackground()
            VStack {
                CardLabel(title: "Age", caption: "Enter Your Age")
                VStack {
                    SliderValue(value: model.age)
                        .padding(.bottom, 15)
                    Slider(value: $model.age, in: 15...80, step: 1.0)
                }
                .frame(width: 150)
            } //: VSTACK
        } //: ZSTACK
        .frame(width: 300, height: 500)
    }
}
