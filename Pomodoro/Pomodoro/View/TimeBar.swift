//
//  TimeBar.swift
//  Pomodoro
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct TimeBar: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: PomodoroModel
    
    let width: CGFloat = 5
    let height: CGFloat = 350
    let cornerRadius: CGFloat = 5
    
    var progressBarHeight: CGFloat {
        if  model.timerActive == true {
            return CGFloat(model.timeRemaining / model.timeStart) * 350
        } else {
            return 0
        }
    }
    
    var progressBarColor: Color {
        if model.timeStart == 10 {
            return Color(.systemIndigo)
        } else if model.timeStart == 25 {
            return Color(.systemBlue)
        } else if model.timeStart == 50 {
            return Color(.systemPurple)
        } else {
            return Color(.systemGreen)
        }
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(Color(.systemGray5))
                .frame(width: width, height: height)
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundColor(progressBarColor)
                    .frame(width: width, height: progressBarHeight)
            } //: VSTACK
        } //: ZSTACK
        .frame(width: width, height: height)
    }
}
