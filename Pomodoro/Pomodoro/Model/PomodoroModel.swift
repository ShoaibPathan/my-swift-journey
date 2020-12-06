//
//  PomodoroModel.swift
//  Pomodoro
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

class PomodoroModel: ObservableObject {
    // MARK: - PROPERTIES
    @Published var timeStart: Float = 0
    @Published var timeRemaining: Float = 0
    @Published var timerActive: Bool = false
    
    var timer: Timer?
    
    // MARK: - RUN TIMER
    func runPomodoroTimer(time: Float) {
        invalidateTimer()
        initializeTimer(time: time)
    }
    
    // MARK: - RESET TIMER
    func resetPomodoroTimer() {
        invalidateTimer()
    }
}

// MARK: - TIME ROBOT FUNCTIONS
extension PomodoroModel {
    
    func initializeTimer(time: Float) {
        timerActive = true
        timeStart = time
        timeRemaining = timeStart
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
            timer in self.runTimerActions()
        }
        // "withTimeInterval" parameter can be changed to "60.0" to convert timer to minutes instead of seconds.
    }
    
    func invalidateTimer() {
        timerActive = false
        timer?.invalidate()
        timeStart = 0
        timeRemaining = 0
    }
    
    func runTimerActions() {
        if timeRemaining > 1 {
            reduceTime()
            checkRemainingTime()
        } else {
            invalidateTimer()
        }
    }
    
    func reduceTime() {
        timeRemaining -= 1
    }
    
    func checkRemainingTime() {
        print("Time remaining is \(timeRemaining)")
    }
}
