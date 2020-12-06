//
//  WeightCard.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct WeightCard: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: CalorieModel
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            CardBackground()
            VStack {
                CardLabel(title: "Weight", caption: "Enter Your Weight (KG)")
                VStack {
                    SliderValue(value: model.weight)
                        .padding(.bottom, 15)
                    Slider(value: $model.weight, in: 1...250, step: 1.0)
                } //: VSTACK
                .frame(width: 150)
            } //: VSTACK
        } //: ZSTACK
        .frame(width: 300, height: 500)
    }
}
