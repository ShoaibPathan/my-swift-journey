//
//  HeightCard.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct HeightCard: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: CalorieModel
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            CardBackground()
            VStack {
                CardLabel(title: "Height", caption: "Enter Your Height (CM)")
                VStack {
                    SliderValue(value: model.height)
                        .padding(.bottom, 15)
                    Slider(value: $model.height, in: 1...250, step: 1.0)
                } //: VSTACK
                .frame(width: 150)
            } //: VSTACK
        } //: ZSTACK
        .frame(width: 300, height: 500)
    }
}
