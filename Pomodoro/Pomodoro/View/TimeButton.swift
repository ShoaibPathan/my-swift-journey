//
//  TimeButton.swift
//  Pomodoro
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct TimeButton: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: PomodoroModel
    
    let systemName: String
    let color: Color
    let time: Float
    
    var opacity: Double {
        if model.timerActive == true {
            return 0.3
        } else {
            return 1
        }
    }
    
    // MARK: - BODY
    var body: some View {
        Image(systemName: systemName)
            .font(.largeTitle)
            .foregroundColor(color)
            .opacity(opacity)
            .onTapGesture() { self.model.runPomodoroTimer(time: time) }
            .onLongPressGesture(perform: model.resetPomodoroTimer)
        
    }
}
