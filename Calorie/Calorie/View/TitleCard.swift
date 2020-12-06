//
//  TitleCard.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct TitleCard: View {
    // MARK: - BODY
    var body: some View {
        ZStack {
            CardBackground()
            CardLabel(title: "Calorie", caption: "BMR Calculator")
        } //: ZSTACK
        .frame(width: 300, height: 500)
    }
}
