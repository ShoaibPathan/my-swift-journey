//
//  SliderValue.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct SliderValue: View {
    // MARK: - PROPERTIES
    let value: Double

    // MARK: - BODY
    var body: some View {
        Text(String(format: "%0.0f", value))
            .font(.title)
            .frame(width: 80, height: 80)
            .foregroundColor(Color(.white))
            .background(Color(.systemBlue))
            .clipShape(Circle())
    }
}
