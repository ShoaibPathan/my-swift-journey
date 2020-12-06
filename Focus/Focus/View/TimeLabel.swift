//
//  TimeLabel.swift
//  Focus
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct TimeLabel: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: FocusModel
    
    var timeRemainingString: String { String(model.timeRemaining) }
    let completedIcon: String = "checkmark.circle.fill"
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            if model.timerActive == true {
                Text(timeRemainingString)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(Color(.systemGray))
                    .onTapGesture() { model.runFocusTimer(time: 50) }
                    .onLongPressGesture(perform: model.resetFocusTimer)
            } else {
                Image(systemName: completedIcon)
                    .font(.largeTitle)
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(Color(.systemGreen))
                    .onTapGesture() { model.runFocusTimer(time: 50) }
            }
        } //: ZSTACK
    }
}
