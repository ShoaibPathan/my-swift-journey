//
//  CardLabel.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct CardLabel: View {
    // MARK: - PROPERTIES
    let title: String
    let caption: String
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(.systemBlue))
                .padding(.bottom, 10)
            Text(caption)
                .font(.caption)
                .foregroundColor(Color(.systemGray))
                .padding(.bottom, 30)
        } //: VSTACK
    }
}
