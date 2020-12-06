//
//  TitleCard.swift
//  Index
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct TitleCard: View {
    // MARK: - BODY
    var body: some View {
        ZStack {
            CardBackground()
            CardLabel(title: "Index", caption: "BMI Calculator")
        } //: ZSTACK
        .frame(width: 300, height: 500)
    }
}
