//
//  GenderCard.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct GenderCard: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: CalorieModel
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            CardBackground()
            VStack {
                CardLabel(title: "Gender", caption: "Select Your Gender")
                Picker("Gender", selection: $model.gender) {
                    Text("Male").tag(Gender.male)
                    Text("Female").tag(Gender.female)
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 150)
            } //: VSTACK
        } //: ZSTACK
        .frame(width: 300, height: 500)
    }
}
