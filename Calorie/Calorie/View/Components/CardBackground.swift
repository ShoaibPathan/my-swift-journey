//
//  CardBackground.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct CardBackground: View {
    // MARK: - BODY
    var body: some View {
        Color(.white)
            .cornerRadius(20)
            .shadow(color: Color(.systemGray5), radius: 5, x: 2, y: 2)
    }
}
