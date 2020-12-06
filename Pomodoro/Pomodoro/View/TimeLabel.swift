//
//  TimeLabel.swift
//  Pomodoro
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct TimeLabel: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: PomodoroModel
    
    var remainingTime: String { String(format: "%0.0f", model.timeRemaining) }
    let completedIcon: String = "checkmark.circle.fill"
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            if  model.timerActive == true {
                Text(remainingTime)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(.systemGray))
                    .onLongPressGesture(perform: model.resetPomodoroTimer)
            } else {
                Image(systemName: completedIcon)
                    .font(.largeTitle)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(.systemGreen))
            }
        } //: ZSTACK
    }
}
