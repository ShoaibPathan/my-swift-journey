//
//  SliderValue.swift
//  Index
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct SliderValue: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: IndexModel
    
    let value: Double
    let withDecimal: Bool
    
    // MARK: - BODY
    var body: some View {
        if withDecimal == true {
            Text(String(format: "%0.1f", value))
                    .font(.title)
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color(.white))
                    .background(Color(.systemGreen))
                    .clipShape(Circle())
        } else {
            Text(String(format: "%0.0f", value))
                    .font(.title)
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color(.white))
                    .background(Color(.systemGreen))
                    .clipShape(Circle())
        }
    }
}
